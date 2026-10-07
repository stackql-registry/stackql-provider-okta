--- 
title: authorization_servers
hide_title: false
hide_table_of_contents: false
keywords:
  - authorization_servers
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

Creates, updates, deletes, gets or lists an <code>authorization_servers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="authorization_servers" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.authorizationservers.authorization_servers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_authorization_server"
    values={[
        { label: 'get_authorization_server', value: 'get_authorization_server' },
        { label: 'list_authorization_servers', value: 'list_authorization_servers' }
    ]}
>
<TabItem value="get_authorization_server">

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
<TabItem value="list_authorization_servers">

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
    <td><a href="#get_authorization_server"><CopyableCode code="get_authorization_server" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an authorization server</td>
</tr>
<tr>
    <td><a href="#list_authorization_servers"><CopyableCode code="list_authorization_servers" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-q"><code>q</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-after"><code>after</code></a></td>
    <td>Lists all custom authorization servers in the org</td>
</tr>
<tr>
    <td><a href="#create_authorization_server"><CopyableCode code="create_authorization_server" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates an authorization server</td>
</tr>
<tr>
    <td><a href="#replace_authorization_server"><CopyableCode code="replace_authorization_server" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces an authorization server</td>
</tr>
<tr>
    <td><a href="#delete_authorization_server"><CopyableCode code="delete_authorization_server" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an authorization server</td>
</tr>
<tr>
    <td><a href="#activate_authorization_server"><CopyableCode code="activate_authorization_server" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates an authorization server</td>
</tr>
<tr>
    <td><a href="#deactivate_authorization_server"><CopyableCode code="deactivate_authorization_server" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates an authorization server</td>
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
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>Specifies the pagination cursor for the next page of authorization servers. Treat as an opaque value and obtain through the next link relationship.</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of authorization server results on a page. Maximum value: 200</td>
</tr>
<tr id="parameter-q">
    <td><CopyableCode code="q" /></td>
    <td><code>string</code></td>
    <td>Searches the `name` and `audiences` of authorization servers for matching values (example: customasone)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_authorization_server"
    values={[
        { label: 'get_authorization_server', value: 'get_authorization_server' },
        { label: 'list_authorization_servers', value: 'list_authorization_servers' }
    ]}
>
<TabItem value="get_authorization_server">

Retrieves an authorization server

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
FROM okta.authorizationservers.authorization_servers
WHERE authServerId = '{{ authServerId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_authorization_servers">

