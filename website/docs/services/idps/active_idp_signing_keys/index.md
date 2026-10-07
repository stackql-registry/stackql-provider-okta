--- 
title: active_idp_signing_keys
hide_title: false
hide_table_of_contents: false
keywords:
  - active_idp_signing_keys
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

Creates, updates, deletes, gets or lists an <code>active_idp_signing_keys</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="active_idp_signing_keys" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.idps.active_idp_signing_keys" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_active_identity_provider_signing_key"
    values={[
        { label: 'list_active_identity_provider_signing_key', value: 'list_active_identity_provider_signing_key' }
    ]}
>
<TabItem value="list_active_identity_provider_signing_key">

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
    <td><a href="#list_active_identity_provider_signing_key"><CopyableCode code="list_active_identity_provider_signing_key" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-idpId"><code>idpId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists the active signing key credential for an identity provider (IdP)</td>
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
<tr id="parameter-idpId">
    <td><CopyableCode code="idpId" /></td>
    <td><code>string</code></td>
    <td>`id` of IdP</td>
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
    defaultValue="list_active_identity_provider_signing_key"
    values={[
        { label: 'list_active_identity_provider_signing_key', value: 'list_active_identity_provider_signing_key' }
    ]}
>
<TabItem value="list_active_identity_provider_signing_key">

Lists the active signing key credential for an identity provider (IdP)

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
FROM okta.idps.active_idp_signing_keys
WHERE idpId = '{{ idpId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
