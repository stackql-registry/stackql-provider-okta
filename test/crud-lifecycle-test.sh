#!/usr/bin/env bash
# Full CRUD + lifecycle round-trip against the live Okta org using the
# locally generated provider. Creates a scratch user and group, exercises
# select/update/lifecycle, and ALWAYS deletes them (free tier limits).
#
# Exercises two post-processing workarounds baked into the provider:
# boolean query params as strings (@sendEmail='false') and stripped response
# content on exec methods whose response schema lacks an `id` property
# (works around a stackql core nil-pointer at plan build, e.g. activate_user).
: "${OKTA_API_TOKEN:?OKTA_API_TOKEN must be set}"
: "${OKTA_SUBDOMAIN:?OKTA_SUBDOMAIN must be set}"
S="${STACKQL_BIN:-stackql}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
REG="{\"url\": \"file://$REPO_ROOT/provider-dev/openapi\", \"verifyConfig\": {\"nopVerify\": true}}"
SUB="$OKTA_SUBDOMAIN"
TS=$(date +%s)
LOGIN="smoke-test-$TS@stackql.io"
GNAME="smoke-test-group-$TS"

PASS=0; FAIL=0
q() { $S exec --registry="$REG" --output csv "$1" 2>&1; }
check() { # check <name> <output> <expect-substr>
  local name="$1" out="$2" expect="$3"
  if printf '%s' "$out" | grep -q "$expect"; then
    echo "PASS: $name"
    PASS=$((PASS+1))
  else
    echo "FAIL: $name (expected '$expect')"
    printf '%s\n' "$out" | head -4 | sed 's/^/    /'
    FAIL=$((FAIL+1))
  fi
}

USER_ID=""; GROUP_ID=""
cleanup() {
  echo "== cleanup =="
  if [ -n "$USER_ID" ]; then
    q "EXEC okta.users.users.deactivate_user @id='$USER_ID', @subdomain='$SUB', @sendEmail='false'" >/dev/null
    sleep 3
    q "DELETE FROM okta.users.users WHERE id = '$USER_ID' AND subdomain = '$SUB'" >/dev/null
    q "DELETE FROM okta.users.users WHERE id = '$USER_ID' AND subdomain = '$SUB'" >/dev/null
    echo "cleanup: user $USER_ID delete attempted"
  fi
  if [ -n "$GROUP_ID" ]; then
    q "DELETE FROM okta.groups.groups WHERE groupId = '$GROUP_ID' AND subdomain = '$SUB'" >/dev/null
    echo "cleanup: group $GROUP_ID delete attempted"
  fi
}
trap cleanup EXIT

echo "===== USER round-trip ====="
echo "-- create (INSERT with activate='false', staged) --"
q "INSERT INTO okta.users.users(profile, activate, subdomain) SELECT '{\"firstName\": \"Smoke\", \"lastName\": \"Test\", \"email\": \"$LOGIN\", \"login\": \"$LOGIN\"}', 'false', '$SUB'" >/dev/null
USER_ID=$(q "SELECT id FROM okta.users.users WHERE subdomain = '$SUB' AND JSON_EXTRACT(profile, '\$.login') = '$LOGIN'" | tail -1)
check "create user" "$USER_ID" "^00u"
echo "    user id: $USER_ID"

echo "-- select (verify STAGED) --"
OUT=$(q "SELECT id, status FROM okta.users.users WHERE id = '$USER_ID' AND subdomain = '$SUB'")
check "select created user" "$OUT" "STAGED"

echo "-- update (UPDATE nickName) --"
q "UPDATE okta.users.users SET profile = '{\"nickName\": \"smokey\"}' WHERE id = '$USER_ID' AND subdomain = '$SUB'" >/dev/null
OUT=$(q "SELECT JSON_EXTRACT(profile, '\$.nickName') as nickname, JSON_EXTRACT(profile, '\$.firstName') as first_name FROM okta.users.users WHERE id = '$USER_ID' AND subdomain = '$SUB'")
check "select after update (nickName set, firstName retained)" "$OUT" "smokey,Smoke"

