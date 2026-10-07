## `okta` provider for [`stackql`](https://github.com/stackql/stackql)

This repository is used to generate and document the Okta provider for StackQL, allowing you to query and manipulate Okta resources using SQL-like syntax. The provider is built using the `@stackql/provider-utils` package, which provides tools for converting OpenAPI specifications into StackQL-compatible provider schemas.

The `@stackql/provider-utils` package offers several utilities that this provider uses:
- `split` - Divides a large OpenAPI spec into smaller service-specific files
- `normalize` - Reshapes split specs for relational consumption (flattens allOf, wraps bare-array responses)
- `analyze` - Examines OpenAPI specs and generates mapping configuration files
- `generate` - Creates StackQL provider extensions from OpenAPI specs and mappings
- `docgen` - Builds documentation for the provider

### Prerequisites

To use the Okta provider with StackQL, you'll need:

1. An Okta account with appropriate API credentials
2. An Okta API token with sufficient permissions for the resources you want to access, export this as `OKTA_API_TOKEN`
3. StackQL CLI installed on your system (see [StackQL](https://github.com/stackql/stackql))

### Quick Start (Makefile)

All of the steps below are wrapped in the [Makefile](Makefile):

```bash
make refresh         # download the latest spec, split, normalize, regenerate mappings
                     # (curate new rows in provider-dev/config/all_services.csv)
make all             # install deps, generate the provider, generate docs, build the site
make smoke-test      # live smoke test using the locally generated provider
make smoke-test-live # live smoke test using the latest published provider
```

The smoke tests require `OKTA_API_TOKEN` and `OKTA_SUBDOMAIN` to be set (an `.env` file in the repo root is supported by sourcing it first). A working [stackql-deploy](https://github.com/stackql/stackql-deploy-rs) example stack is provided in [examples/stackql-deploy/okta-starter](examples/stackql-deploy/okta-starter).

### 1. Download the Open API Specification

First, download the Okta Management API OpenAPI specification:

```bash
curl -L https://raw.githubusercontent.com/okta/okta-management-openapi-spec/master/dist/current/management-minimal.yaml \
  -o provider-dev/downloaded/management-minimal.yaml
```

This downloads the official Okta Management API specification, which defines all available API endpoints, request parameters, and response schemas.

### 2. Split into Service Specs

Next, split the monolithic OpenAPI specification into service-specific files:

```bash
npm run split -- \
  --provider-name okta \
  --api-doc provider-dev/downloaded/management-minimal.yaml \
  --svc-discriminator path \
  --output-dir provider-dev/source \
  --overwrite
```

This step breaks down the large Okta API specification into smaller, more manageable service files. The `--svc-discriminator path` option tells the tool to use the URL path structure to determine which API endpoints belong to which service. For Okta, this creates separate files for different functional areas like users, groups, applications, etc.

Then normalize the split specs for relational consumption:

```bash
npm run normalize -- --api-dir provider-dev/source
```

This flattens `allOf` compositions, wraps bare-array responses in named wrapper objects (so list results project as rows), lifts path-level parameters, and strips misplaced schema keywords.

### 3. Generate Mappings

Generate the mapping configuration that connects OpenAPI operations to StackQL resources:

```bash
npm run generate-mappings -- \
  --provider-name okta \
  --input-dir provider-dev/source \
  --output-dir provider-dev/config
```

This step analyzes the service specs and creates a CSV mapping file that defines how OpenAPI operations translate to StackQL resources, methods, and SQL verbs. The mapping process handles two scenarios:

1. **New Provider Development**: If no mapping file exists yet, this creates a new `all_services.csv` file with all operations from the OpenAPI spec. You'll need to edit this file to assign appropriate resource names, method names, and SQL verbs.

2. **Updating Existing Mappings**: If a mapping file already exists, the tool will:
   - Load the existing mappings
   - Identify new operations that aren't yet mapped
   - Flag operations with incomplete mappings (missing resource, method, or SQL verb)
   - Skip operations that are already fully mapped

Update the resultant `provider-dev/config/all_services.csv` to add the `stackql_resource_name`, `stackql_method_name`, `stackql_verb` values for each operation (new operations appear with an empty `stackql_resource_name`). The CSV also carries `stackql_object_key` (a JSONPath into the response for list operations) and `op_description`. Operations that cannot be exposed as StackQL methods (for example deprecated endpoints that only return a 301) use the literal `skip_this_resource` as the `stackql_resource_name`.

### 4. Generate Provider

This step transforms the split OpenAPI service specs into a fully-functional StackQL provider by applying the resource and method mappings defined in your CSV file.

```bash
npm run generate-provider -- \
  --provider-name okta \
  --input-dir provider-dev/source \
  --output-dir provider-dev/openapi/src/okta \
  --config-path provider-dev/config/all_services.csv \
  --servers provider-dev/config/servers.json \
  --provider-config provider-dev/config/provider_config.json \
  --service-config provider-dev/config/service_config.json \
  --naive-req-body-translate \
  --overwrite
```

Make necessary updates to the output docs:

```bash
node provider-dev/scripts/post_processing.mjs
```

The JSON-valued flags accept either inline JSON or a path to a JSON file; the configs are versioned in `provider-dev/config/`:

- `servers.json` defines the base URL pattern for API requests (`https://{subdomain}.okta.com/`), with a `subdomain` variable users supply in the `WHERE` clause.
- `provider_config.json` sets up authentication: an API token read from the `OKTA_API_TOKEN` environment variable, sent in the Authorization header with the `SSWS ` prefix required by Okta.
- `service_config.json` is injected as `x-stackQL-config` into every service document and wires in:
  - __pagination__ - Okta's RFC 5988 `Link` header pagination (`responseToken` reads the `Link` header, `requestToken` replaces the request URL with the extracted next link), so multi-page result sets are exhausted transparently
  - __predicate pushdown__ - `queryParamPushdown.top` maps a SQL `LIMIT` to Okta's `limit` query parameter (capped at 200). Filter pushdown is deliberately not configured: Okta SCIM filter expressions require double-quoted strings, which the available filter syntaxes do not emit.
- `--naive-req-body-translate` adds `requestBodyTranslate: {algorithm: naive}` to every POST/PUT/PATCH method with a request body, so `INSERT`/`UPDATE` column names map directly to request body attributes (for example `profile`), with no `data__` prefix.

The generated provider will be structured according to the StackQL conventions, with properly organized resources and methods that map to the underlying API operations.

After running this command, you'll have a complete provider structure in the `provider-dev/openapi/src` directory, ready for testing or packaging.

### 5. Test Provider

#### Starting the StackQL Server

Before running tests, start a StackQL server with your provider:

```bash
PROVIDER_REGISTRY_ROOT_DIR="$(pwd)/provider-dev/openapi"
npm run start-server -- --provider okta --registry $PROVIDER_REGISTRY_ROOT_DIR
```

#### Test Meta Routes

Test all metadata routes (services, resources, methods) in the provider:

```bash
npm run test-meta-routes -- okta --verbose
```
When you're done testing, stop the StackQL server:

```bash
npm run stop-server
```

use this command to view the server status:

```bash
npm run server-status
```

#### Run test queries

Run some test queries against the provider using the `stackql shell`:

```bash
PROVIDER_REGISTRY_ROOT_DIR="$(pwd)/provider-dev/openapi"
REG_STR='{"url": "file://'${PROVIDER_REGISTRY_ROOT_DIR}'", "localDocRoot": "'${PROVIDER_REGISTRY_ROOT_DIR}'", "verifyConfig": {"nopVerify": true}}'
./stackql shell --registry="${REG_STR}"
```

#### Smoke test

`test/smoke-test.sh` runs live queries against an Okta org covering the most critical resources (users, groups, apps and org settings), plus the provider meta routes. It requires `OKTA_API_TOKEN` and `OKTA_SUBDOMAIN`:

```bash
./test/smoke-test.sh            # uses the locally generated provider
./test/smoke-test.sh --live     # uses the latest published okta provider
./test/smoke-test.sh --mutate   # adds a create/delete group round-trip
```

All checks are read-only API calls except the optional `--mutate` round-trip; Okta API calls carry no usage cost.

`test/crud-lifecycle-test.sh` (`make crud-test`) goes further: a full live create / select / update / select / lifecycle (activate + deactivate) / select / delete round-trip for a user and a group, always cleaning up after itself (free tier orgs have object limits). Note that boolean query parameters are typed as strings in this provider (pass `@sendEmail='false'`), and exec methods whose response schema lacks an `id` property have their response content stripped at post-processing to work around a stackql core nil-pointer bug - they execute fine but response bodies (e.g. activation tokens) are not projected.

### 6. Publish the provider

To publish the provider push the `okta` dir to `providers/src` in a feature branch of the [`stackql-provider-registry`](https://github.com/stackql/stackql-provider-registry).  Follow the [registry release flow](https://github.com/stackql/stackql-provider-registry/blob/dev/docs/build-and-deployment.md).  

Launch the StackQL shell:

```bash
export DEV_REG="{ \"url\": \"https://registry-dev.stackql.app/providers\", \"verifyConfig\": { \"nopVerify\": true }}"
./stackql --registry="${DEV_REG}" shell
```

pull the latest dev `okta` provider:

```sql
registry pull okta;
```

Run some test queries, for example...

```sql
SELECT
id,
activated,
created,
lastLogin,
lastUpdated,
passwordChanged,
JSON_EXTRACT(profile, '$.email') as email,
JSON_EXTRACT(profile, '$.firstName') as first_name,
JSON_EXTRACT(profile, '$.lastName') as last_name,
status,
statusChanged
FROM okta.users.users
WHERE subdomain = 'your-subdomain';
```

### 7. Generate web docs

```bash
npm run generate-docs -- \
  --provider-name okta \
  --provider-dir ./provider-dev/openapi/src/okta/v00.00.00000 \
  --output-dir ./website \
  --provider-data-dir ./provider-dev/docgen/provider-data
```  

### 8. Test web docs locally

```bash
cd website
# test build
yarn build

# run local dev server
yarn start
```

### 9. Publish web docs to GitHub Pages

Under __Pages__ in the repository, in the __Build and deployment__ section select __GitHub Actions__ as the __Source__.  In Netlify DNS create the following records:  

| Source Domain | Record Type  | Target |
|---------------|--------------|--------|
| okta-provider.stackql.io | CNAME | stackql.github.io |

## License

MIT

## Contributing

Contributions to the Okta provider are welcome! Please feel free to submit a Pull Request.