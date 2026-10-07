--- 
title: authenticator_methods
hide_title: false
hide_table_of_contents: false
keywords:
  - authenticator_methods
  - authenticators
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

Creates, updates, deletes, gets or lists an <code>authenticator_methods</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="authenticator_methods" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.authenticators.authenticator_methods" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_authenticator_method"
    values={[
        { label: 'get_authenticator_method', value: 'get_authenticator_method' },
        { label: 'list_authenticator_methods', value: 'list_authenticator_methods' }
    ]}
>
<TabItem value="get_authenticator_method">

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
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the authenticator method (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of authenticator method (cert, duo, email, idp, otp, password, push, security_question, signed_nonce, sms, totp, voice, webauthn, tac)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_authenticator_methods">

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
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the authenticator method (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of authenticator method (cert, duo, email, idp, otp, password, push, security_question, signed_nonce, sms, totp, voice, webauthn, tac)</td>
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
    <td><a href="#get_authenticator_method"><CopyableCode code="get_authenticator_method" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-authenticatorId"><code>authenticatorId</code></a>, <a href="#parameter-methodType"><code>methodType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a method identified by `methodType` of an authenticator identified by `authenticatorId`</td>
</tr>
<tr>
    <td><a href="#list_authenticator_methods"><CopyableCode code="list_authenticator_methods" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-authenticatorId"><code>authenticatorId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all methods of an authenticator identified by `authenticatorId`</td>
</tr>
<tr>
    <td><a href="#replace_authenticator_method"><CopyableCode code="replace_authenticator_method" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-authenticatorId"><code>authenticatorId</code></a>, <a href="#parameter-methodType"><code>methodType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a method of `methodType` for an authenticator identified by `authenticatorId`</td>
</tr>
<tr>
    <td><a href="#activate_authenticator_method"><CopyableCode code="activate_authenticator_method" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-authenticatorId"><code>authenticatorId</code></a>, <a href="#parameter-methodType"><code>methodType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a method for an authenticator identified by `authenticatorId` and `methodType`</td>
</tr>
<tr>
    <td><a href="#deactivate_authenticator_method"><CopyableCode code="deactivate_authenticator_method" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-authenticatorId"><code>authenticatorId</code></a>, <a href="#parameter-methodType"><code>methodType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates a method for an authenticator identified by `authenticatorId` and `methodType`</td>
</tr>
<tr>
    <td><a href="#verify_rp_id_domain"><CopyableCode code="verify_rp_id_domain" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-authenticatorId"><code>authenticatorId</code></a>, <a href="#parameter-webAuthnMethodType"><code>webAuthnMethodType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Verifies the [Relying Party identifier (RP ID)](https://www.w3.org/TR/webauthn/#relying-party-identifier) domain for the specified Passkey (FIDO2 WebAuthn) authenticator and the specific `webauthn` authenticator method</td>
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
<tr id="parameter-authenticatorId">
    <td><CopyableCode code="authenticatorId" /></td>
    <td><code>string</code></td>
    <td>`id` of the authenticator</td>
</tr>
<tr id="parameter-methodType">
    <td><CopyableCode code="methodType" /></td>
    <td><code>string</code></td>
    <td>Type of authenticator method</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-webAuthnMethodType">
    <td><CopyableCode code="webAuthnMethodType" /></td>
    <td><code>string</code></td>
    <td>Type of authenticator method</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_authenticator_method"
    values={[
        { label: 'get_authenticator_method', value: 'get_authenticator_method' },
        { label: 'list_authenticator_methods', value: 'list_authenticator_methods' }
    ]}
>
<TabItem value="get_authenticator_method">

Retrieves a method identified by `methodType` of an authenticator identified by `authenticatorId`

```sql
SELECT
_links,
status,
type
FROM okta.authenticators.authenticator_methods
WHERE authenticatorId = '{{ authenticatorId }}' -- required
AND methodType = '{{ methodType }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_authenticator_methods">

Lists all methods of an authenticator identified by `authenticatorId`

```sql
SELECT
_links,
status,
type
FROM okta.authenticators.authenticator_methods
WHERE authenticatorId = '{{ authenticatorId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_authenticator_method"
    values={[
        { label: 'replace_authenticator_method', value: 'replace_authenticator_method' }
    ]}
>
<TabItem value="replace_authenticator_method">

Replaces a method of `methodType` for an authenticator identified by `authenticatorId`

```sql
REPLACE okta.authenticators.authenticator_methods
SET 
status = '{{ status }}',
type = '{{ type }}'
WHERE 
authenticatorId = '{{ authenticatorId }}' --required
AND methodType = '{{ methodType }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
_links,
status,
type;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_authenticator_method"
    values={[
        { label: 'activate_authenticator_method', value: 'activate_authenticator_method' },
        { label: 'deactivate_authenticator_method', value: 'deactivate_authenticator_method' },
        { label: 'verify_rp_id_domain', value: 'verify_rp_id_domain' }
    ]}
>
<TabItem value="activate_authenticator_method">

Activates a method for an authenticator identified by `authenticatorId` and `methodType`

```sql
EXEC okta.authenticators.authenticator_methods.activate_authenticator_method 
@authenticatorId='{{ authenticatorId }}' --required, 
@methodType='{{ methodType }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_authenticator_method">

Deactivates a method for an authenticator identified by `authenticatorId` and `methodType`

```sql
EXEC okta.authenticators.authenticator_methods.deactivate_authenticator_method 
@authenticatorId='{{ authenticatorId }}' --required, 
@methodType='{{ methodType }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="verify_rp_id_domain">

Verifies the [Relying Party identifier (RP ID)](https://www.w3.org/TR/webauthn/#relying-party-identifier) domain for the specified Passkey (FIDO2 WebAuthn) authenticator and the specific `webauthn` authenticator method

```sql
EXEC okta.authenticators.authenticator_methods.verify_rp_id_domain 
@authenticatorId='{{ authenticatorId }}' --required, 
@webAuthnMethodType='{{ webAuthnMethodType }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
