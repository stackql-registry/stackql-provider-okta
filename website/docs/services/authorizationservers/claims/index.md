--- 
title: claims
hide_title: false
hide_table_of_contents: false
keywords:
  - claims
  - authorizationservers
  - okta
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage okta resources using SQL
custom_edit_url: null
image: /img/stackql-okta-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import CodeBlock from '@theme/CodeBlock';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>claims</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="claims" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.authorizationservers.claims" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_oauth2_claim"
    values={[
        { label: 'get_oauth2_claim', value: 'get_oauth2_claim' },
        { label: 'list_oauth2_claims', value: 'list_oauth2_claims' }
    ]}
>
<TabItem value="get_oauth2_claim">

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>ID of the Claim</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the Claim</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="alwaysIncludeInToken" /></td>
    <td><code>boolean</code></td>
    <td>Specifies whether to include Claims in the token. The value is always `TRUE` for access token Claims. If the value is set to `FALSE` for an ID token claim, the Claim isn't included in the ID token when the token is requested with the access token or with the `authorization_code`. The client instead uses the access token to get Claims from the `/userinfo` endpoint.</td>
</tr>
<tr>
    <td><CopyableCode code="claimType" /></td>
    <td><code>string</code></td>
    <td>Specifies whether the Claim is for an access token (`RESOURCE`) or an ID token (`IDENTITY`) (IDENTITY, RESOURCE)</td>
</tr>
<tr>
    <td><CopyableCode code="conditions" /></td>
    <td><code>object</code></td>
    <td>Specifies the scopes for the Claim</td>
