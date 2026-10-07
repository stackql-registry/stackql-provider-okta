--- 
title: oauth2_resource_server_jwks
hide_title: false
hide_table_of_contents: false
keywords:
  - oauth2_resource_server_jwks
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

Creates, updates, deletes, gets or lists an <code>oauth2_resource_server_jwks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="oauth2_resource_server_jwks" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.authorizationservers.oauth2_resource_server_jwks" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_oauth2_resource_server_json_web_key"
    values={[
        { label: 'get_oauth2_resource_server_json_web_key', value: 'get_oauth2_resource_server_json_web_key' },
        { label: 'list_oauth2_resource_server_json_web_keys', value: 'list_oauth2_resource_server_json_web_keys' }
    ]}
>
<TabItem value="get_oauth2_resource_server_json_web_key">

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
    <td>The unique ID of the JSON Web Key (example: apk2f4zrZbs8nUa7p0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the current status of a JSON Web Key using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the JSON Web Key was created (example: 2023-02-21T20:08:24.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="e" /></td>
    <td><code>string</code></td>
    <td>RSA key value (exponent) for key binding (example: AQAB)</td>
</tr>
<tr>
    <td><CopyableCode code="kid" /></td>
    <td><code>string</code></td>
    <td>Unique identifier of the JSON Web Key in the Custom Authorization Server's Public JWKS (example: SIMcCQNY3uwXoW3y0vf6VxiBb5n9pf8L2fK8d-FIbm4)</td>
</tr>
<tr>
    <td><CopyableCode code="kty" /></td>
    <td><code>string</code></td>
    <td>Cryptographic algorithm family for the certificate's key pair (example: RSA)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the JSON Web Key was updated (example: 2023-02-21T20:08:24.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="n" /></td>
    <td><code>string</code></td>
    <td>RSA key value (modulus) for key binding (example: mkC6yAJVvFwUlmM9gKjb2d-YK5qHFt-mXSsbjWKKs4EfNm-BoQeeovBZtSACyaqLc8IYFTPEURFcbDQ9DkAL04uUIRD2gaHYY7uK0jsluEaXGq2RAIsmzAwNTzkiDw4q9pDL_q7n0f_SDt1TsMaMQayB6bU5jWsmqcWJ8MCRJ1aJMjZ16un5UVx51IIeCbe4QRDxEXGAvYNczsBoZxspDt28esSpq5W0dBFxcyGVudyl54Er3FzAguhgfMVjH-bUec9j2Tl40qDTktrYgYfxz9pfjm01Hl4WYP1YQxeETpSL7cQ5Ihz4jGDtHUEOcZ4GfJrPzrGpUrak8Qp5xcwCqQ)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the encryption key. You can use only an `ACTIVE` key to encrypt tokens issued by the authorization server. (ACTIVE, INACTIVE) (example: ACTIVE, default: ACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="use" /></td>
    <td><code>string</code></td>
    <td>Acceptable use of the JSON Web Key (example: enc)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_oauth2_resource_server_json_web_keys">

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
    <td>The unique ID of the JSON Web Key (example: apk2f4zrZbs8nUa7p0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the current status of a JSON Web Key using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the JSON Web Key was created (example: 2023-02-21T20:08:24.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="e" /></td>
    <td><code>string</code></td>
    <td>RSA key value (exponent) for key binding (example: AQAB)</td>
</tr>
<tr>
    <td><CopyableCode code="kid" /></td>
    <td><code>string</code></td>
    <td>Unique identifier of the JSON Web Key in the Custom Authorization Server's Public JWKS (example: SIMcCQNY3uwXoW3y0vf6VxiBb5n9pf8L2fK8d-FIbm4)</td>
</tr>
<tr>
    <td><CopyableCode code="kty" /></td>
    <td><code>string</code></td>
    <td>Cryptographic algorithm family for the certificate's key pair (example: RSA)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the JSON Web Key was updated (example: 2023-02-21T20:08:24.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="n" /></td>
    <td><code>string</code></td>
    <td>RSA key value (modulus) for key binding (example: mkC6yAJVvFwUlmM9gKjb2d-YK5qHFt-mXSsbjWKKs4EfNm-BoQeeovBZtSACyaqLc8IYFTPEURFcbDQ9DkAL04uUIRD2gaHYY7uK0jsluEaXGq2RAIsmzAwNTzkiDw4q9pDL_q7n0f_SDt1TsMaMQayB6bU5jWsmqcWJ8MCRJ1aJMjZ16un5UVx51IIeCbe4QRDxEXGAvYNczsBoZxspDt28esSpq5W0dBFxcyGVudyl54Er3FzAguhgfMVjH-bUec9j2Tl40qDTktrYgYfxz9pfjm01Hl4WYP1YQxeETpSL7cQ5Ihz4jGDtHUEOcZ4GfJrPzrGpUrak8Qp5xcwCqQ)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the encryption key. You can use only an `ACTIVE` key to encrypt tokens issued by the authorization server. (ACTIVE, INACTIVE) (example: ACTIVE, default: ACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="use" /></td>
    <td><code>string</code></td>
    <td>Acceptable use of the JSON Web Key (example: enc)</td>
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
    <td><a href="#get_oauth2_resource_server_json_web_key"><CopyableCode code="get_oauth2_resource_server_json_web_key" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-keyId"><code>keyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a custom authorization server public JSON web key by key `id`</td>
</tr>
<tr>
    <td><a href="#list_oauth2_resource_server_json_web_keys"><CopyableCode code="list_oauth2_resource_server_json_web_keys" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all the public keys used by the custom authorization server</td>
</tr>
<tr>
    <td><a href="#add_oauth2_resource_server_json_web_key"><CopyableCode code="add_oauth2_resource_server_json_web_key" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Adds a new JSON Web Key to the custom authorization server`s JSON web keys.<br />> **Note:** This API doesn't allow you to add a key if the existing key doesn't have a `kid`. Use the [Replace an Authorization Server](https://developer.okta.com/docs/api/openapi/okta-management/management/authorizationserver/replaceauthorizationserver) operation to update the JWKS or [Delete a Custom Authorization Server Public JSON Web Key](https://developer.okta.com/docs/api/openapi/okta-management/management/oauth2resourceservercredentialskeys/deleteoauth2resourceserverjsonwebkey) and re-add the key with a `kid`.<br />&gt; **Note:** This API doesn't allow you to add a key with an ACTIVE status. You need to add an INACTIVE key first, and then ACTIVATE the key.</td>
</tr>
<tr>
    <td><a href="#delete_oauth2_resource_server_json_web_key"><CopyableCode code="delete_oauth2_resource_server_json_web_key" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-keyId"><code>keyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a custom authorization server public JSON web key by key `id`. You can only delete an inactive key.</td>
</tr>
<tr>
    <td><a href="#activate_oauth2_resource_server_json_web_key"><CopyableCode code="activate_oauth2_resource_server_json_web_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-keyId"><code>keyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a custom authorization server public JSON web key by key `id`.<br />&gt; **Note:** You can have only one active key at any given time for the authorization server. When you activate an inactive key, Okta automatically deactivates the current active key.</td>
</tr>
<tr>
    <td><a href="#deactivate_oauth2_resource_server_json_web_key"><CopyableCode code="deactivate_oauth2_resource_server_json_web_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-keyId"><code>keyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates a custom authorization server public JSON web key by key `id`.<br />&gt; **Note:** Deactivating the active key isn't allowed if the authorization server has access token encryption enabled. You can activate another key, which makes the current key inactive.</td>
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
<tr id="parameter-keyId">
    <td><CopyableCode code="keyId" /></td>
    <td><code>string</code></td>
    <td>Unique `id` of the Custom Authorization Server JSON Web Key (example: apk2f4zrZbs8nUa7p0g4)</td>
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
    defaultValue="get_oauth2_resource_server_json_web_key"
    values={[
        { label: 'get_oauth2_resource_server_json_web_key', value: 'get_oauth2_resource_server_json_web_key' },
        { label: 'list_oauth2_resource_server_json_web_keys', value: 'list_oauth2_resource_server_json_web_keys' }
    ]}
>
<TabItem value="get_oauth2_resource_server_json_web_key">

Retrieves a custom authorization server public JSON web key by key `id`

```sql
SELECT
id,
_links,
created,
e,
kid,
kty,
lastUpdated,
n,
status,
use
FROM okta.authorizationservers.oauth2_resource_server_jwks
WHERE authServerId = '{{ authServerId }}' -- required
AND keyId = '{{ keyId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_oauth2_resource_server_json_web_keys">

Lists all the public keys used by the custom authorization server

```sql
SELECT
id,
_links,
created,
e,
kid,
kty,
lastUpdated,
n,
status,
use
FROM okta.authorizationservers.oauth2_resource_server_jwks
WHERE authServerId = '{{ authServerId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="add_oauth2_resource_server_json_web_key"
    values={[
        { label: 'add_oauth2_resource_server_json_web_key', value: 'add_oauth2_resource_server_json_web_key' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="add_oauth2_resource_server_json_web_key">

Adds a new JSON Web Key to the custom authorization server`s JSON web keys.<br />> **Note:** This API doesn't allow you to add a key if the existing key doesn't have a `kid`. Use the [Replace an Authorization Server](https://developer.okta.com/docs/api/openapi/okta-management/management/authorizationserver/replaceauthorizationserver) operation to update the JWKS or [Delete a Custom Authorization Server Public JSON Web Key](https://developer.okta.com/docs/api/openapi/okta-management/management/oauth2resourceservercredentialskeys/deleteoauth2resourceserverjsonwebkey) and re-add the key with a `kid`.<br />&gt; **Note:** This API doesn't allow you to add a key with an ACTIVE status. You need to add an INACTIVE key first, and then ACTIVATE the key.

```sql
INSERT INTO okta.authorizationservers.oauth2_resource_server_jwks (
e,
kid,
kty,
n,
status,
use,
authServerId,
subdomain
)
SELECT 
'{{ e }}',
'{{ kid }}',
'{{ kty }}',
'{{ n }}',
'{{ status }}',
'{{ use }}',
'{{ authServerId }}',
'{{ subdomain }}'
RETURNING
id,
_links,
created,
e,
kid,
kty,
lastUpdated,
n,
status,
use
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: oauth2_resource_server_jwks
  props:
    - name: authServerId
      value: "{{ authServerId }}"
      description: Required parameter for the oauth2_resource_server_jwks resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the oauth2_resource_server_jwks resource.
    - name: e
      value: "{{ e }}"
      description: |
        RSA key value (exponent) for key binding
    - name: kid
      value: "{{ kid }}"
      description: |
        Unique identifier of the JSON web key in the custom authorization server's public JWKS
    - name: kty
      value: "{{ kty }}"
      description: |
        Cryptographic algorithm family for the certificate's key pair
    - name: n
      value: "{{ n }}"
      description: |
        RSA key value (modulus) for key binding
    - name: status
      value: "{{ status }}"
      description: |
        Status of the JSON Web Key
      valid_values: ['ACTIVE', 'INACTIVE']
    - name: use
      value: "{{ use }}"
      description: |
        Acceptable use of the JSON Web Key
`}</CodeBlock>

</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_oauth2_resource_server_json_web_key"
    values={[
        { label: 'delete_oauth2_resource_server_json_web_key', value: 'delete_oauth2_resource_server_json_web_key' }
    ]}
>
<TabItem value="delete_oauth2_resource_server_json_web_key">

Deletes a custom authorization server public JSON web key by key `id`. You can only delete an inactive key.

```sql
DELETE FROM okta.authorizationservers.oauth2_resource_server_jwks
WHERE authServerId = '{{ authServerId }}' --required
AND keyId = '{{ keyId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_oauth2_resource_server_json_web_key"
    values={[
        { label: 'activate_oauth2_resource_server_json_web_key', value: 'activate_oauth2_resource_server_json_web_key' },
        { label: 'deactivate_oauth2_resource_server_json_web_key', value: 'deactivate_oauth2_resource_server_json_web_key' }
    ]}
>
<TabItem value="activate_oauth2_resource_server_json_web_key">

Activates a custom authorization server public JSON web key by key `id`.<br />&gt; **Note:** You can have only one active key at any given time for the authorization server. When you activate an inactive key, Okta automatically deactivates the current active key.

```sql
EXEC okta.authorizationservers.oauth2_resource_server_jwks.activate_oauth2_resource_server_json_web_key 
@authServerId='{{ authServerId }}' --required, 
@keyId='{{ keyId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_oauth2_resource_server_json_web_key">

Deactivates a custom authorization server public JSON web key by key `id`.<br />&gt; **Note:** Deactivating the active key isn't allowed if the authorization server has access token encryption enabled. You can activate another key, which makes the current key inactive.

```sql
EXEC okta.authorizationservers.oauth2_resource_server_jwks.deactivate_oauth2_resource_server_json_web_key 
@authServerId='{{ authServerId }}' --required, 
@keyId='{{ keyId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
