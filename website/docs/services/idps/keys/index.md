--- 
title: keys
hide_title: false
hide_table_of_contents: false
keywords:
  - keys
  - idps
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
<tr><td><b>Id</b></td><td><CopyableCode code="okta.idps.keys" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_identity_provider_key"
    values={[
        { label: 'get_identity_provider_key', value: 'get_identity_provider_key' },
        { label: 'list_identity_provider_keys', value: 'list_identity_provider_keys' }
    ]}
>
<TabItem value="get_identity_provider_key">

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
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="e" /></td>
    <td><code>string</code></td>
    <td>The exponent value for the RSA public key (example: AQAB)</td>
</tr>
<tr>
    <td><CopyableCode code="expiresAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object expires (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="kid" /></td>
    <td><code>string</code></td>
    <td>Unique identifier for the key (example: your-key-id)</td>
</tr>
<tr>
    <td><CopyableCode code="kty" /></td>
    <td><code>string</code></td>
    <td>Identifies the cryptographic algorithm family used with the key (example: RSA)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="n" /></td>
    <td><code>string</code></td>
    <td>The modulus value for the RSA public key (example: 101438407598598116085679865987760095721749307901605456708912786847324207000576780508113360584555007890315805735307890113536927352312915634368993759211767770602174860126854831344273970871509573365292777620005537635317282520456901584213746937262823585533063042033441296629204165064680610660631365266976782082747)</td>
</tr>
<tr>
    <td><CopyableCode code="use" /></td>
    <td><code>string</code></td>
    <td>Intended use of the public key (example: sig)</td>
</tr>
<tr>
    <td><CopyableCode code="x5c" /></td>
    <td><code>array</code></td>
    <td>Base64-encoded X.509 certificate chain with DER encoding</td>
</tr>
<tr>
    <td><CopyableCode code="x5t#S256" /></td>
    <td><code>string</code></td>
    <td>Base64url-encoded SHA-256 thumbprint of the DER encoding of an X.509 certificate (example: wzPVobIrveR1x-PCbjsFGNV-6zn7Rm9KuOWOG4Rk6jE)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_identity_provider_keys">