</tr>
<tr>
    <td><CopyableCode code="group_filter_type" /></td>
    <td><code>string</code></td>
    <td>Specifies the type of group filter if `valueType` is `GROUPS`  If `valueType` is `GROUPS`, then the groups returned are filtered according to the value of `group_filter_type`.  If you have complex filters for Groups, you can [create a Groups allowlist](https://developer.okta.com/docs/guides/customize-tokens-groups-claim/main/) to put them all in a Claim. (CONTAINS, EQUALS, REGEX, STARTS_WITH)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td> (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>When `true`, indicates that Okta created the Claim</td>
</tr>
<tr>
    <td><CopyableCode code="value" /></td>
    <td><code>string</code></td>
    <td>Specifies the value of the Claim. This value must be a string literal if `valueType` is `GROUPS`, and the string literal is matched with the selected `group_filter_type`. The value must be an Okta EL expression if `valueType` is `EXPRESSION`.</td>
</tr>
<tr>
    <td><CopyableCode code="valueType" /></td>
    <td><code>string</code></td>
    <td>Specifies whether the Claim is an Okta Expression Language (EL) expression (`EXPRESSION`), a set of groups (`GROUPS`), or a system claim (`SYSTEM`) (EXPRESSION, GROUPS, SYSTEM)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_oauth2_claims">

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>ID of the Claim</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the Claim</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="alwaysIncludeInToken" /></td>
    <td><code>boolean</code></td>
    <td>Specifies whether to include Claims in the token. The value is always `TRUE` for access token Claims. If the value is set to `FALSE` for an ID token claim, the Claim isn't included in the ID token when the token is requested with the access token or with the `authorization_code`. The client instead uses the access token to get Claims from the `/userinfo` endpoint.</td>
</tr>
<tr>
    <td><CopyableCode code="claimType" /></td>
    <td><code>string</code></td>
    <td>Specifies whether the Claim is for an access token (`RESOURCE`) or an ID token (`IDENTITY`) (IDENTITY, RESOURCE)</td>
</tr>
<tr>
    <td><CopyableCode code="conditions" /></td>
    <td><code>object</code></td>
    <td>Specifies the scopes for the Claim</td>
</tr>
<tr>
    <td><CopyableCode code="group_filter_type" /></td>
    <td><code>string</code></td>
    <td>Specifies the type of group filter if `valueType` is `GROUPS`  If `valueType` is `GROUPS`, then the groups returned are filtered according to the value of `group_filter_type`.  If you have complex filters for Groups, you can [create a Groups allowlist](https://developer.okta.com/docs/guides/customize-tokens-groups-claim/main/) to put them all in a Claim. (CONTAINS, EQUALS, REGEX, STARTS_WITH)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td> (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>When `true`, indicates that Okta created the Claim</td>
</tr>
<tr>
    <td><CopyableCode code="value" /></td>
    <td><code>string</code></td>
    <td>Specifies the value of the Claim. This value must be a string literal if `valueType` is `GROUPS`, and the string literal is matched with the selected `group_filter_type`. The value must be an Okta EL expression if `valueType` is `EXPRESSION`.</td>
</tr>
<tr>
    <td><CopyableCode code="valueType" /></td>
    <td><code>string</code></td>
    <td>Specifies whether the Claim is an Okta Expression Language (EL) expression (`EXPRESSION`), a set of groups (`GROUPS`), or a system claim (`SYSTEM`) (EXPRESSION, GROUPS, SYSTEM)</td>
</tr>
</tbody>
</table>
</TabItem>
</Tabs>

## Methods

The following methods are available for this resource:

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Accessible by</th>
    <th>Required Params</th>
    <th>Optional Params</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><a href="#get_oauth2_claim"><CopyableCode code="get_oauth2_claim" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-claimId"><code>claimId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a custom token Claim by the specified `claimId`</td>
</tr>
<tr>
    <td><a href="#list_oauth2_claims"><CopyableCode code="list_oauth2_claims" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all custom token Claims defined for a specified custom authorization server</td>
</tr>
<tr>
    <td><a href="#create_oauth2_claim"><CopyableCode code="create_oauth2_claim" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a custom token Claim for a custom authorization server</td>
</tr>
<tr>
    <td><a href="#replace_oauth2_claim"><CopyableCode code="replace_oauth2_claim" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-claimId"><code>claimId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a custom token Claim specified by the `claimId`</td>
</tr>
<tr>
    <td><a href="#delete_oauth2_claim"><CopyableCode code="delete_oauth2_claim" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-claimId"><code>claimId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a custom token Claim specified by the `claimId`</td>
</tr>
</tbody>
</table>

## Parameters

Parameters can be passed in the `WHERE` clause of a query. Check the [Methods](#methods) section to see which parameters are required or optional for each operation.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr id="parameter-authServerId">
    <td><CopyableCode code="authServerId" /></td>
    <td><code>string</code></td>
    <td>`id` of the Authorization Server</td>
</tr>
<tr id="parameter-claimId">
    <td><CopyableCode code="claimId" /></td>
    <td><code>string</code></td>
    <td>`id` of Claim</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_oauth2_claim"
    values={[
        { label: 'get_oauth2_claim', value: 'get_oauth2_claim' },
        { label: 'list_oauth2_claims', value: 'list_oauth2_claims' }
    ]}
>
<TabItem value="get_oauth2_claim">

Retrieves a custom token Claim by the specified `claimId`

```sql
SELECT
id,
name,
_links,
alwaysIncludeInToken,
claimType,
conditions,
group_filter_type,
status,
system,
value,
valueType
FROM okta.authorizationservers.claims
WHERE authServerId = '{{ authServerId }}' -- required
AND claimId = '{{ claimId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_oauth2_claims">

Lists all custom token Claims defined for a specified custom authorization server

```sql
SELECT
id,
name,
_links,
alwaysIncludeInToken,
claimType,
conditions,
group_filter_type,
status,
system,
value,
valueType
FROM okta.authorizationservers.claims
WHERE authServerId = '{{ authServerId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_oauth2_claim"
    values={[
        { label: 'create_oauth2_claim', value: 'create_oauth2_claim' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_oauth2_claim">

Creates a custom token Claim for a custom authorization server

```sql
INSERT INTO okta.authorizationservers.claims (
alwaysIncludeInToken,
claimType,
conditions,
group_filter_type,
name,
status,
system,
value,
valueType,
authServerId,
subdomain
)
SELECT 
{{ alwaysIncludeInToken }},
'{{ claimType }}',
'{{ conditions }}',
'{{ group_filter_type }}',
'{{ name }}',
'{{ status }}',
{{ system }},
'{{ value }}',
'{{ valueType }}',
'{{ authServerId }}',
'{{ subdomain }}'
RETURNING
id,
name,
_links,
alwaysIncludeInToken,
claimType,
conditions,
group_filter_type,
status,
system,
value,
valueType
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: claims
  props:
    - name: authServerId
      value: "{{ authServerId }}"
      description: Required parameter for the claims resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the claims resource.
    - name: alwaysIncludeInToken
      value: {{ alwaysIncludeInToken }}
      description: |
        Specifies whether to include Claims in the token. The value is always \`TRUE\` for access token Claims. If the value is set to \`FALSE\` for an ID token claim, the Claim isn't included in the ID token when the token is requested with the access token or with the \`authorization_code\`. The client instead uses the access token to get Claims from the \`/userinfo\` endpoint.
    - name: claimType
      value: "{{ claimType }}"
      description: |
        Specifies whether the Claim is for an access token (\`RESOURCE\`) or an ID token (\`IDENTITY\`)
      valid_values: ['IDENTITY', 'RESOURCE']
    - name: conditions
      description: |
        Specifies the scopes for the Claim
      value:
        scopes:
          - "{{ scopes }}"
    - name: group_filter_type
      value: "{{ group_filter_type }}"
      description: |
        Specifies the type of group filter if \`valueType\` is \`GROUPS\`
        If \`valueType\` is \`GROUPS\`, then the groups returned are filtered according to the value of \`group_filter_type\`.
        If you have complex filters for Groups, you can [create a Groups allowlist](https://developer.okta.com/docs/guides/customize-tokens-groups-claim/main/) to put them all in a Claim.
      valid_values: ['CONTAINS', 'EQUALS', 'REGEX', 'STARTS_WITH']
    - name: name
      value: "{{ name }}"
      description: |
        Name of the Claim
    - name: status
      value: "{{ status }}"
      valid_values: ['ACTIVE', 'INACTIVE']
    - name: system
      value: {{ system }}
      description: |
        When \`true\`, indicates that Okta created the Claim
    - name: value
      value: "{{ value }}"
      description: |
        Specifies the value of the Claim. This value must be a string literal if \`valueType\` is \`GROUPS\`, and the string literal is matched with the selected \`group_filter_type\`. The value must be an Okta EL expression if \`valueType\` is \`EXPRESSION\`.
    - name: valueType
      value: "{{ valueType }}"
      description: |
        Specifies whether the Claim is an Okta Expression Language (EL) expression (\`EXPRESSION\`), a set of groups (\`GROUPS\`), or a system claim (\`SYSTEM\`)
      valid_values: ['EXPRESSION', 'GROUPS', 'SYSTEM']
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_oauth2_claim"
    values={[
        { label: 'replace_oauth2_claim', value: 'replace_oauth2_claim' }
    ]}
>
<TabItem value="replace_oauth2_claim">

Replaces a custom token Claim specified by the `claimId`

```sql
REPLACE okta.authorizationservers.claims
SET 
alwaysIncludeInToken = {{ alwaysIncludeInToken }},
claimType = '{{ claimType }}',
conditions = '{{ conditions }}',
group_filter_type = '{{ group_filter_type }}',
name = '{{ name }}',
status = '{{ status }}',
system = {{ system }},
value = '{{ value }}',
valueType = '{{ valueType }}'
WHERE 
authServerId = '{{ authServerId }}' --required
AND claimId = '{{ claimId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
alwaysIncludeInToken,
claimType,
conditions,
group_filter_type,
status,
system,
value,
valueType;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_oauth2_claim"
    values={[
        { label: 'delete_oauth2_claim', value: 'delete_oauth2_claim' }
    ]}
>
<TabItem value="delete_oauth2_claim">

Deletes a custom token Claim specified by the `claimId`

```sql
DELETE FROM okta.authorizationservers.claims
WHERE authServerId = '{{ authServerId }}' --required
AND claimId = '{{ claimId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