Lists all custom authorization servers in the org

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
FROM okta.authorizationservers.authorization_servers
WHERE subdomain = '{{ subdomain }}' -- required
AND q = '{{ q }}'
AND limit = '{{ limit }}'
AND after = '{{ after }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_authorization_server"
    values={[
        { label: 'create_authorization_server', value: 'create_authorization_server' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_authorization_server">

Creates an authorization server

```sql
INSERT INTO okta.authorizationservers.authorization_servers (
accessTokenEncryptedResponseAlgorithm,
audiences,
credentials,
description,
issuer,
issuerMode,
jwks,
jwks_uri,
name,
status,
subdomain
)
SELECT 
'{{ accessTokenEncryptedResponseAlgorithm }}',
'{{ audiences }}',
'{{ credentials }}',
'{{ description }}',
'{{ issuer }}',
'{{ issuerMode }}',
'{{ jwks }}',
'{{ jwks_uri }}',
'{{ name }}',
'{{ status }}',
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
- name: authorization_servers
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the authorization_servers resource.
    - name: accessTokenEncryptedResponseAlgorithm
      value: "{{ accessTokenEncryptedResponseAlgorithm }}"
      description: |
        The algorithm for encrypting access tokens issued by this authorization server. If this is requested, the response is signed, and then encrypted. The result is a nested JWT. The default, if omitted, is that no encryption is performed.
      valid_values: ['RSA-OAEP-256', 'RSA-OAEP-384', 'RSA-OAEP-512']
    - name: audiences
      value:
        - "{{ audiences }}"
      description: |
        The recipients that the tokens are intended for. This becomes the \`aud\` claim in an access token. Okta currently supports only one audience.
    - name: credentials
      value:
        signing:
          kid: "{{ kid }}"
          lastRotated: "{{ lastRotated }}"
          nextRotation: "{{ nextRotation }}"
          rotationMode: "{{ rotationMode }}"
          use: "{{ use }}"
    - name: description
      value: "{{ description }}"
      description: |
        The description of the custom authorization server
    - name: issuer
      value: "{{ issuer }}"
      description: |
        The complete URL for the custom authorization server. This becomes the \`iss\` claim in an access token.
    - name: issuerMode
      value: "{{ issuerMode }}"
      description: |
        Indicates which value is specified in the issuer of the tokens that a custom authorization server returns: the Okta org domain URL or a custom domain URL.
        \`issuerMode\` is visible if you have a custom URL domain configured or the Dynamic Issuer Mode feature enabled. If you have a custom URL domain configured, you can set a custom domain URL in a custom authorization server, and this property is returned in the appropriate responses.
        When set to \`ORG_URL\`, then in responses, \`issuer\` is the Okta org domain URL: \`https://\${yourOktaDomain}\`.
        When set to \`CUSTOM_URL\`, then in responses, \`issuer\` is the custom domain URL configured in the administration user interface.
        When set to \`DYNAMIC\`, then in responses, \`issuer\` is the custom domain URL if the OAuth 2.0 request was sent to the custom domain, or is the Okta org's domain URL if the OAuth 2.0 request was sent to the original Okta org domain.
        After you configure a custom URL domain, all new custom authorization servers use \`CUSTOM_URL\` by default. If the Dynamic Issuer Mode feature is enabled, then all new custom authorization servers use \`DYNAMIC\` by default. All existing custom authorization servers continue to use the original value until they're changed using the Admin Console or the API. This way, existing integrations with the client and resource server continue to work after the feature is enabled.
    - name: jwks
      description: |
        A [JSON Web Key Set](https://tools.ietf.org/html/rfc7517#section-5) for encrypting JWTs minted by the custom authorization server
      value:
        keys:
          - e: "{{ e }}"
            kid: "{{ kid }}"
            kty: "{{ kty }}"
            n: "{{ n }}"
            status: "{{ status }}"
            use: "{{ use }}"
    - name: jwks_uri
      value: "{{ jwks_uri }}"
      description: |
        URL string that references a JSON Web Key Set for encrypting JWTs minted by the custom authorization server
    - name: name
      value: "{{ name }}"
      description: |
        The name of the custom authorization server
    - name: status
      value: "{{ status }}"
      valid_values: ['ACTIVE', 'INACTIVE']
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_authorization_server"
    values={[
        { label: 'replace_authorization_server', value: 'replace_authorization_server' }
    ]}
>
<TabItem value="replace_authorization_server">

Replaces an authorization server

```sql
REPLACE okta.authorizationservers.authorization_servers
SET 
accessTokenEncryptedResponseAlgorithm = '{{ accessTokenEncryptedResponseAlgorithm }}',
audiences = '{{ audiences }}',
credentials = '{{ credentials }}',
description = '{{ description }}',
issuer = '{{ issuer }}',
issuerMode = '{{ issuerMode }}',
jwks = '{{ jwks }}',
jwks_uri = '{{ jwks_uri }}',
name = '{{ name }}',
status = '{{ status }}'
WHERE 
authServerId = '{{ authServerId }}' --required
AND subdomain = '{{ subdomain }}' --required
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
status;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_authorization_server"
    values={[
        { label: 'delete_authorization_server', value: 'delete_authorization_server' }
    ]}
>
<TabItem value="delete_authorization_server">

Deletes an authorization server

```sql
DELETE FROM okta.authorizationservers.authorization_servers
WHERE authServerId = '{{ authServerId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_authorization_server"
    values={[
        { label: 'activate_authorization_server', value: 'activate_authorization_server' },
        { label: 'deactivate_authorization_server', value: 'deactivate_authorization_server' }
    ]}
>
<TabItem value="activate_authorization_server">

Activates an authorization server

```sql
EXEC okta.authorizationservers.authorization_servers.activate_authorization_server 
@authServerId='{{ authServerId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_authorization_server">

Deactivates an authorization server

```sql
EXEC okta.authorizationservers.authorization_servers.deactivate_authorization_server 
@authServerId='{{ authServerId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
