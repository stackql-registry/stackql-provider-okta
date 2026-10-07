# stackql-provider-okta

This repo generates the StackQL `okta` provider from Okta's Management API OpenAPI spec, and builds the provider doc microsite (Docusaurus, served from GitHub Pages at okta-provider.stackql.io).

## Pipeline

The full pipeline is driven by the Makefile (each target wraps an npm script that calls `@stackql/provider-utils` CLIs):

1. `make download-spec` - pulls Okta's `management-minimal.yaml` into `provider-dev/downloaded/`
2. `make split` - splits the spec into per-service files in `provider-dev/source/` (path-based service discrimination)
3. `make normalize` - reshapes split specs for relational consumption (flattens allOf, wraps bare-array responses, lifts path params)
4. `make mappings` - analyzes specs and merges new operations into `provider-dev/config/all_services.csv`
5. `make provider` - generates the provider into `provider-dev/openapi/src/okta/v00.00.00000/` then runs `provider-dev/scripts/post_processing.mjs`
6. `make docs` - generates markdown docs into `website/docs/`
7. `make site` - builds the Docusaurus site (vendors the shared config first)

`make refresh` = steps 1-4; `make all` = deps + steps 5-7. `make smoke-test` / `make smoke-test-live` run `test/smoke-test.sh` (needs `OKTA_API_TOKEN` and `OKTA_SUBDOMAIN`).

## Mappings curation (all_services.csv)

- After `make mappings`, NEW operations appear with an empty `stackql_resource_name` (column 9). They must be curated by hand: assign a resource, keep the suggested method name, and set the SQL verb.
- Conventions: action endpoints (activate, deactivate, verify, test, bulk uploads, failover) map to `exec`; POST "update" endpoints map to `update`; sub-resources are named without service prefix where the service already scopes them (e.g. `okta.identity_sources.groups`, `okta.groups.users`).
- Operations that cannot be StackQL methods (e.g. deprecated endpoints returning only 301) use the `skip_this_resource` sentinel in `stackql_resource_name` - generate errors on any spec operation missing from the CSV.
- The CSV header includes `stackql_object_key` (JSONPath into the response for list ops) and `op_description`.

## Provider config (wired at generate time)

- `provider-dev/config/servers.json` - server override: `https://{subdomain}.okta.com/`
- `provider-dev/config/provider_config.json` - auth: `api_key` from `OKTA_API_TOKEN` with `SSWS ` value prefix
- `provider-dev/config/service_config.json` - injected as `x-stackQL-config` into every service doc:
  - pagination: RFC 5988 Link headers (`responseToken: {key: Link, location: header}`, `requestToken: {location: request}` - the extracted next URL replaces the whole request URL)
  - `queryParamPushdown.top`: SQL `LIMIT` pushes down to Okta's `limit` query param (max 200)
  - Filter pushdown is deliberately NOT wired: any-sdk's odata filter syntax single-quotes strings but Okta SCIM filters require double quotes
- `--naive-req-body-translate` adds `requestBodyTranslate: {algorithm: naive}` to POST/PUT/PATCH methods with bodies: INSERT/UPDATE column names match request body property names verbatim (e.g. `profile`, not `data__profile`)

## Website

- Docusaurus 3.10.2 using the vendored shared config pattern: `yarn build`/`yarn start` first git-clones https://github.com/stackql/docusaurus-config into gitignored `website/.shared-config/` (via `prestart`/`prebuild` hooks, yarn classic only).
- Site identity lives in `website/provider.js`; `docusaurus.config.js` is a thin wrapper that patches `projectName`/`editUrl` and the registry logo.
- The shared config hardcodes `customCss: ./src/css/global.css` and expects favicons at the `static/` root.
- Deploys to GitHub Pages via `.github/workflows/prod-web-deploy.yml` on pushes to main touching `website/**`.

## Testing locally

Use the WSL `stackql` binary with a file:// registry, e.g.:

```bash
stackql exec --registry='{"url": "file:///mnt/c/.../provider-dev/openapi", "verifyConfig": {"nopVerify": true}}' "show services in okta"
```

`test/smoke-test.sh` does this automatically (default = local provider; `--live` = published provider; `--mutate` adds a create/delete group round-trip).

## Gotchas

- Boolean query parameters (e.g. `sendEmail`, `activate`) are converted to `type: string` by `post_processing.mjs`: stackql's EXEC/WHERE type check rejects every SQL literal form against a boolean schema (`'false'` fails as StrVal, bare `false` is a parser error). As strings, `@sendEmail='false'` works and the wire format is unchanged. The generated doc examples render the quoted form.
- stackql (v0.10.582, any-sdk v0.5.3-alpha11) nil-pointer panics at plan build for EXEC methods whose 2xx response schema is an object without an `id` property (e.g. `activate_user` -> `UserActivationToken`). `post_processing.mjs` works around this by stripping the response content from all such exec-only methods (33 ops across 12 services) - they dispatch fine and report "despatched successfully", but response bodies (e.g. activation tokens) are not projected. Remove the workaround when the core bug is fixed upstream (the bug pre-dates this uplift; the old published provider panics identically).
- `test/crud-lifecycle-test.sh` (`make crud-test`) does a full live create/select/update/lifecycle/delete round-trip for a user and group, always cleaning up (free tier object limits).

- The Okta spec moved to date-based versioning (e.g. 2026.07.2); the minimal spec grows and loses endpoints between releases - `make mappings` warns about CSV rows for operations no longer in the spec.
- `provider-dev/scripts/post_processing.mjs` rewrites relative `](/openapi/...)` doc links to absolute developer.okta.com URLs and appends dummy `definitions` to meta.yaml for parser compatibility. It is idempotent; the legacy sed-based `post_processing.sh` just delegates to it.
- Okta user deletion is two-phase: first DELETE deactivates, second DELETE removes.
- `examples/stackql-deploy/okta-starter/` is a working stackql-deploy stack (group + user).