A [JSON Web Key](https://tools.ietf.org/html/rfc7517) for a signature or encryption credential for an IdP

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
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="e" /></td>
    <td><code>string</code></td>
    <td>The exponent value for the RSA public key (example: AQAB)</td>
</tr>
<tr>
    <td><CopyableCode code="expiresAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object expires (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="kid" /></td>
    <td><code>string</code></td>
    <td>Unique identifier for the key (example: your-key-id)</td>
</tr>
<tr>
    <td><CopyableCode code="kty" /></td>
    <td><code>string</code></td>
    <td>Identifies the cryptographic algorithm family used with the key (example: RSA)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="n" /></td>
    <td><code>string</code></td>
    <td>The modulus value for the RSA public key (example: 101438407598598116085679865987760095721749307901605456708912786847324207000576780508113360584555007890315805735307890113536927352312915634368993759211767770602174860126854831344273970871509573365292777620005537635317282520456901584213746937262823585533063042033441296629204165064680610660631365266976782082747)</td>
</tr>
<tr>
    <td><CopyableCode code="use" /></td>
    <td><code>string</code></td>
    <td>Intended use of the public key (example: sig)</td>
</tr>
<tr>
    <td><CopyableCode code="x5c" /></td>
    <td><code>array</code></td>
    <td>Base64-encoded X.509 certificate chain with DER encoding</td>
</tr>
<tr>
    <td><CopyableCode code="x5t#S256" /></td>
    <td><code>string</code></td>
    <td>Base64url-encoded SHA-256 thumbprint of the DER encoding of an X.509 certificate (example: wzPVobIrveR1x-PCbjsFGNV-6zn7Rm9KuOWOG4Rk6jE)</td>
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
    <td><a href="#get_identity_provider_key"><CopyableCode code="get_identity_provider_key" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-kid"><code>kid</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a specific identity provider (IdP) key credential by `kid`</td>
</tr>
<tr>
    <td><a href="#list_identity_provider_keys"><CopyableCode code="list_identity_provider_keys" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all identity provider (IdP) key credentials</td>
</tr>
<tr>
    <td><a href="#create_identity_provider_key"><CopyableCode code="create_identity_provider_key" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-x5c"><code>x5c</code></a></td>
    <td></td>
    <td>Creates a new X.509 certificate credential in the identity provider (IdP) key store<br />&gt; **Note:** RSA-based certificates are supported for all IdP types. Okta currently supports EC-based certificates only for the `X509` IdP type. For EC-based certificates we support only P-256, P-384, and P-521 curves.</td>
</tr>
<tr>
    <td><a href="#replace_identity_provider_key"><CopyableCode code="replace_identity_provider_key" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-kid"><code>kid</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces an identity provider (IdP) key credential by `kid`</td>
</tr>
<tr>
    <td><a href="#delete_identity_provider_key"><CopyableCode code="delete_identity_provider_key" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-kid"><code>kid</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a specific identity provider (IdP) key credential by `kid` if it isn't currently being used by an active or inactive IdP</td>
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
<tr id="parameter-kid">
    <td><CopyableCode code="kid" /></td>
    <td><code>string</code></td>
    <td>Unique `id` of the IdP key credential</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](https://developer.okta.com/docs/api/#pagination) and [Link header](https://developer.okta.com/docs/api/#link-header).</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer</code></td>
    <td>A limit on the number of objects to return</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_identity_provider_key"
    values={[
        { label: 'get_identity_provider_key', value: 'get_identity_provider_key' },
        { label: 'list_identity_provider_keys', value: 'list_identity_provider_keys' }
    ]}
>
<TabItem value="get_identity_provider_key">

Retrieves a specific identity provider (IdP) key credential by `kid`

```sql
SELECT
created,
e,
expiresAt,
kid,
kty,
lastUpdated,
n,
use,
x5c,
x5t#S256
FROM okta.idps.keys
WHERE kid = '{{ kid }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_identity_provider_keys">

Lists all identity provider (IdP) key credentials

```sql
SELECT
created,
e,
expiresAt,
kid,
kty,
lastUpdated,
n,
use,
x5c,
x5t#S256
FROM okta.idps.keys
WHERE subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_identity_provider_key"
    values={[
        { label: 'create_identity_provider_key', value: 'create_identity_provider_key' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_identity_provider_key">

Creates a new X.509 certificate credential in the identity provider (IdP) key store<br />&gt; **Note:** RSA-based certificates are supported for all IdP types. Okta currently supports EC-based certificates only for the `X509` IdP type. For EC-based certificates we support only P-256, P-384, and P-521 curves.

```sql
INSERT INTO okta.idps.keys (
x5c,
subdomain
)
SELECT 
'{{ x5c }}' /* required */,
'{{ subdomain }}'
RETURNING
created,
e,
expiresAt,
kid,
kty,
lastUpdated,
n,
use,
x5c,
x5t#S256
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: keys
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the keys resource.
    - name: x5c
      value:
        - "{{ x5c }}"
      description: |
        Base64-encoded X.509 certificate chain with DER encoding
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_identity_provider_key"
    values={[
        { label: 'replace_identity_provider_key', value: 'replace_identity_provider_key' }
    ]}
>
<TabItem value="replace_identity_provider_key">

Replaces an identity provider (IdP) key credential by `kid`

```sql
REPLACE okta.idps.keys
SET 
e = '{{ e }}',
kid = '{{ kid }}',
kty = '{{ kty }}',
n = '{{ n }}',
use = '{{ use }}',
x5c = '{{ x5c }}',
x5t#S256 = '{{ x5t#S256 }}'
WHERE 
kid = '{{ kid }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
created,
e,
expiresAt,
kid,
kty,
lastUpdated,
n,
use,
x5c,
x5t#S256;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_identity_provider_key"
    values={[
        { label: 'delete_identity_provider_key', value: 'delete_identity_provider_key' }
    ]}
>
<TabItem value="delete_identity_provider_key">

Deletes a specific identity provider (IdP) key credential by `kid` if it isn't currently being used by an active or inactive IdP

```sql
DELETE FROM okta.idps.keys
WHERE kid = '{{ kid }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
