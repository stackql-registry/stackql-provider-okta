--- 
title: associated_servers
hide_title: false
hide_table_of_contents: false
keywords:
  - associated_servers
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

Creates, updates, deletes, gets or lists an <code>associated_servers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="associated_servers" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.authorizationservers.associated_servers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_associated_servers_by_trusted_type"
    values={[
        { label: 'list_associated_servers_by_trusted_type', value: 'list_associated_servers_by_trusted_type' }
    ]}
>
<TabItem value="list_associated_servers_by_trusted_type">

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
    <td>The ID of the custom authorization server</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the custom authorization server</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="accessTokenEncryptedResponseAlgorithm" /></td>
    <td><code>string</code></td>
    <td>The algorithm for encrypting access tokens issued by this authorization server. If this is requested, the response is signed, and then encrypted. The result is a nested JWT. The default, if omitted, is that no encryption is performed. (RSA-OAEP-256, RSA-OAEP-384, RSA-OAEP-512)</td>
</tr>
<tr>
    <td><CopyableCode code="audiences" /></td>
    <td><code>array</code></td>
    <td>The recipients that the tokens are intended for. This becomes the `aud` claim in an access token. Okta currently supports only one audience.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="credentials" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>The description of the custom authorization server</td>
</tr>
<tr>
    <td><CopyableCode code="issuer" /></td>
    <td><code>string</code></td>
    <td>The complete URL for the custom authorization server. This becomes the `iss` claim in an access token.</td>
</tr>
<tr>
    <td><CopyableCode code="issuerMode" /></td>
    <td><code>string</code></td>
    <td>Indicates which value is specified in the issuer of the tokens that a custom authorization server returns: the Okta org domain URL or a custom domain URL.  `issuerMode` is visible if you have a custom URL domain configured or the Dynamic Issuer Mode feature enabled. If you have a custom URL domain configured, you can set a custom domain URL in a custom authorization server, and this property is returned in the appropriate responses.  When set to `ORG_URL`, then in responses, `issuer` is the Okta org domain URL: `https://$&#123;yourOktaDomain&#125;`.  When set to `CUSTOM_URL`, then in responses, `issuer` is the custom domain URL configured in the administration user interface.  When set to `DYNAMIC`, then in responses, `issuer` is the custom domain URL if the OAuth 2.0 request was sent to the custom domain, or is the Okta org's domain URL if the OAuth 2.0 request was sent to the original Okta org domain.  After you configure a custom URL domain, all new custom authorization servers use `CUSTOM_URL` by default. If the Dynamic Issuer Mode feature is enabled, then all new custom authorization servers use `DYNAMIC` by default. All existing custom authorization servers continue to use the original value until they're changed using the Admin Console or the API. This way, existing integrations with the client and resource server continue to work after the feature is enabled.</td>
</tr>
<tr>
    <td><CopyableCode code="jwks" /></td>
    <td><code>object</code></td>
    <td>A [JSON Web Key Set](https://tools.ietf.org/html/rfc7517#section-5) for encrypting JWTs minted by the custom authorization server</td>
</tr>
<tr>
    <td><CopyableCode code="jwks_uri" /></td>
    <td><code>string</code></td>
    <td>URL string that references a JSON Web Key Set for encrypting JWTs minted by the custom authorization server</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td> (ACTIVE, INACTIVE)</td>
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
    <td><a href="#list_associated_servers_by_trusted_type"><CopyableCode code="list_associated_servers_by_trusted_type" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-trusted"><code>trusted</code></a>, <a href="#parameter-q"><code>q</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-after"><code>after</code></a></td>
    <td>Lists all associated Authorization Servers by trusted type for the given `authServerId`</td>
</tr>
<tr>
    <td><a href="#create_associated_servers"><CopyableCode code="create_associated_servers" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates trusted relationships between the given authorization server and other authorization servers</td>
</tr>
<tr>
    <td><a href="#delete_associated_server"><CopyableCode code="delete_associated_server" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-associatedServerId"><code>associatedServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an associated Authorization Server</td>
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
<tr id="parameter-associatedServerId">
    <td><CopyableCode code="associatedServerId" /></td>
    <td><code>string</code></td>
    <td>`id` of the associated Authorization Server</td>
</tr>
<tr id="parameter-authServerId">
    <td><CopyableCode code="authServerId" /></td>
    <td><code>string</code></td>
    <td>`id` of the Authorization Server</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>Specifies the pagination cursor for the next page of the associated authorization servers</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of results for a page</td>
</tr>
<tr id="parameter-q">
    <td><CopyableCode code="q" /></td>
    <td><code>string</code></td>
    <td>Searches for the name or audience of the associated authorization servers (example: customasone)</td>
</tr>
<tr id="parameter-trusted">
    <td><CopyableCode code="trusted" /></td>
    <td><code>string</code></td>
    <td>Searches trusted authorization servers when `true` or searches untrusted authorization servers when `false`</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_associated_servers_by_trusted_type"
    values={[
        { label: 'list_associated_servers_by_trusted_type', value: 'list_associated_servers_by_trusted_type' }
    ]}
>
<TabItem value="list_associated_servers_by_trusted_type">

Lists all associated Authorization Servers by trusted type for the given `authServerId`

```sql
SELECT
id,
name,
_links,
accessTokenEncryptedResponseAlgorithm,
audiences,
created,
credentials,
description,
issuer,
issuerMode,
jwks,
jwks_uri,
lastUpdated,
status
FROM okta.authorizationservers.associated_servers
WHERE authServerId = '{{ authServerId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND trusted = '{{ trusted }}'
AND q = '{{ q }}'
AND limit = '{{ limit }}'
AND after = '{{ after }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_associated_servers"
    values={[
        { label: 'create_associated_servers', value: 'create_associated_servers' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_associated_servers">

Creates trusted relationships between the given authorization server and other authorization servers

```sql
INSERT INTO okta.authorizationservers.associated_servers (
trusted,
authServerId,
subdomain
)
SELECT 
'{{ trusted }}',
'{{ authServerId }}',
'{{ subdomain }}'
RETURNING
id,
name,
_links,
accessTokenEncryptedResponseAlgorithm,
audiences,
created,
credentials,
description,
issuer,
issuerMode,
jwks,
jwks_uri,
lastUpdated,
status
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: associated_servers
  props:
    - name: authServerId
      value: "{{ authServerId }}"
      description: Required parameter for the associated_servers resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the associated_servers resource.
    - name: trusted
      value:
        - "{{ trusted }}"
      description: |
        A list of the authorization server IDs
`}</CodeBlock>

</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_associated_server"
    values={[
        { label: 'delete_associated_server', value: 'delete_associated_server' }
    ]}
>
<TabItem value="delete_associated_server">

Deletes an associated Authorization Server

```sql
DELETE FROM okta.authorizationservers.associated_servers
WHERE authServerId = '{{ authServerId }}' --required
AND associatedServerId = '{{ associatedServerId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
