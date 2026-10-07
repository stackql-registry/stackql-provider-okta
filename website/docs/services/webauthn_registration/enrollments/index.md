--- 
title: enrollments
hide_title: false
hide_table_of_contents: false
keywords:
  - enrollments
  - webauthn_registration
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

Creates, updates, deletes, gets or lists an <code>enrollments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="enrollments" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.webauthn_registration.enrollments" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_web_authn_preregistration_factors"
    values={[
        { label: 'list_web_authn_preregistration_factors', value: 'list_web_authn_preregistration_factors' }
    ]}
>
<TabItem value="list_web_authn_preregistration_factors">

User factor variant used for WebAuthn preregistration factors

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
    <td>ID of the factor</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp indicating when the factor was enrolled</td>
</tr>
<tr>
    <td><CopyableCode code="factorType" /></td>
    <td><code>string</code></td>
    <td>Type of factor (call, email, push, question, signed_nonce, sms, token, token:hardware, token:hotp, token:software:totp, u2f, web, webauthn)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp indicating when the factor was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>string</code></td>
    <td>Specific attributes related to the factor (opaque JSON object)</td>
</tr>
<tr>
    <td><CopyableCode code="provider" /></td>
    <td><code>string</code></td>
    <td> (CUSTOM, DUO, FIDO, GOOGLE, OKTA, RSA, SYMANTEC, YUBICO)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the factor (ACTIVE, DISABLED, ENROLLED, EXPIRED, INACTIVE, NOT_SETUP, PENDING_ACTIVATION) (example: ACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="vendorName" /></td>
    <td><code>string</code></td>
    <td>Name of the factor vendor. This is usually the same as the provider. (example: OKTA)</td>
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
    <td><a href="#list_web_authn_preregistration_factors"><CopyableCode code="list_web_authn_preregistration_factors" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all WebAuthn preregistration factors for the specified user</td>
</tr>
<tr>
    <td><a href="#delete_web_authn_preregistration_factor"><CopyableCode code="delete_web_authn_preregistration_factor" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-authenticatorEnrollmentId"><code>authenticatorEnrollmentId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a specific WebAuthn preregistration factor for a user</td>
</tr>
<tr>
    <td><a href="#activate_preregistration_enrollment"><CopyableCode code="activate_preregistration_enrollment" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a preregistered WebAuthn factor. As part of this operation, Okta first decrypts and verifies the factor PIN and enrollment data sent by the fulfillment provider.</td>
</tr>
<tr>
    <td><a href="#enroll_preregistration_enrollment"><CopyableCode code="enroll_preregistration_enrollment" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Enrolls a preregistered WebAuthn factor. This WebAuthn factor has a longer challenge timeout period to accommodate the fulfillment request process. As part of this operation, Okta generates elliptic curve (EC) key-pairs used to encrypt the factor PIN and enrollment data sent by the fulfillment provider.</td>
</tr>
<tr>
    <td><a href="#generate_fulfillment_request"><CopyableCode code="generate_fulfillment_request" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Generates a fulfillment request by sending a WebAuthn preregistration event to start the flow. The WebAuthn preregistration integration for Okta Workflows uses a preregistration event to populate the fulfillment request.</td>
</tr>
<tr>
    <td><a href="#send_pin"><CopyableCode code="send_pin" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Sends the decoded PIN for the specified WebAuthn preregistration enrollment. PINs are sent to the user's email. To resend the PIN, call this operation again.</td>
</tr>
<tr>
    <td><a href="#assign_fulfillment_error_web_authn_preregistration_factor"><CopyableCode code="assign_fulfillment_error_web_authn_preregistration_factor" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-authenticatorEnrollmentId"><code>authenticatorEnrollmentId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Assigns the fulfillment error status to a WebAuthn preregistration factor for a user. The `/mark-error` path indicates that the specific `FULFILLMENT_ERRORED` AuthFactor status is set on the enrollment.</td>
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
<tr id="parameter-authenticatorEnrollmentId">
    <td><CopyableCode code="authenticatorEnrollmentId" /></td>
    <td><code>string</code></td>
    <td>ID for a WebAuthn preregistration factor in Okta</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-userId">
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>ID of an existing Okta user</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_web_authn_preregistration_factors"
    values={[
        { label: 'list_web_authn_preregistration_factors', value: 'list_web_authn_preregistration_factors' }
    ]}
>
<TabItem value="list_web_authn_preregistration_factors">

Lists all WebAuthn preregistration factors for the specified user

```sql
SELECT
id,
_links,
created,
factorType,
lastUpdated,
profile,
provider,
status,
vendorName
FROM okta.webauthn_registration.enrollments
WHERE userId = '{{ userId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_web_authn_preregistration_factor"
    values={[
        { label: 'delete_web_authn_preregistration_factor', value: 'delete_web_authn_preregistration_factor' }
    ]}
>
<TabItem value="delete_web_authn_preregistration_factor">

Deletes a specific WebAuthn preregistration factor for a user

```sql
DELETE FROM okta.webauthn_registration.enrollments
WHERE userId = '{{ userId }}' --required
AND authenticatorEnrollmentId = '{{ authenticatorEnrollmentId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_preregistration_enrollment"
    values={[
        { label: 'activate_preregistration_enrollment', value: 'activate_preregistration_enrollment' },
        { label: 'enroll_preregistration_enrollment', value: 'enroll_preregistration_enrollment' },
        { label: 'generate_fulfillment_request', value: 'generate_fulfillment_request' },
        { label: 'send_pin', value: 'send_pin' },
        { label: 'assign_fulfillment_error_web_authn_preregistration_factor', value: 'assign_fulfillment_error_web_authn_preregistration_factor' }
    ]}
>
<TabItem value="activate_preregistration_enrollment">

Activates a preregistered WebAuthn factor. As part of this operation, Okta first decrypts and verifies the factor PIN and enrollment data sent by the fulfillment provider.

```sql
EXEC okta.webauthn_registration.enrollments.activate_preregistration_enrollment 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"credResponses": "{{ credResponses }}", 
"fulfillmentProvider": "{{ fulfillmentProvider }}", 
"pinResponseJwe": "{{ pinResponseJwe }}", 
"serial": "{{ serial }}", 
"userId": "{{ userId }}", 
"version": "{{ version }}", 
"yubicoSigningJwks": "{{ yubicoSigningJwks }}"
}'
;
```
</TabItem>
<TabItem value="enroll_preregistration_enrollment">

Enrolls a preregistered WebAuthn factor. This WebAuthn factor has a longer challenge timeout period to accommodate the fulfillment request process. As part of this operation, Okta generates elliptic curve (EC) key-pairs used to encrypt the factor PIN and enrollment data sent by the fulfillment provider.

```sql
EXEC okta.webauthn_registration.enrollments.enroll_preregistration_enrollment 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"enrollmentRpIds": "{{ enrollmentRpIds }}", 
"fulfillmentProvider": "{{ fulfillmentProvider }}", 
"userId": "{{ userId }}", 
"yubicoTransportKeyJWK": "{{ yubicoTransportKeyJWK }}"
}'
;
```
</TabItem>
<TabItem value="generate_fulfillment_request">

Generates a fulfillment request by sending a WebAuthn preregistration event to start the flow. The WebAuthn preregistration integration for Okta Workflows uses a preregistration event to populate the fulfillment request.

```sql
EXEC okta.webauthn_registration.enrollments.generate_fulfillment_request 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"fulfillmentData": "{{ fulfillmentData }}", 
"fulfillmentProvider": "{{ fulfillmentProvider }}", 
"userId": "{{ userId }}"
}'
;
```
</TabItem>
<TabItem value="send_pin">

Sends the decoded PIN for the specified WebAuthn preregistration enrollment. PINs are sent to the user's email. To resend the PIN, call this operation again.

```sql
EXEC okta.webauthn_registration.enrollments.send_pin 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"authenticatorEnrollmentId": "{{ authenticatorEnrollmentId }}", 
"fulfillmentProvider": "{{ fulfillmentProvider }}", 
"userId": "{{ userId }}"
}'
;
```
</TabItem>
<TabItem value="assign_fulfillment_error_web_authn_preregistration_factor">

Assigns the fulfillment error status to a WebAuthn preregistration factor for a user. The `/mark-error` path indicates that the specific `FULFILLMENT_ERRORED` AuthFactor status is set on the enrollment.

```sql
EXEC okta.webauthn_registration.enrollments.assign_fulfillment_error_web_authn_preregistration_factor 
@userId='{{ userId }}' --required, 
@authenticatorEnrollmentId='{{ authenticatorEnrollmentId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
