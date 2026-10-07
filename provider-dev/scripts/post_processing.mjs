#!/usr/bin/env node
// Post-processing for the generated okta provider docs.
// Idempotent replacement for the legacy sed-based post_processing.sh -
// safe to run multiple times over the same output.

import fs from 'fs';
import path from 'path';
import yaml from 'js-yaml';

const SERVICES_DIR = 'provider-dev/openapi/src/okta/v00.00.00000/services';

// 1. mappings.yaml: strip dangling "type: object" lines introduced by the source spec
const mappingsFile = path.join(SERVICES_DIR, 'mappings.yaml');
let mappings = fs.readFileSync(mappingsFile, 'utf8');
mappings = mappings.replace(/^([ \t]*)type: object[ \t]*$/gm, '');
fs.writeFileSync(mappingsFile, mappings);
console.log(`processed ${mappingsFile}`);

// 2. meta.yaml: append dummy definitions for parser compatibility (once)
const metaFile = path.join(SERVICES_DIR, 'meta.yaml');
let meta = fs.readFileSync(metaFile, 'utf8');
if (!meta.includes('Dummy base definition for parser compatibility')) {
  meta += `definitions:
  base:
    type: object
    description: "Dummy base definition for parser compatibility"
    properties:
      id:
        type: string
  custom:
    type: object
    description: "Dummy custom definition for parser compatibility"
    properties:
      name:
        type: string
`;
  fs.writeFileSync(metaFile, meta);
}
console.log(`processed ${metaFile}`);

// 3. features.yaml: fix broken image link
const featuresFile = path.join(SERVICES_DIR, 'features.yaml');
let features = fs.readFileSync(featuresFile, 'utf8');
features = features.replaceAll(
  '../../../../../images/features/update-ssfeat-flowchart.png',
  '/img/update-ssfeat-flowchart.png'
);
fs.writeFileSync(featuresFile, features);
console.log(`processed ${featuresFile}`);

// 4. all service files: convert boolean query parameters to string type.
// stackql's EXEC/WHERE parameter type-check rejects every SQL literal form
// against a boolean schema ('false' fails as StrVal, bare false is a parser
// error, 0 fails as IntVal), so boolean-typed query params are unusable.
// Query params are strings on the wire regardless, so declaring them as
// strings is wire-identical and lets users pass @sendEmail='false'.
for (const filename of fs.readdirSync(SERVICES_DIR)) {
  if (!/\.ya?ml$/.test(filename)) continue;
  const file = path.join(SERVICES_DIR, filename);
  const doc = yaml.load(fs.readFileSync(file, 'utf8'));
  let converted = 0;
  const convertParam = (p) => {
    if (p && p.in === 'query' && p.schema && p.schema.type === 'boolean') {
      p.schema.type = 'string';
      if (typeof p.schema.default === 'boolean') p.schema.default = String(p.schema.default);
      if (p.schema.enum) p.schema.enum = p.schema.enum.map(String);
      converted++;
    }
  };
  for (const pathItem of Object.values(doc.paths || {})) {
    (pathItem.parameters || []).forEach(convertParam);
    for (const verb of ['get', 'post', 'put', 'patch', 'delete']) {
      (pathItem[verb]?.parameters || []).forEach(convertParam);
    }
  }
  // shared parameter components (referenced via $ref)
  for (const p of Object.values(doc.components?.parameters || {})) convertParam(p);
  if (converted > 0) {
    fs.writeFileSync(file, yaml.dump(doc, { lineWidth: -1, noRefs: true }));
    console.log(`converted ${converted} boolean query param(s) to string in ${filename}`);
  }
}

