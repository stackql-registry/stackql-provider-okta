# okta-starter

Example [stackql-deploy](https://stackql-deploy.io) stack for the StackQL `okta` provider. It provisions:

- an Okta group (`{{ stack_name }}-{{ stack_env }}-group`)
- an Okta user (staged, `{{ stack_name }}.{{ stack_env }}@example.com`)

## Prerequisites

- [stackql-deploy](https://github.com/stackql/stackql-deploy-rs) installed
- An Okta org and API token

Set your credentials:

```bash
export OKTA_API_TOKEN=<your SSWS token>
export OKTA_SUBDOMAIN=<your org subdomain>   # e.g. dev-123456 for dev-123456.okta.com
```

## Usage

From this directory's parent (`examples/stackql-deploy`):

```bash
# preview the queries without executing
stackql-deploy build okta-starter dev -e OKTA_SUBDOMAIN=${OKTA_SUBDOMAIN} --dry-run --show-queries

# deploy
stackql-deploy build okta-starter dev -e OKTA_SUBDOMAIN=${OKTA_SUBDOMAIN}

# verify the stack
stackql-deploy test okta-starter dev -e OKTA_SUBDOMAIN=${OKTA_SUBDOMAIN}

# tear down
stackql-deploy teardown okta-starter dev -e OKTA_SUBDOMAIN=${OKTA_SUBDOMAIN}
```

## Notes

- The `exists` anchors return the object `id` (captured as `{{ this.id }}`) rather than a
  `count`, so the `update` and `delete` anchors can address objects by their server-assigned ids.
- Both resources include an `/*+ update */` anchor with PUT (replace) semantics:
  if `exists` succeeds but `statecheck` fails (out-of-band drift, e.g. someone edited the
  group description or user profile in the admin console), stackql-deploy runs the `update`
  anchor, which issues a `REPLACE` (`PUT /api/v1/groups/{groupId}` / `PUT /api/v1/users/{id}`)
  restoring the full desired profile from the manifest, then re-runs `statecheck`.
  Note PUT replaces the entire profile: attributes not present in the manifest-managed
  profile are cleared, which is the intended declarative behavior (the manifest is the
  source of truth).
- Okta soft-deletes users: the first `DELETE` deactivates the user (status
  `DEPROVISIONED`). The `exists` check excludes deprovisioned users so teardown
  completes cleanly, but the deactivated user remains in your org until it is
  deleted again (via the Okta admin console or a second delete call).
- Resources deploy top-down and tear down bottom-up.
