--- 
title: identity_providers
hide_title: false
hide_table_of_contents: false
keywords:
  - identity_providers
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

Creates, updates, deletes, gets or lists an <code>identity_providers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="identity_providers" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.users.identity_providers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_user_identity_providers"
    values={[
        { label: 'list_user_identity_providers', value: 'list_user_identity_providers' }
    ]}
>
<TabItem value="list_user_identity_providers">

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
    <td>Unique key for the IdP (example: 0oaWma58liwx40w6boYD)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Unique name for the IdP (example: Sample IdP)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="issuerMode" /></td>
    <td><code>string</code></td>
    <td>Indicates whether Okta uses the original Okta org domain URL or a custom domain URL in the request to the social IdP (CUSTOM_URL, DYNAMIC, ORG_URL) (default: DYNAMIC)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="policy" /></td>
    <td><code>object</code></td>
    <td>Policy settings for the IdP. The following provisioning and account linking actions are supported by each IdP provider: | IdP type                                                           | User provisioning actions | Group provisioning actions            | Account link actions | Account link filters | | -----------------------------------------------------------------  | ------------------------- | ------------------------------------- | -------------------- | -------------------- | | `SAML2`                                                            | `AUTO` or `DISABLED`      | `NONE`, `ASSIGN`, `APPEND`, or `SYNC` | `AUTO`, `DISABLED`   | `groups`, `users`    | | `X509`, `IDV_PERSONA`, `IDV_INCODE`, `IDV_CLEAR` and `IDV_STANDARD`| `DISABLED`                | No support for JIT provisioning       |                      |                      | | All other IdP types                                                | `AUTO`, `DISABLED`        | `NONE` or `ASSIGN`                    | `AUTO`, `DISABLED`   | `groups`, `users`    |</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties in the IdP `properties` object vary depending on the IdP type</td>
