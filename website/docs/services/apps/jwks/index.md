--- 
title: jwks
hide_title: false
hide_table_of_contents: false
keywords:
  - jwks
  - apps
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

Creates, updates, deletes, gets or lists a <code>jwks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="jwks" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.apps.jwks" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_jwk"
    values={[
        { label: 'get_jwk', value: 'get_jwk' },
        { label: 'list_jwk', value: 'list_jwk' }
    ]}
>
<TabItem value="get_jwk">

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
    <td>The unique ID of the OAuth client JSON Web Key (example: pks2f4zrZbs8nUa7p0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the current status of an app using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the OAuth 2.0 client JSON Web Key was created (example: 2023-02-21T20:08:24.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="e" /></td>
    <td><code>string</code></td>
    <td>RSA key value (exponent) for key binding (example: AQAB)</td>
</tr>
<tr>
    <td><CopyableCode code="kid" /></td>
    <td><code>string</code></td>
    <td>Unique identifier of the JSON Web Key in the OAUth 2.0 client's JWKS (example: SIMcCQNY3uwXoW3y0vf6VxiBb5n9pf8L2fK8d-FIbm4)</td>
</tr>
<tr>
    <td><CopyableCode code="kty" /></td>
    <td><code>string</code></td>
    <td>Cryptographic algorithm family for the certificate's key pair (RSA) (example: RSA)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the OAuth 2.0 client JSON Web Key was updated (example: 2023-02-21T20:08:24.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="n" /></td>
    <td><code>string</code></td>
    <td>RSA key value (modulus) for key binding (example: mkC6yAJVvFwUlmM9gKjb2d-YK5qHFt-mXSsbjWKKs4EfNm-BoQeeovBZtSACyaqLc8IYFTPEURFcbDQ9DkAL04uUIRD2gaHYY7uK0jsluEaXGq2RAIsmzAwNTzkiDw4q9pDL_q7n0f_SDt1TsMaMQayB6bU5jWsmqcWJ8MCRJ1aJMjZ16un5UVx51IIeCbe4QRDxEXGAvYNczsBoZxspDt28esSpq5W0dBFxcyGVudyl54Er3FzAguhgfMVjH-bUec9j2Tl40qDTktrYgYfxz9pfjm01Hl4WYP1YQxeETpSL7cQ5Ihz4jGDtHUEOcZ4GfJrPzrGpUrak8Qp5xcwCqQ)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the OAuth 2.0 client JSON Web Key (ACTIVE, INACTIVE) (example: ACTIVE, default: ACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="use" /></td>
    <td><code>string</code></td>
    <td>Acceptable use of the JSON Web Key (enc) (example: enc)</td>
</tr>
<tr>
    <td><CopyableCode code="x" /></td>
    <td><code>string</code></td>
    <td>The public x coordinate for the elliptic curve point</td>
</tr>
<tr>
    <td><CopyableCode code="y" /></td>
    <td><code>string</code></td>
    <td>The public y coordinate for the elliptic curve point</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_jwk">

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
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
    <td><a href="#get_jwk"><CopyableCode code="get_jwk" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-keyId"><code>keyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an OAuth 2.0 client JSON Web Key by `keyId`</td>
</tr>
<tr>
    <td><a href="#list_jwk"><CopyableCode code="list_jwk" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all JSON Web Keys for an OAuth 2.0 client app</td>
</tr>
<tr>
    <td><a href="#add_jwk"><CopyableCode code="add_jwk" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Adds a new JSON Web Key to the client`s JSON Web Keys.<br />> **Note:** This API doesn't allow you to add a key if the existing key doesn't have a `kid`. This is also consistent with how the [Dynamic Client Registration](https://developer.okta.com/docs/api/openapi/okta-oauth/oauth/client) or [Applications](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/application) APIs behave, as they don't allow the creation of multiple keys without `kids`. Use the [Replace an Application](https://developer.okta.com/docs/api/openapi/okta-management/management/application/replaceapplication) or the [Replace a Client Application](https://developer.okta.com/docs/api/openapi/okta-oauth/oauth/client/replaceclient) operation to update the JWKS or [Delete an OAuth 2.0 Client JSON Web Key](https://developer.okta.com/docs/api/openapi/okta-management/management/applicationssopublickeys/deletejwk) and re-add the key with a `kid`.</td>
</tr>
<tr>
    <td><a href="#deletejwk"><CopyableCode code="deletejwk" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-keyId"><code>keyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an OAuth 2.0 Client JSON Web Key by `keyId`. You can only delete an inactive key.</td>
</tr>
<tr>
    <td><a href="#activate_oauth2_client_json_web_key"><CopyableCode code="activate_oauth2_client_json_web_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-keyId"><code>keyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates an OAuth 2.0 client JSON Web Key by `keyId`<br />&gt; **Note:** You can have only one active encryption key at any given time for an app. When you activate an inactive key, the current active key is automatically deactivated.</td>
</tr>
<tr>
    <td><a href="#deactivate_oauth2_client_json_web_key"><CopyableCode code="deactivate_oauth2_client_json_web_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-keyId"><code>keyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates an OAuth 2.0 client JSON Web Key by `keyId`<br />&gt; **Note:** You can only deactivate signing keys. Deactivating the active encryption key isn't allowed if the client has ID token encryption enabled. You can activate another encryption key, which makes the current key inactive.</td>
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
<tr id="parameter-appId">
    <td><CopyableCode code="appId" /></td>
    <td><code>string</code></td>
    <td>Application ID</td>
</tr>
<tr id="parameter-keyId">
    <td><CopyableCode code="keyId" /></td>
    <td><code>string</code></td>
    <td>Unique `id` of the OAuth 2.0 client JSON Web Key (example: pks2f4zrZbs8nUa7p0g4)</td>
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
    defaultValue="get_jwk"
    values={[
        { label: 'get_jwk', value: 'get_jwk' },
        { label: 'list_jwk', value: 'list_jwk' }
    ]}
>
<TabItem value="get_jwk">

Retrieves an OAuth 2.0 client JSON Web Key by `keyId`

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
use,
x,
y
FROM okta.apps.jwks
WHERE appId = '{{ appId }}' -- required
AND keyId = '{{ keyId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_jwk">

Lists all JSON Web Keys for an OAuth 2.0 client app

```sql
SELECT
*
FROM okta.apps.jwks
WHERE appId = '{{ appId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="add_jwk"
    values={[
        { label: 'add_jwk', value: 'add_jwk' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="add_jwk">

Adds a new JSON Web Key to the client`s JSON Web Keys.<br />> **Note:** This API doesn't allow you to add a key if the existing key doesn't have a `kid`. This is also consistent with how the [Dynamic Client Registration](https://developer.okta.com/docs/api/openapi/okta-oauth/oauth/client) or [Applications](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/application) APIs behave, as they don't allow the creation of multiple keys without `kids`. Use the [Replace an Application](https://developer.okta.com/docs/api/openapi/okta-management/management/application/replaceapplication) or the [Replace a Client Application](https://developer.okta.com/docs/api/openapi/okta-oauth/oauth/client/replaceclient) operation to update the JWKS or [Delete an OAuth 2.0 Client JSON Web Key](https://developer.okta.com/docs/api/openapi/okta-management/management/applicationssopublickeys/deletejwk) and re-add the key with a `kid`.

```sql
INSERT INTO okta.apps.jwks (
alg,
use,
e,
kty,
n,
kid,
status,
x,
y,
appId,
subdomain
)
SELECT 
'{{ alg }}',
'{{ use }}',
'{{ e }}',
'{{ kty }}',
'{{ n }}',
'{{ kid }}',
'{{ status }}',
'{{ x }}',
'{{ y }}',
'{{ appId }}',
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
use,
x,
y
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: jwks
  props:
    - name: appId
      value: "{{ appId }}"
      description: Required parameter for the jwks resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the jwks resource.
    - name: alg
      value: "{{ alg }}"
      description: |
        Algorithm used in the key
    - name: use
      value: "{{ use }}"
      description: |
        Acceptable use of the JSON Web Key
      valid_values: ['sig']
    - name: e
      value: "{{ e }}"
      description: |
        RSA key value (exponent) for key binding
    - name: kty
      value: "{{ kty }}"
      description: |
        Cryptographic algorithm family for the certificate's key pair
      valid_values: ['RSA']
    - name: n
      value: "{{ n }}"
      description: |
        RSA key value (modulus) for key binding
    - name: kid
      value: "{{ kid }}"
      description: |
        Unique identifier of the JSON Web Key in the OAUth 2.0 client's JWKS
    - name: status
      value: "{{ status }}"
      description: |
        Status of the OAuth 2.0 client JSON Web Key
      valid_values: ['ACTIVE', 'INACTIVE']
      default: ACTIVE
    - name: x
      value: "{{ x }}"
      description: |
        The public x coordinate for the elliptic curve point
    - name: y
      value: "{{ y }}"
      description: |
        The public y coordinate for the elliptic curve point
`}</CodeBlock>

</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deletejwk"
    values={[
        { label: 'deletejwk', value: 'deletejwk' }
    ]}
>
<TabItem value="deletejwk">

Deletes an OAuth 2.0 Client JSON Web Key by `keyId`. You can only delete an inactive key.

```sql
DELETE FROM okta.apps.jwks
WHERE appId = '{{ appId }}' --required
AND keyId = '{{ keyId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_oauth2_client_json_web_key"
    values={[
        { label: 'activate_oauth2_client_json_web_key', value: 'activate_oauth2_client_json_web_key' },
        { label: 'deactivate_oauth2_client_json_web_key', value: 'deactivate_oauth2_client_json_web_key' }
    ]}
>
<TabItem value="activate_oauth2_client_json_web_key">

Activates an OAuth 2.0 client JSON Web Key by `keyId`<br />&gt; **Note:** You can have only one active encryption key at any given time for an app. When you activate an inactive key, the current active key is automatically deactivated.

```sql
EXEC okta.apps.jwks.activate_oauth2_client_json_web_key 
@appId='{{ appId }}' --required, 
@keyId='{{ keyId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_oauth2_client_json_web_key">

Deactivates an OAuth 2.0 client JSON Web Key by `keyId`<br />&gt; **Note:** You can only deactivate signing keys. Deactivating the active encryption key isn't allowed if the client has ID token encryption enabled. You can activate another encryption key, which makes the current key inactive.

```sql
EXEC okta.apps.jwks.deactivate_oauth2_client_json_web_key 
@appId='{{ appId }}' --required, 
@keyId='{{ keyId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
