#!/usr/bin/env bash
# Smoke test for the okta stackql provider.
#
# Runs live queries against an Okta org using either:
#   - the locally generated provider (default), served from provider-dev/openapi via
#     a file:// registry, or
#   - the latest published okta provider from the public stackql registry (--live)
#
# Tests the most critical resources: users, groups and apps (identity is Okta's
# "compute and storage"). All queries are read-only GETs plus one optional
# create/delete group round-trip (--mutate); Okta API calls carry no usage cost.
#
# Requirements:
#   - stackql binary on PATH (override with STACKQL_BIN)
#   - OKTA_API_TOKEN   : an Okta API token (SSWS)
#   - OKTA_SUBDOMAIN   : your org subdomain, e.g. dev-123456 for dev-123456.okta.com
#
# Usage:
#   ./test/smoke-test.sh            # local provider, read-only
#   ./test/smoke-test.sh --live     # published provider, read-only
#   ./test/smoke-test.sh --mutate   # also create + delete a scratch group

set -uo pipefail

LIVE=false
MUTATE=false
for arg in "$@"; do
  case "$arg" in
    --live) LIVE=true ;;
    --mutate) MUTATE=true ;;
    *) echo "unknown argument: $arg" >&2; exit 2 ;;
  esac
done

: "${OKTA_API_TOKEN:?OKTA_API_TOKEN must be set}"
: "${OKTA_SUBDOMAIN:?OKTA_SUBDOMAIN must be set (e.g. dev-123456 for dev-123456.okta.com)}"

STACKQL_BIN="${STACKQL_BIN:-stackql}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

REGISTRY_ARGS=()
if ! $LIVE; then
  REGISTRY_ARGS=(--registry "{\"url\": \"file://$REPO_ROOT/provider-dev/openapi\", \"verifyConfig\": {\"nopVerify\": true}}")
  echo "mode: LOCAL provider ($REPO_ROOT/provider-dev/openapi)"
else
  echo "mode: LIVE (latest published okta provider)"
fi

PASS=0
FAIL=0

run_check() {
  # run_check <name> <query> <min_rows>
  local name="$1" query="$2" min_rows="$3"
  local out rows
  out="$("$STACKQL_BIN" exec "${REGISTRY_ARGS[@]}" --output csv "$query" 2>&1)"
  rc=$?
  rows=$(printf '%s\n' "$out" | tail -n +2 | grep -c . || true)
  if [ $rc -eq 0 ] && [ "$rows" -ge "$min_rows" ] && ! printf '%s' "$out" | grep -qi "error"; then
    echo "PASS: $name ($rows rows)"
    PASS=$((PASS+1))
  else
    echo "FAIL: $name"
    printf '%s\n' "$out" | head -5 | sed 's/^/    /'
    FAIL=$((FAIL+1))
  fi
}

echo "== meta routes =="
run_check "show services"              "show services in okta" 50
run_check "show resources in users"    "show resources in okta.users" 5
run_check "describe users"             "describe okta.users.users" 5

echo "== users =="
run_check "select users" \
  "select id, status from okta.users.users where subdomain = '$OKTA_SUBDOMAIN' limit 5" 1

echo "== groups =="
run_check "select groups" \
  "select id, profile from okta.groups.groups where subdomain = '$OKTA_SUBDOMAIN' limit 5" 1

echo "== apps =="
run_check "select applications" \
  "select id, label, status from okta.apps.applications where subdomain = '$OKTA_SUBDOMAIN' limit 5" 1

echo "== org =="
run_check "select org settings" \
  "select id, status from okta.org.settings where subdomain = '$OKTA_SUBDOMAIN'" 1

if $MUTATE; then
  echo "== mutation round-trip (group) =="
  SCRATCH="stackql-smoke-test-$$"
  "$STACKQL_BIN" exec "${REGISTRY_ARGS[@]}" --output csv \
    "insert into okta.groups.groups(profile, subdomain) select '{\"name\": \"$SCRATCH\", \"description\": \"stackql smoke test scratch group\"}', '$OKTA_SUBDOMAIN'" >/dev/null 2>&1
  GROUP_ID="$("$STACKQL_BIN" exec "${REGISTRY_ARGS[@]}" --output csv \
    "select id from okta.groups.groups where subdomain = '$OKTA_SUBDOMAIN' and json_extract(profile, '\$.name') = '$SCRATCH'" 2>/dev/null | tail -n +2 | head -1)"
  if [ -n "$GROUP_ID" ]; then
    echo "PASS: create group ($GROUP_ID)"
    PASS=$((PASS+1))
    if "$STACKQL_BIN" exec "${REGISTRY_ARGS[@]}" \
      "delete from okta.groups.groups where groupId = '$GROUP_ID' and subdomain = '$OKTA_SUBDOMAIN'" >/dev/null 2>&1; then
      echo "PASS: delete group"
      PASS=$((PASS+1))
    else
      echo "FAIL: delete group (clean up group '$SCRATCH' [$GROUP_ID] manually)"
      FAIL=$((FAIL+1))
    fi
  else
    echo "FAIL: create group"
    FAIL=$((FAIL+1))
  fi
fi

echo
echo "smoke test complete: $PASS passed, $FAIL failed"
[ "$FAIL" -eq 0 ]
