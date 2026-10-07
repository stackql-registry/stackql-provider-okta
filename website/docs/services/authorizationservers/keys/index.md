--- 
title: keys
hide_title: false
hide_table_of_contents: false
keywords:
  - keys
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

Creates, updates, deletes, gets or lists a <code>keys</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="keys" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.authorizationservers.keys" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_authorization_server_key"
    values={[
        { label: 'get_authorization_server_key', value: 'get_authorization_server_key' },
        { label: 'list_authorization_server_keys', value: 'list_authorization_server_keys' }
    ]}
>
<TabItem value="get_authorization_server_key">

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
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="alg" /></td>
    <td><code>string</code></td>
    <td>The algorithm used with the Key. Valid value: `RS256`</td>
</tr>
<tr>
    <td><CopyableCode code="e" /></td>
    <td><code>string</code></td>
    <td>RSA key value (public exponent) for Key binding</td>
</tr>
<tr>
    <td><CopyableCode code="kid" /></td>
    <td><code>string</code></td>
    <td>Unique identifier for the key</td>
</tr>
<tr>
    <td><CopyableCode code="kty" /></td>
    <td><code>string</code></td>
    <td>Cryptographic algorithm family for the certificate's keypair. Valid value: `RSA`</td>
</tr>
<tr>
    <td><CopyableCode code="n" /></td>
    <td><code>string</code></td>
    <td>RSA modulus value that is used by both the public and private keys and provides a link between them</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>An `ACTIVE` Key is used to sign tokens issued by the authorization server. Supported values: `ACTIVE`, `NEXT`, or `EXPIRED`<br /> A `NEXT` Key is the next Key that the authorization server uses to sign tokens when Keys are rotated. The `NEXT` Key might not be listed if it hasn't been generated. An `EXPIRED` Key is the previous Key that the authorization server used to sign tokens. The `EXPIRED` Key might not be listed if no Key has expired or the expired Key was deleted.</td>
</tr>
<tr>
    <td><CopyableCode code="use" /></td>
    <td><code>string</code></td>
    <td>Acceptable use of the key. Valid value: `sig`</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_authorization_server_keys">

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
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="alg" /></td>
    <td><code>string</code></td>
    <td>The algorithm used with the Key. Valid value: `RS256`</td>
</tr>
<tr>
    <td><CopyableCode code="e" /></td>
    <td><code>string</code></td>
    <td>RSA key value (public exponent) for Key binding</td>
</tr>
<tr>
    <td><CopyableCode code="kid" /></td>
    <td><code>string</code></td>
    <td>Unique identifier for the key</td>
</tr>
<tr>
    <td><CopyableCode code="kty" /></td>
    <td><code>string</code></td>
    <td>Cryptographic algorithm family for the certificate's keypair. Valid value: `RSA`</td>
</tr>
<tr>
    <td><CopyableCode code="n" /></td>
    <td><code>string</code></td>
    <td>RSA modulus value that is used by both the public and private keys and provides a link between them</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>An `ACTIVE` Key is used to sign tokens issued by the authorization server. Supported values: `ACTIVE`, `NEXT`, or `EXPIRED`<br /> A `NEXT` Key is the next Key that the authorization server uses to sign tokens when Keys are rotated. The `NEXT` Key might not be listed if it hasn't been generated. An `EXPIRED` Key is the previous Key that the authorization server used to sign tokens. The `EXPIRED` Key might not be listed if no Key has expired or the expired Key was deleted.</td>
</tr>
<tr>
    <td><CopyableCode code="use" /></td>
    <td><code>string</code></td>
    <td>Acceptable use of the key. Valid value: `sig`</td>
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
    <td><a href="#get_authorization_server_key"><CopyableCode code="get_authorization_server_key" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-keyId"><code>keyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an Authorization Server Key specified by the `keyId`</td>
</tr>
<tr>
    <td><a href="#list_authorization_server_keys"><CopyableCode code="list_authorization_server_keys" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all of the current, future, and expired Keys used by the Custom Authorization Server</td>
</tr>
<tr>
    <td><a href="#rotate_authorization_server_keys"><CopyableCode code="rotate_authorization_server_keys" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Rotates the current Keys for a Custom Authorization Server. If you rotate Keys,<br />the `ACTIVE` Key becomes the `EXPIRED` Key, the `NEXT` Key becomes the `ACTIVE` Key,<br />and the Custom Authorization Server immediately begins using the new active<br />Key to sign tokens.<br /><br />&gt; **Note:** Okta rotates your Keys automatically in `AUTO` mode. You can rotate Keys<br />yourself in either mode. If Keys are rotated manually, you should invalidate any intermediate cache.<br />and fetch the Keys again using the Keys endpoint.</td>
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
    <td>`id` of the certificate key</td>
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
    defaultValue="get_authorization_server_key"
    values={[
        { label: 'get_authorization_server_key', value: 'get_authorization_server_key' },
        { label: 'list_authorization_server_keys', value: 'list_authorization_server_keys' }
    ]}
>
<TabItem value="get_authorization_server_key">

Retrieves an Authorization Server Key specified by the `keyId`

```sql
SELECT
_links,
alg,
e,
kid,
kty,
n,
status,
use
FROM okta.authorizationservers.keys
WHERE authServerId = '{{ authServerId }}' -- required
AND keyId = '{{ keyId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_authorization_server_keys">

Lists all of the current, future, and expired Keys used by the Custom Authorization Server

```sql
SELECT
_links,
alg,
e,
kid,
kty,
n,
status,
use
FROM okta.authorizationservers.keys
WHERE authServerId = '{{ authServerId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="rotate_authorization_server_keys"
    values={[
        { label: 'rotate_authorization_server_keys', value: 'rotate_authorization_server_keys' }
    ]}
>
<TabItem value="rotate_authorization_server_keys">

Rotates the current Keys for a Custom Authorization Server. If you rotate Keys,<br />the `ACTIVE` Key becomes the `EXPIRED` Key, the `NEXT` Key becomes the `ACTIVE` Key,<br />and the Custom Authorization Server immediately begins using the new active<br />Key to sign tokens.<br /><br />&gt; **Note:** Okta rotates your Keys automatically in `AUTO` mode. You can rotate Keys<br />yourself in either mode. If Keys are rotated manually, you should invalidate any intermediate cache.<br />and fetch the Keys again using the Keys endpoint.

```sql
EXEC okta.authorizationservers.keys.rotate_authorization_server_keys 
@authServerId='{{ authServerId }}' --required, 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"use": "{{ use }}"
}'
;
```
</TabItem>
</Tabs>
