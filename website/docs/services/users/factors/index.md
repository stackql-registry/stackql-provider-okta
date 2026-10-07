--- 
title: factors
hide_title: false
hide_table_of_contents: false
keywords:
  - factors
  - users
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

Creates, updates, deletes, gets or lists a <code>factors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="factors" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.users.factors" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_factor_transaction_status"
    values={[
        { label: 'get_factor_transaction_status', value: 'get_factor_transaction_status' },
        { label: 'get_factor', value: 'get_factor' },
        { label: 'list_factors', value: 'list_factors' }
    ]}
>
<TabItem value="get_factor_transaction_status">

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
    <td><CopyableCode code="factorResult" /></td>
    <td><code>string</code></td>
    <td>Result of the verification transaction (WAITING (with number matching challenge), WAITING, SUCCESS, REJECTED, TIMEOUT)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_factor">

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
    <td>ID of the factor (example: caf8m6jbcvUH8mAep1d7)</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the factor was enrolled (example: 2022-08-25T00:31:00.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="factorType" /></td>
    <td><code>string</code></td>
    <td>Type of factor (call, email, push, question, signed_nonce, sms, token, token:hardware, token:hotp, token:software:totp, u2f, web, webauthn)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the factor was last updated (example: 2022-08-25T00:31:00.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>string</code></td>
    <td>Specific attributes related to the factor (opaque JSON object)</td>
</tr>
<tr>
    <td><CopyableCode code="provider" /></td>
    <td><code>string</code></td>
    <td>Provider for the factor. Each provider can support a subset of factor types.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the factor (ACTIVE, DISABLED, ENROLLED, EXPIRED, INACTIVE, NOT_SETUP, PENDING_ACTIVATION) (example: ACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="vendorName" /></td>
    <td><code>string</code></td>
    <td>Name of the factor vendor. This is usually the same as the provider except for On-Prem MFA, which depends on admin settings. (example: OKTA)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_factors">

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
    <td>ID of the factor (example: caf8m6jbcvUH8mAep1d7)</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the factor was enrolled (example: 2022-08-25T00:31:00.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="factorType" /></td>
    <td><code>string</code></td>
    <td>Type of factor (call, email, push, question, signed_nonce, sms, token, token:hardware, token:hotp, token:software:totp, u2f, web, webauthn)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the factor was last updated (example: 2022-08-25T00:31:00.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>string</code></td>
    <td>Specific attributes related to the factor (opaque JSON object)</td>
</tr>
<tr>
    <td><CopyableCode code="provider" /></td>
    <td><code>string</code></td>
    <td>Provider for the factor. Each provider can support a subset of factor types.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the factor (ACTIVE, DISABLED, ENROLLED, EXPIRED, INACTIVE, NOT_SETUP, PENDING_ACTIVATION) (example: ACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="vendorName" /></td>
    <td><code>string</code></td>
    <td>Name of the factor vendor. This is usually the same as the provider except for On-Prem MFA, which depends on admin settings. (example: OKTA)</td>
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
    <td><a href="#get_factor_transaction_status"><CopyableCode code="get_factor_transaction_status" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-factorId"><code>factorId</code></a>, <a href="#parameter-transactionId"><code>transactionId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the status of a `push` factor verification transaction<br /><br /> &gt; **Note:**<br /> &gt; The response body for a number matching push challenge to an Okta Verify `push` factor enrollment is different from the response body of a standard push challenge.<br /> &gt; The number matching push challenge [response body](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/userfactor/other/getfactortransactionstatus!c=200&path=1/_embedded&t=response) contains the correct answer for the challenge.<br /> &gt; Use [Verify a factor](https://developer.okta.com/docs/api/openapi/okta-management/management/userfactor/verifyfactor) to configure which challenge is sent.</td>
</tr>
<tr>
    <td><a href="#get_factor"><CopyableCode code="get_factor" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-factorId"><code>factorId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an existing factor for the specified user</td>
</tr>
<tr>
    <td><a href="#list_factors"><CopyableCode code="list_factors" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all enrolled factors for the specified user that are included in the highest priority [authenticator enrollment policy](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/policy/) that applies to the user.<br /><br />Only enrolled factors that are `REQUIRED` or `OPTIONAL` in the highest priority authenticator enrollment policy can be returned.<br /><br />&gt; **Note:** When admins use this endpoint for other users, the authenticator enrollment policy that's evaluated can vary depending on how client-specific conditions are configured in the rules of an authenticator enrollment policy. The client-specific conditions of the admin's client are used during policy evaluation instead of the client-specific conditions of the user. This can affect which authenticator enrollment policy is evaluated and which factors are returned.<br />&gt;<br />&gt; For example, an admin in Europe lists all enrolled factors for a user in North America. The network zone of the admin's client (in Europe) is used during policy evaluation instead of the network zone of the user (in North America).</td>
</tr>
<tr>
    <td><a href="#enroll_factor"><CopyableCode code="enroll_factor" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-updatePhone"><code>updatePhone</code></a>, <a href="#parameter-templateId"><code>templateId</code></a>, <a href="#parameter-tokenLifetimeSeconds"><code>tokenLifetimeSeconds</code></a>, <a href="#parameter-activate"><code>activate</code></a>, <a href="#parameter-Accept-Language"><code>Accept-Language</code></a></td>
    <td>Enrolls a supported factor for the specified user<br /><br />&gt; **Notes:**<br />&gt;   * All responses return the enrolled factor with a status of either `PENDING_ACTIVATION` or `ACTIVE`.<br />&gt;   * You can't use the Factors API to enroll Okta FastPass (`signed_nonce`) for a user. See [Configure Okta FastPass](https://help.okta.com/okta_help.htm?type=oie&id=ext-fp-configure).<br /><br />#### Additional SMS/Call factor information<br /><br />* **Rate limits**: Okta may return a `429 Too Many Requests` status code if you attempt to resend an SMS or a voice call challenge (OTP) within the same time window. The current [rate limit](https://developer.okta.com/docs/reference/rate-limits/) is one SMS/CALL challenge per phone number every 30 seconds.<br /><br />* **Existing phone numbers**: Okta may return a `400 Bad Request` status code if a user attempts to enroll with a different phone number when the user has an existing mobile phone or has an existing phone with voice call capability. A user can enroll only one mobile phone for `sms` and enroll only one voice call capable phone for `call` factor.<br /><br />#### Additional WebAuthn factor information<br /><br />* For detailed information on the WebAuthn standard, including an up-to-date list of supported browsers, see [webauthn.me](https://a0.to/webauthnme-okta-docs).<br /><br />* When you enroll a WebAuthn factor, the `activation` object in `_embedded` contains properties used to help the client to create a new WebAuthn credential for use with Okta. See the [WebAuthn spec for PublicKeyCredentialCreationOptions](https://www.w3.org/TR/webauthn/#dictionary-makecredentialoptions).<br /><br />* As of the `2026.04.0` release, the FIDO2 (WebAuthn) authenticator is now called Passkey (FIDO2 WebAuthn) and there are new settings and updates to the authenticator page layout. There have been no changes to any existing parameter names, values, or endpoint paths. For example, the `factorType` for the Passkey (FIDO2 WebAuthn) authenticator is still `webauthn`. See [Passkeys and WebAuthn](https://developer.okta.com/docs/guides/authenticators-web-authn/aspnet/main/#passkeys-and-webauthn).<br /><br /><br />#### Additional Custom TOTP factor information<br /><br />* The enrollment process involves passing both the `factorProfileId` and `sharedSecret` properties for a token.<br /><br />* A factor profile represents a particular configuration of the Custom TOTP factor. It includes certain properties that match the hardware token that end users possess, such as the HMAC algorithm, passcode length, and time interval. There can be multiple Custom TOTP factor profiles per org, but users can only enroll in one Custom TOTP factor. Admins can [create Custom TOTP factor profiles](https://help.okta.com/okta_help.htm?id=ext-mfa-totp) in the Admin Console. Then, copy the `factorProfileId` from the Admin Console into the API request.<br /><br />* &lt;x-lifecycle class="oie"&gt;&lt;/x-lifecycle&gt;<br />For Custom TOTP enrollment, Okta automaticaly enrolls a user with a `token:software:totp` factor and the `push` factor if the user isn't currently enrolled with these factors.</td>
</tr>
<tr>
    <td><a href="#unenroll_factor"><CopyableCode code="unenroll_factor" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-factorId"><code>factorId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-removeRecoveryEnrollment"><code>removeRecoveryEnrollment</code></a></td>
    <td>Unenrolls an existing factor for the specified user. You can't unenroll a factor from a deactivated user. Unenrolling a factor allows the user to enroll a new factor.<br /><br />&gt; **Note:** If you unenroll the `push` or the `signed_nonce` factors, Okta also unenrolls any other `totp`, `signed_nonce`, or Okta Verify `push` factors associated with the user.</td>
</tr>
<tr>
    <td><a href="#activate_factor"><CopyableCode code="activate_factor" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-factorId"><code>factorId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a factor. Some factors (`call`, `email`, `push`, `sms`, `token:software:totp`, `u2f`, and `webauthn`) require activation to complete the enrollment process.<br /><br />Okta enforces a rate limit of five activation attempts within five minutes. After a user exceeds the rate limit, Okta returns an error message.<br /><br />&gt; **Notes:**<br />&gt; * If the user exceeds their SMS, call, or email factor activation rate limit, then an [OTP resend request]https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UserFactor/ isn't allowed for the same factor.<br />&gt; * You can't use the Factors API to activate Okta FastPass (`signed_nonce`) for a user. See [Configure Okta FastPass](https://help.okta.com/okta_help.htm?type=oie&id=ext-fp-configure).</td>
</tr>
<tr>
    <td><a href="#resend_enroll_factor"><CopyableCode code="resend_enroll_factor" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-factorId"><code>factorId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-templateId"><code>templateId</code></a></td>
    <td>Resends an `sms`, `call`, or `email` factor challenge as part of an enrollment flow.<br /><br />For `call` and `sms` factors, Okta enforces a rate limit of one OTP challenge per device every 30 seconds. You can configure your `sms` and `call` factors to use a third-party telephony provider. See the [Telephony inline hook reference](https://developer.okta.com/docs/reference/telephony-hook/). Okta alternates between SMS providers with every resend request to ensure delivery of SMS and Call OTPs across different carriers.<br /><br />&gt; **Note:** Resend operations aren't allowed after a factor exceeds the activation rate limit. See [Activate a factor]https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UserFactor/.</td>
</tr>
<tr>
    <td><a href="#verify_factor"><CopyableCode code="verify_factor" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-factorId"><code>factorId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-templateId"><code>templateId</code></a>, <a href="#parameter-tokenLifetimeSeconds"><code>tokenLifetimeSeconds</code></a>, <a href="#parameter-X-Forwarded-For"><code>X-Forwarded-For</code></a>, <a href="#parameter-User-Agent"><code>User-Agent</code></a>, <a href="#parameter-Accept-Language"><code>Accept-Language</code></a></td>
    <td>Verifies an OTP for a factor. Some factors (`call`, `email`, `push`, `sms`, `u2f`, and `webauthn`) must first issue a challenge before you can verify the factor. Do this by making a request without a body. After a challenge is issued, make another request to verify the factor.<br /><br />&gt; **Notes:**<br />&gt; - You can send standard push challenges or number matching push challenges to Okta Verify `push` factor enrollments. Use a [request body](https://developer.okta.com/docs/api/openapi/okta-management/management/userfactor/verifyfactor!path=2/useNumberMatchingChallenge&t=request) for number matching push challenges.<br />&gt; - To verify a `push` factor, use the **poll** link returned when you issue the challenge. See [Retrieve a factor transaction status](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/userfactor/other/getfactortransactionstatus).</td>
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
<tr id="parameter-factorId">
    <td><CopyableCode code="factorId" /></td>
    <td><code>string</code></td>
    <td>ID of an existing user factor</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-transactionId">
    <td><CopyableCode code="transactionId" /></td>
    <td><code>string</code></td>
    <td>ID of an existing factor verification transaction</td>
</tr>
<tr id="parameter-userId">
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>ID of an existing Okta user</td>
</tr>
<tr id="parameter-Accept-Language">
    <td><CopyableCode code="Accept-Language" /></td>
    <td><code>string</code></td>
    <td>An ISO 639-1 two-letter language code that defines a localized message to send. This parameter is only used by `sms` factors. If a localized message doesn't exist or the `templateId` is incorrect, the default template is used instead.</td>
</tr>
<tr id="parameter-User-Agent">
    <td><CopyableCode code="User-Agent" /></td>
    <td><code>string</code></td>
    <td>Type of user agent detected when the request is made. Required to verify `push` factors.</td>
</tr>
<tr id="parameter-X-Forwarded-For">
    <td><CopyableCode code="X-Forwarded-For" /></td>
    <td><code>string</code></td>
    <td>Public IP address for the user agent</td>
</tr>
<tr id="parameter-activate">
    <td><CopyableCode code="activate" /></td>
    <td><code>string</code></td>
    <td>If `true`, the factor is immediately activated as part of the enrollment. An activation process isn't required. Currently auto-activation is supported by `sms`, `call`, `email` and `token:hotp` (Custom TOTP) factors.</td>
</tr>
<tr id="parameter-removeRecoveryEnrollment">
    <td><CopyableCode code="removeRecoveryEnrollment" /></td>
    <td><code>string</code></td>
    <td>If `true`, removes the phone number as both a recovery method and a factor. This parameter is only used for the `sms` and `call` factors.</td>
</tr>
<tr id="parameter-templateId">
    <td><CopyableCode code="templateId" /></td>
    <td><code>string</code></td>
    <td>ID of an existing custom SMS template. See the [SMS Templates API]https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Template/. This parameter is only used by `sms` factors.</td>
</tr>
<tr id="parameter-tokenLifetimeSeconds">
    <td><CopyableCode code="tokenLifetimeSeconds" /></td>
    <td><code>integer (int32)</code></td>
    <td>Defines how long the token remains valid</td>
</tr>
<tr id="parameter-updatePhone">
    <td><CopyableCode code="updatePhone" /></td>
    <td><code>string</code></td>
    <td>If `true`, indicates that you are replacing the currently registered phone number for the specified user. This parameter is ignored if the existing phone number is used by an activated factor.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_factor_transaction_status"
    values={[
        { label: 'get_factor_transaction_status', value: 'get_factor_transaction_status' },
        { label: 'get_factor', value: 'get_factor' },
        { label: 'list_factors', value: 'list_factors' }
    ]}
>
<TabItem value="get_factor_transaction_status">

Retrieves the status of a `push` factor verification transaction<br /><br /> &gt; **Note:**<br /> &gt; The response body for a number matching push challenge to an Okta Verify `push` factor enrollment is different from the response body of a standard push challenge.<br /> &gt; The number matching push challenge [response body](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/userfactor/other/getfactortransactionstatus!c=200&path=1/_embedded&t=response) contains the correct answer for the challenge.<br /> &gt; Use [Verify a factor](https://developer.okta.com/docs/api/openapi/okta-management/management/userfactor/verifyfactor) to configure which challenge is sent.

```sql
SELECT
factorResult
FROM okta.users.factors
WHERE userId = '{{ userId }}' -- required
AND factorId = '{{ factorId }}' -- required
AND transactionId = '{{ transactionId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="get_factor">

Retrieves an existing factor for the specified user

```sql
SELECT
id,
_embedded,
_links,
created,
factorType,
lastUpdated,
profile,
provider,
status,
vendorName
FROM okta.users.factors
WHERE userId = '{{ userId }}' -- required
AND factorId = '{{ factorId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_factors">

Lists all enrolled factors for the specified user that are included in the highest priority [authenticator enrollment policy](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/policy/) that applies to the user.<br /><br />Only enrolled factors that are `REQUIRED` or `OPTIONAL` in the highest priority authenticator enrollment policy can be returned.<br /><br />&gt; **Note:** When admins use this endpoint for other users, the authenticator enrollment policy that's evaluated can vary depending on how client-specific conditions are configured in the rules of an authenticator enrollment policy. The client-specific conditions of the admin's client are used during policy evaluation instead of the client-specific conditions of the user. This can affect which authenticator enrollment policy is evaluated and which factors are returned.<br />&gt;<br />&gt; For example, an admin in Europe lists all enrolled factors for a user in North America. The network zone of the admin's client (in Europe) is used during policy evaluation instead of the network zone of the user (in North America).

```sql
SELECT
id,
_embedded,
_links,
created,
factorType,
lastUpdated,
profile,
provider,
status,
vendorName
FROM okta.users.factors
WHERE userId = '{{ userId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="enroll_factor"
    values={[
        { label: 'enroll_factor', value: 'enroll_factor' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="enroll_factor">

Enrolls a supported factor for the specified user<br /><br />&gt; **Notes:**<br />&gt;   * All responses return the enrolled factor with a status of either `PENDING_ACTIVATION` or `ACTIVE`.<br />&gt;   * You can't use the Factors API to enroll Okta FastPass (`signed_nonce`) for a user. See [Configure Okta FastPass](https://help.okta.com/okta_help.htm?type=oie&id=ext-fp-configure).<br /><br />#### Additional SMS/Call factor information<br /><br />* **Rate limits**: Okta may return a `429 Too Many Requests` status code if you attempt to resend an SMS or a voice call challenge (OTP) within the same time window. The current [rate limit](https://developer.okta.com/docs/reference/rate-limits/) is one SMS/CALL challenge per phone number every 30 seconds.<br /><br />* **Existing phone numbers**: Okta may return a `400 Bad Request` status code if a user attempts to enroll with a different phone number when the user has an existing mobile phone or has an existing phone with voice call capability. A user can enroll only one mobile phone for `sms` and enroll only one voice call capable phone for `call` factor.<br /><br />#### Additional WebAuthn factor information<br /><br />* For detailed information on the WebAuthn standard, including an up-to-date list of supported browsers, see [webauthn.me](https://a0.to/webauthnme-okta-docs).<br /><br />* When you enroll a WebAuthn factor, the `activation` object in `_embedded` contains properties used to help the client to create a new WebAuthn credential for use with Okta. See the [WebAuthn spec for PublicKeyCredentialCreationOptions](https://www.w3.org/TR/webauthn/#dictionary-makecredentialoptions).<br /><br />* As of the `2026.04.0` release, the FIDO2 (WebAuthn) authenticator is now called Passkey (FIDO2 WebAuthn) and there are new settings and updates to the authenticator page layout. There have been no changes to any existing parameter names, values, or endpoint paths. For example, the `factorType` for the Passkey (FIDO2 WebAuthn) authenticator is still `webauthn`. See [Passkeys and WebAuthn](https://developer.okta.com/docs/guides/authenticators-web-authn/aspnet/main/#passkeys-and-webauthn).<br /><br /><br />#### Additional Custom TOTP factor information<br /><br />* The enrollment process involves passing both the `factorProfileId` and `sharedSecret` properties for a token.<br /><br />* A factor profile represents a particular configuration of the Custom TOTP factor. It includes certain properties that match the hardware token that end users possess, such as the HMAC algorithm, passcode length, and time interval. There can be multiple Custom TOTP factor profiles per org, but users can only enroll in one Custom TOTP factor. Admins can [create Custom TOTP factor profiles](https://help.okta.com/okta_help.htm?id=ext-mfa-totp) in the Admin Console. Then, copy the `factorProfileId` from the Admin Console into the API request.<br /><br />* &lt;x-lifecycle class="oie"&gt;&lt;/x-lifecycle&gt;<br />For Custom TOTP enrollment, Okta automaticaly enrolls a user with a `token:software:totp` factor and the `push` factor if the user isn't currently enrolled with these factors.

```sql
INSERT INTO okta.users.factors (
factorType,
profile,
provider,
userId,
subdomain,
updatePhone,
templateId,
tokenLifetimeSeconds,
activate,
Accept-Language
)
SELECT 
'{{ factorType }}',
'{{ profile }}',
'{{ provider }}',
'{{ userId }}',
'{{ subdomain }}',
'{{ updatePhone }}',
'{{ templateId }}',
'{{ tokenLifetimeSeconds }}',
'{{ activate }}',
'{{ Accept-Language }}'
RETURNING
id,
_embedded,
_links,
created,
factorType,
lastUpdated,
profile,
provider,
status,
vendorName
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: factors
  props:
    - name: userId
      value: "{{ userId }}"
      description: Required parameter for the factors resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the factors resource.
    - name: factorType
      value: "{{ factorType }}"
      description: |
        Type of factor
      valid_values: ['call', 'email', 'push', 'question', 'signed_nonce', 'sms', 'token', 'token:hardware', 'token:hotp', 'token:software:totp', 'u2f', 'web', 'webauthn']
    - name: profile
      value: "{{ profile }}"
      description: |
        Specific attributes related to the factor (opaque JSON object)
    - name: provider
      value: "{{ provider }}"
      description: |
        Provider for the factor. Each provider can support a subset of factor types.
    - name: updatePhone
      value: "{{ updatePhone }}"
      description: If \`true\`, indicates that you are replacing the currently registered phone number for the specified user. This parameter is ignored if the existing phone number is used by an activated factor.
      description: If \`true\`, indicates that you are replacing the currently registered phone number for the specified user. This parameter is ignored if the existing phone number is used by an activated factor.
    - name: templateId
      value: "{{ templateId }}"
      description: ID of an existing custom SMS template. See the [SMS Templates API]https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Template/. This parameter is only used by \`sms\` factors. If the provided ID doesn't exist, the default template is used instead.
      description: ID of an existing custom SMS template. See the [SMS Templates API]https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Template/. This parameter is only used by \`sms\` factors. If the provided ID doesn't exist, the default template is used instead.
    - name: tokenLifetimeSeconds
      value: "{{ tokenLifetimeSeconds }}"
      description: Defines how long the token remains valid
      description: Defines how long the token remains valid
    - name: activate
      value: "{{ activate }}"
      description: If \`true\`, the factor is immediately activated as part of the enrollment. An activation process isn't required. Currently auto-activation is supported by \`sms\`, \`call\`, \`email\` and \`token:hotp\` (Custom TOTP) factors.
      description: If \`true\`, the factor is immediately activated as part of the enrollment. An activation process isn't required. Currently auto-activation is supported by \`sms\`, \`call\`, \`email\` and \`token:hotp\` (Custom TOTP) factors.
    - name: Accept-Language
      value: "{{ Accept-Language }}"
      description: An ISO 639-1 two-letter language code that defines a localized message to send. This parameter is only used by \`sms\` factors. If a localized message doesn't exist or the \`templateId\` is incorrect, the default template is used instead.
      description: An ISO 639-1 two-letter language code that defines a localized message to send. This parameter is only used by \`sms\` factors. If a localized message doesn't exist or the \`templateId\` is incorrect, the default template is used instead.
`}</CodeBlock>

</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="unenroll_factor"
    values={[
        { label: 'unenroll_factor', value: 'unenroll_factor' }
    ]}
>
<TabItem value="unenroll_factor">

Unenrolls an existing factor for the specified user. You can't unenroll a factor from a deactivated user. Unenrolling a factor allows the user to enroll a new factor.<br /><br />&gt; **Note:** If you unenroll the `push` or the `signed_nonce` factors, Okta also unenrolls any other `totp`, `signed_nonce`, or Okta Verify `push` factors associated with the user.

```sql
DELETE FROM okta.users.factors
WHERE userId = '{{ userId }}' --required
AND factorId = '{{ factorId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND removeRecoveryEnrollment = '{{ removeRecoveryEnrollment }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_factor"
    values={[
        { label: 'activate_factor', value: 'activate_factor' },
        { label: 'resend_enroll_factor', value: 'resend_enroll_factor' },
        { label: 'verify_factor', value: 'verify_factor' }
    ]}
>
<TabItem value="activate_factor">

Activates a factor. Some factors (`call`, `email`, `push`, `sms`, `token:software:totp`, `u2f`, and `webauthn`) require activation to complete the enrollment process.<br /><br />Okta enforces a rate limit of five activation attempts within five minutes. After a user exceeds the rate limit, Okta returns an error message.<br /><br />&gt; **Notes:**<br />&gt; * If the user exceeds their SMS, call, or email factor activation rate limit, then an [OTP resend request]https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UserFactor/ isn't allowed for the same factor.<br />&gt; * You can't use the Factors API to activate Okta FastPass (`signed_nonce`) for a user. See [Configure Okta FastPass](https://help.okta.com/okta_help.htm?type=oie&id=ext-fp-configure).

```sql
EXEC okta.users.factors.activate_factor 
@userId='{{ userId }}' --required, 
@factorId='{{ factorId }}' --required, 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"passCode": "{{ passCode }}", 
"useNumberMatchingChallenge": {{ useNumberMatchingChallenge }}, 
"clientData": "{{ clientData }}", 
"registrationData": "{{ registrationData }}", 
"attestation": "{{ attestation }}"
}'
;
```
</TabItem>
<TabItem value="resend_enroll_factor">

Resends an `sms`, `call`, or `email` factor challenge as part of an enrollment flow.<br /><br />For `call` and `sms` factors, Okta enforces a rate limit of one OTP challenge per device every 30 seconds. You can configure your `sms` and `call` factors to use a third-party telephony provider. See the [Telephony inline hook reference](https://developer.okta.com/docs/reference/telephony-hook/). Okta alternates between SMS providers with every resend request to ensure delivery of SMS and Call OTPs across different carriers.<br /><br />&gt; **Note:** Resend operations aren't allowed after a factor exceeds the activation rate limit. See [Activate a factor]https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UserFactor/.

```sql
EXEC okta.users.factors.resend_enroll_factor 
@userId='{{ userId }}' --required, 
@factorId='{{ factorId }}' --required, 
@subdomain='{{ subdomain }}' --required, 
@templateId='{{ templateId }}' 
@@json=
'{
"factorType": "{{ factorType }}"
}'
;
```
</TabItem>
<TabItem value="verify_factor">

Verifies an OTP for a factor. Some factors (`call`, `email`, `push`, `sms`, `u2f`, and `webauthn`) must first issue a challenge before you can verify the factor. Do this by making a request without a body. After a challenge is issued, make another request to verify the factor.<br /><br />&gt; **Notes:**<br />&gt; - You can send standard push challenges or number matching push challenges to Okta Verify `push` factor enrollments. Use a [request body](https://developer.okta.com/docs/api/openapi/okta-management/management/userfactor/verifyfactor!path=2/useNumberMatchingChallenge&t=request) for number matching push challenges.<br />&gt; - To verify a `push` factor, use the **poll** link returned when you issue the challenge. See [Retrieve a factor transaction status](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/userfactor/other/getfactortransactionstatus).

```sql
EXEC okta.users.factors.verify_factor 
@userId='{{ userId }}' --required, 
@factorId='{{ factorId }}' --required, 
@subdomain='{{ subdomain }}' --required, 
@templateId='{{ templateId }}', 
@tokenLifetimeSeconds='{{ tokenLifetimeSeconds }}', 
@X-Forwarded-For='{{ X-Forwarded-For }}', 
@User-Agent='{{ User-Agent }}', 
@Accept-Language='{{ Accept-Language }}' 
@@json=
'{
"passCode": "{{ passCode }}", 
"useNumberMatchingChallenge": {{ useNumberMatchingChallenge }}, 
"answer": "{{ answer }}", 
"clientData": "{{ clientData }}", 
"signatureData": "{{ signatureData }}", 
"authenticatorData": "{{ authenticatorData }}"
}'
;
```
</TabItem>
</Tabs>