// 5. all service files: strip response content from exec-only methods whose
// 2xx response schema is an object WITHOUT an `id` property. stackql
// (v0.10.582 / any-sdk v0.5.3-alpha11) nil-pointer panics at plan build for
// such exec responses (e.g. activate_user -> UserActivationToken,
// expire_password_with_temp_password -> tempPassword). With no response
// content the exec plans and dispatches like deactivate_user does. Remove
// this workaround once the upstream bug is fixed.
for (const filename of fs.readdirSync(SERVICES_DIR)) {
  if (!/\.ya?ml$/.test(filename)) continue;
  const file = path.join(SERVICES_DIR, filename);
  const doc = yaml.load(fs.readFileSync(file, 'utf8'));
  const resources = doc.components?.['x-stackQL-resources'];
  if (!resources) continue;

  const resolveSchema = (schema) => {
    let s = schema, hops = 0;
    while (s && s.$ref && hops++ < 5) {
      const name = s.$ref.split('/').pop();
      s = doc.components?.schemas?.[name];
    }
    return s;
  };

  let stripped = 0;
  for (const resource of Object.values(resources)) {
    const verbMethods = new Set();
    for (const refs of Object.values(resource.sqlVerbs || {})) {
      for (const ref of refs) verbMethods.add(ref.$ref.split('/').pop());
    }
    for (const [methodName, method] of Object.entries(resource.methods || {})) {
      if (verbMethods.has(methodName)) continue; // only exec-only methods
      const opRef = method.operation?.$ref || '';
      const parts = opRef.replace('#/paths/', '').split('/');
      const verb = parts.pop();
      const pathKey = parts.join('/').replaceAll('~1', '/').replaceAll('~0', '~');
      const op = doc.paths?.[pathKey]?.[verb];
      if (!op) continue;
      const code = Object.keys(op.responses || {}).filter((c) => c.startsWith('2')).sort()[0];
      const resp = op.responses?.[code];
      const schema = resolveSchema(resp?.content?.['application/json']?.schema);
      if (schema && schema.type === 'object' && schema.properties && !schema.properties.id) {
        delete resp.content;
        stripped++;
        console.log(`stripped panic-prone exec response: ${filename} ${methodName} (${pathKey})`);
      }
    }
  }
  if (stripped > 0) fs.writeFileSync(file, yaml.dump(doc, { lineWidth: -1, noRefs: true }));
}

// 6. all service files: rewrite relative developer.okta.com doc links to absolute URLs
const DOCS_BASE = 'https://developer.okta.com/docs/api';
for (const filename of fs.readdirSync(SERVICES_DIR)) {
  if (!/\.ya?ml$/.test(filename)) continue;
  const file = path.join(SERVICES_DIR, filename);
  let text = fs.readFileSync(file, 'utf8');

  // any relative markdown link into Okta's /openapi/ doc tree -> absolute
  // (idempotent: rewritten links start with https:// and no longer match)
  text = text.replace(/\]\(\/openapi\//g, `](${DOCS_BASE}/openapi/`);

  // the same links written without the leading slash
  text = text.replace(/\]\(openapi\//g, `](${DOCS_BASE}/openapi/`);

  // JSON-pointer anchors into the spec itself -> the API reference tag page
  text = text.replaceAll('(#components/schemas/BaseEmailServer/properties/authType)', `(${DOCS_BASE}/openapi/okta-management/management/tag/EmailServer/)`);

  // orphaned anchors: (/#something) -> https://developer.okta.com/docs/api#something
  text = text.replace(/\(\/(#[^)]*)\)/g, `${DOCS_BASE}$1`);

  // specific legacy replacements
  text = text.replaceAll('(/oauth2/#okta-admin-management)', `${DOCS_BASE}/oauth2/#okta-admin-management`);
  text = text.replaceAll('(../Template)', `${DOCS_BASE}/openapi/okta-management/management/tag/Template/`);
  text = text.replaceAll('(./#tag/UserFactor/operation/resendEnrollFactor)', `${DOCS_BASE}/openapi/okta-management/management/tag/UserFactor/`);
  text = text.replaceAll('(./#tag/UserFactor/operation/activateFactor)', `${DOCS_BASE}/openapi/okta-management/management/tag/UserFactor/`);

  fs.writeFileSync(file, text);
  console.log(`processed ${file}`);
}

console.log('post-processing complete');