echo "-- lifecycle (EXEC activate_user with @sendEmail='false') --"
OUT=$(q "EXEC okta.users.users.activate_user @id='$USER_ID', @subdomain='$SUB', @sendEmail='false'")
check "exec activate dispatched" "$OUT" "despatched successfully"
# activation is asynchronous - poll for PROVISIONED
OUT=""
for i in 1 2 3 4 5 6; do
  OUT=$(q "SELECT status FROM okta.users.users WHERE id = '$USER_ID' AND subdomain = '$SUB'")
  printf '%s' "$OUT" | grep -q "PROVISIONED" && break
  sleep 5
done
check "select after activate (PROVISIONED)" "$OUT" "PROVISIONED"

echo "-- lifecycle (EXEC deactivate_user with @sendEmail='false') --"
OUT=$(q "EXEC okta.users.users.deactivate_user @id='$USER_ID', @subdomain='$SUB', @sendEmail='false'")
check "exec deactivate dispatched" "$OUT" "despatched successfully"
# deactivation is applied asynchronously - poll up to 30s
OUT=""
for i in 1 2 3 4 5 6; do
  OUT=$(q "SELECT status FROM okta.users.users WHERE id = '$USER_ID' AND subdomain = '$SUB'")
  printf '%s' "$OUT" | grep -q "DEPROVISIONED" && break
  sleep 5
done
check "select after deactivate (DEPROVISIONED)" "$OUT" "DEPROVISIONED"

echo "-- delete (DELETE removes deactivated user) --"
q "DELETE FROM okta.users.users WHERE id = '$USER_ID' AND subdomain = '$SUB'" >/dev/null
OUT=$(q "SELECT id FROM okta.users.users WHERE subdomain = '$SUB' AND JSON_EXTRACT(profile, '\$.login') = '$LOGIN'" | tail -n +2 | grep -c "^00u" || true)
check "select after delete (0 rows)" "rows:$OUT" "rows:0"
[ "$OUT" = "0" ] && USER_ID=""

echo
echo "===== GROUP round-trip ====="
echo "-- create (INSERT) --"
q "INSERT INTO okta.groups.groups(profile, subdomain) SELECT '{\"name\": \"$GNAME\", \"description\": \"initial description\"}', '$SUB'" >/dev/null
GROUP_ID=$(q "SELECT id FROM okta.groups.groups WHERE subdomain = '$SUB' AND JSON_EXTRACT(profile, '\$.name') = '$GNAME'" | tail -1)
check "create group" "$GROUP_ID" "^00g"
echo "    group id: $GROUP_ID"

echo "-- select (verify) --"
OUT=$(q "SELECT id, JSON_EXTRACT(profile, '\$.description') as description FROM okta.groups.groups WHERE groupId = '$GROUP_ID' AND subdomain = '$SUB'")
check "select created group" "$OUT" "initial description"

echo "-- update (REPLACE description) --"
q "REPLACE okta.groups.groups SET profile = '{\"name\": \"$GNAME\", \"description\": \"updated description\"}' WHERE groupId = '$GROUP_ID' AND subdomain = '$SUB'" >/dev/null
OUT=$(q "SELECT JSON_EXTRACT(profile, '\$.description') as description FROM okta.groups.groups WHERE groupId = '$GROUP_ID' AND subdomain = '$SUB'")
check "select after replace (updated description)" "$OUT" "updated description"

echo "-- delete (DELETE) --"
q "DELETE FROM okta.groups.groups WHERE groupId = '$GROUP_ID' AND subdomain = '$SUB'" >/dev/null
OUT=$(q "SELECT id FROM okta.groups.groups WHERE subdomain = '$SUB' AND JSON_EXTRACT(profile, '\$.name') = '$GNAME'" | tail -n +2 | grep -c "^00g" || true)
check "select after delete (0 rows)" "rows:$OUT" "rows:0"
[ "$OUT" = "0" ] && GROUP_ID=""

echo
echo "CRUD + lifecycle test complete: $PASS passed, $FAIL failed"
[ "$FAIL" -eq 0 ]