</tr>
<tr>
    <td><CopyableCode code="protocol" /></td>
    <td><code>object</code></td>
    <td>IdP-specific protocol settings for endpoints, bindings, and algorithms used to connect with the IdP and validate messages (title: SAML 2.0 Protocol)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td> (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The IdP object's `type` property identifies the social or enterprise IdP used for authentication.  Each IdP uses a specific protocol, therefore the `protocol` object must correspond with the IdP `type`.  If the protocol is OAuth 2.0-based, the `protocol` object's `scopes` property must also correspond with the scopes supported by the IdP `type`.  For policy actions supported by each IdP type, see [IdP type policy actions](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/IdentityProvider/#tag/IdentityProvider/operation/createIdentityProvider!path=policy&t=request).  | Type               | Description                                                                                                                                           | Corresponding protocol | Corresponding protocol scopes                                         | | ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------- | --------------------------------------------------------------------  | | `AMAZON`           | [Amazon](https://developer.amazon.com/settings/console/registration?return_to=/)&nbsp;as the IdP                                        | OpenID Connect         | `profile`, `profile:user_id`                                          | | `APPLE`            | [Apple](https://developer.apple.com/sign-in-with-apple/)&nbsp;as the IdP                                                                | OpenID Connect         | `names`, `email`, `openid`                                            | | `DISCORD`          | [Discord](https://discord.com/login)&nbsp;as the IdP                                                                                    | OAuth 2.0              | `identify`, `email`                                                   | | `FACEBOOK`         | [Facebook](https://developers.facebook.com)&nbsp;as the IdP                                                                             | OAuth 2.0              | `public_profile`, `email`                                             | | `GITHUB`           | [GitHub](https://github.com/join)&nbsp;as the IdP                                                                                       | OAuth 2.0              | `user`                                                                | | `GITLAB`           | [GitLab](https://gitlab.com/users/sign_in)&nbsp;as the IdP                                                                              | OpenID Connect         | `openid`, `read_user`, `profile`, `email`                             | | `GOOGLE`           | [Google](https://accounts.google.com/signup)&nbsp;as the IdP                                                                            | OpenID Connect         | `openid`, `email`, `profile`                                          | | `IDV_PERSONA`      | [Persona](https://app.withpersona.com/dashboard/login)&nbsp;as the IDV IdP                                                              | ID verification        |                                                                       | | `IDV_CLEAR`        | [CLEAR Verified](https://www.clearme.com/)&nbsp;as the IDV IdP                                                                          | ID verification        | `openid`, `profile`, `identity_assurance`                             | | `IDV_INCODE`       | [Incode](https://incode.com/)&nbsp;as the IDV IdP                                                                                       | ID verification        | `openid`, `profile`, `identity_assurance`                             | | `IDV_STANDARD` | Custom IDV&nbsp;as the IDV IdP                                                                                       | ID verification        | `openid`, `profile`, `identity_assurance`                             | | `LINKEDIN`         | [LinkedIn](https://developer.linkedin.com/)&nbsp;as the IdP                                                                             | OAuth 2.0              | `r_emailaddress`, `r_liteprofile`                                     | | `LOGINGOV`         | [Login.gov](https://developers.login.gov/)&nbsp;as the IdP                                                                              | OpenID Connect         | `email`, `profile`, `profile:name`                                    | | `LOGINGOV_SANDBOX` | [Login.gov's identity sandbox](https://developers.login.gov/testing/)&nbsp;as the IdP                                                   | OpenID Connect         | `email`, `profile`, `profile:name`                                    | | `MICROSOFT`        | [Microsoft Enterprise SSO](https://azure.microsoft.com/)&nbsp;as the IdP                                                                | OpenID Connect         | `openid`, `email`, `profile`, `https://graph.microsoft.com/User.Read` | | `OIDC`             | IdP that supports [OpenID Connect](https://openid.net/specs/openid-connect-core-1_0.html)                                               | OpenID Connect         | `openid`, `email`, `profile`                                          | | `PAYPAL`           | [Paypal](https://www.paypal.com/signin)&nbsp;as the IdP                                                                                 | OpenID Connect         | `openid`, `email`, `profile`                                          | | `PAYPAL_SANDBOX`   | [Paypal Sandbox](https://developer.paypal.com/tools/sandbox/)&nbsp;as the IdP                                                           | OpenID Connect         | `openid`, `email`, `profile`                                          | | `SALESFORCE`       | [SalesForce](https://login.salesforce.com/)&nbsp;as the IdP                                                                             | OAuth 2.0              | `id`, `email`, `profile`                                              | | `SAML2`            | Enterprise IdP that supports the [SAML 2.0 Web Browser SSO Profile](https://docs.oasis-open.org/security/saml/v2.0/saml-profiles-2.0-os.pdf)| SAML 2.0  |                                                                                | | `SPOTIFY`          | [Spotify](https://developer.spotify.com/)&nbsp;as the IdP                                                                               | OpenID Connect         | `user-read-email`, `user-read-private`                                | | `X509`             | [Smart Card IdP](https://tools.ietf.org/html/rfc5280)                                                                                   | Mutual TLS             |                                                                       | | `XERO`             | [Xero](https://www.xero.com/us/signup/api/)&nbsp;as the IdP                                                                             | OpenID Connect         | `openid`, `profile`, `email`                                          | | `YAHOO`            | [Yahoo](https://login.yahoo.com/)&nbsp;as the IdP                                                                                       | OpenID Connect         | `openid`, `profile`, `email`                                          | | `YAHOOJP`          | [Yahoo Japan](https://login.yahoo.co.jp/config/login)&nbsp;as the IdP                                                                   | OpenID Connect         | `openid`, `profile`, `email`                                          | | `OKTA_INTEGRATION`             | IdP that supports the [OpenID Connect](https://openid.net/specs/openid-connect-core-1_0.html) Org2Org IdP                                               | OpenID Connect         | `openid`, `email`, `profile`                                          | (AMAZON, APPLE, DISCORD, FACEBOOK, GITHUB, GITLAB, GOOGLE, IDV_CLEAR, IDV_INCODE, IDV_PERSONA, IDV_STANDARD, LINKEDIN, LOGINGOV, LOGINGOV_SANDBOX, MICROSOFT, OIDC, OKTA_INTEGRATION, PAYPAL, PAYPAL_SANDBOX, SALESFORCE, SAML2, SPOTIFY, X509, XERO, YAHOO, YAHOOJP)</td>
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
    <td><a href="#list_user_identity_providers"><CopyableCode code="list_user_identity_providers" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists the identity providers (IdPs) associated with the user</td>
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
<tr id="parameter-id">
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>An ID, login, or login shortname (as long as the shortname is unambiguous) of an existing Okta user</td>
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
    defaultValue="list_user_identity_providers"
    values={[
        { label: 'list_user_identity_providers', value: 'list_user_identity_providers' }
    ]}
>
<TabItem value="list_user_identity_providers">

Lists the identity providers (IdPs) associated with the user

```sql
SELECT
id,
name,
_links,
created,
issuerMode,
lastUpdated,
policy,
properties,
protocol,
status,
type
FROM okta.users.identity_providers
WHERE id = '{{ id }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
