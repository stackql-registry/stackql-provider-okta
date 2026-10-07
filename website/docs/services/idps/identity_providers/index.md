--- 
title: identity_providers
hide_title: false
hide_table_of_contents: false
keywords:
  - identity_providers
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

Creates, updates, deletes, gets or lists an <code>identity_providers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="identity_providers" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.idps.identity_providers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_identity_provider"
    values={[
        { label: 'get_identity_provider', value: 'get_identity_provider' },
        { label: 'list_identity_providers', value: 'list_identity_providers' }
    ]}
>
<TabItem value="get_identity_provider">

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
<TabItem value="list_identity_providers">

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
    <td><a href="#get_identity_provider"><CopyableCode code="get_identity_provider" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-idpId"><code>idpId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an identity provider (IdP) integration by `idpId`</td>
</tr>
<tr>
    <td><a href="#list_identity_providers"><CopyableCode code="list_identity_providers" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-q"><code>q</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td>Lists all identity provider (IdP) integrations with pagination. A subset of IdPs can be returned that match a supported filter expression or query.</td>
</tr>
<tr>
    <td><a href="#create_identity_provider"><CopyableCode code="create_identity_provider" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a new identity provider (IdP) integration.<br /><br />#### SAML 2.0 IdP<br /><br />You must first add the IdP's signature certificate to the IdP key store before you can add a SAML 2.0 IdP with a `kid` credential reference.<br /><br />Don't use `fromURI` to automatically redirect a user to a particular app after successfully authenticating with a third-party IdP. Instead, use SAML deep links. Using `fromURI` isn't tested or supported. For more information about using deep links when signing users in using an SP-initiated flow, see [Understanding SP-Initiated Login flow](https://developer.okta.com/docs/concepts/saml/#understanding-sp-initiated-login-flow).<br /><br />Use SAML deep links to automatically redirect the user to an app after successfully authenticating with a third-party IdP. To use deep links, assemble these three parts into a URL:<br /><br />* SP ACS URL<br /><br />For example: `https://$&#123;yourOktaDomain&#125;/sso/saml2/:idpId`<br />* The app to which the user is automatically redirected after successfully authenticating with the IdP <br /><br />For example: `/app/:app-location/:appId/sso/saml`<br />* Optionally, if the app is an outbound SAML app, you can specify the `relayState` passed to it.<br /><br />For example: `?RelayState=:anyUrlEncodedValue`<br /><br />The deep link for the above three parts is:<br /><br />`https://$&#123;yourOktaDomain&#125;/sso/saml2/:idpId/app/:app-location/:appId/sso/saml?RelayState=:anyUrlEncodedValue`<br /><br />#### Smart Card X509 IdP<br /><br />You must first add the IdP's server certificate to the IdP key store before you can add a Smart Card `X509` IdP with a `kid` credential reference.<br />You need to upload the whole trust chain as a single key using the [Key Store API](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/IdentityProviderKeys/#tag/IdentityProviderKeys/operation/createIdentityProviderKey).<br />Depending on the information stored in the smart card, select the proper [template](https://developer.okta.com/docs/reference/okta-expression-language/#idp-user-profile) `idpuser.subjectAltNameEmail` or `idpuser.subjectAltNameUpn`.<br /><br />#### Identity verification vendors as identity providers<br /><br />Identity verification (IDV) vendors work like IdPs, with a few key differences. IDV vendors verify your user's identities by requiring them to submit a proof of identity. There are many ways to verify user identities. For example, a proof of identity can be a selfie to determine liveliness or it can be requiring users to submit a photo of their driver's license and matching that information with a database.<br /><br />There are three IDV vendors (Persona, CLEAR Verified, and Incode) with specific configuration settings and another IDV vendor type (Custom IDV) that lets you create a custom IDV vendor, using a [standardized IDV process](https://developer.okta.com/docs/guides/idv-integration/main/). You can configure each of the IDV vendors as IdPs in your org by creating an account with the vendor, and then creating an IdP integration. Control how the IDVs verify your users by using [Okta account management policy rules](https://developer.okta.com/docs/guides/okta-account-management-policy/main/).<br /><br />* [Persona](https://withpersona.com/)<br /><br />* [CLEAR Verified](https://www.clearme.com/)<br /><br />* [Incode](https://incode.com/)<br /><br />* [Custom IDV](https://help.okta.com/okta_help.htm?type=oie&id=idp-add-custom-idv-vendor)</td>
</tr>
<tr>
    <td><a href="#replace_identity_provider"><CopyableCode code="replace_identity_provider" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-idpId"><code>idpId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces an identity provider (IdP) integration by `idpId`</td>
</tr>
<tr>
    <td><a href="#delete_identity_provider"><CopyableCode code="delete_identity_provider" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-idpId"><code>idpId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an identity provider (IdP) integration by `idpId`<br />* All existing IdP users are unlinked with the highest order profile source taking precedence for each IdP user.<br />* Unlinked users keep their existing authentication provider such as `FEDERATION` or `SOCIAL`.</td>
</tr>
<tr>
    <td><a href="#activate_identity_provider"><CopyableCode code="activate_identity_provider" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-idpId"><code>idpId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates an inactive identity provider (IdP)</td>
</tr>
<tr>
    <td><a href="#deactivate_identity_provider"><CopyableCode code="deactivate_identity_provider" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-idpId"><code>idpId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates an active identity provider (IdP)</td>
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
<tr id="parameter-q">
    <td><CopyableCode code="q" /></td>
    <td><code>string</code></td>
    <td>Searches the `name` property of IdPs for matching value (example: Example SAML)</td>
</tr>
<tr id="parameter-type">
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Filters IdPs by `type`</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_identity_provider"
    values={[
        { label: 'get_identity_provider', value: 'get_identity_provider' },
        { label: 'list_identity_providers', value: 'list_identity_providers' }
    ]}
>
<TabItem value="get_identity_provider">

Retrieves an identity provider (IdP) integration by `idpId`

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
FROM okta.idps.identity_providers
WHERE idpId = '{{ idpId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_identity_providers">

Lists all identity provider (IdP) integrations with pagination. A subset of IdPs can be returned that match a supported filter expression or query.

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
FROM okta.idps.identity_providers
WHERE subdomain = '{{ subdomain }}' -- required
AND q = '{{ q }}'
AND after = '{{ after }}'
AND limit = '{{ limit }}'
AND type = '{{ type }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_identity_provider"
    values={[
        { label: 'create_identity_provider', value: 'create_identity_provider' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_identity_provider">

Creates a new identity provider (IdP) integration.<br /><br />#### SAML 2.0 IdP<br /><br />You must first add the IdP's signature certificate to the IdP key store before you can add a SAML 2.0 IdP with a `kid` credential reference.<br /><br />Don't use `fromURI` to automatically redirect a user to a particular app after successfully authenticating with a third-party IdP. Instead, use SAML deep links. Using `fromURI` isn't tested or supported. For more information about using deep links when signing users in using an SP-initiated flow, see [Understanding SP-Initiated Login flow](https://developer.okta.com/docs/concepts/saml/#understanding-sp-initiated-login-flow).<br /><br />Use SAML deep links to automatically redirect the user to an app after successfully authenticating with a third-party IdP. To use deep links, assemble these three parts into a URL:<br /><br />* SP ACS URL<br /><br />For example: `https://$&#123;yourOktaDomain&#125;/sso/saml2/:idpId`<br />* The app to which the user is automatically redirected after successfully authenticating with the IdP <br /><br />For example: `/app/:app-location/:appId/sso/saml`<br />* Optionally, if the app is an outbound SAML app, you can specify the `relayState` passed to it.<br /><br />For example: `?RelayState=:anyUrlEncodedValue`<br /><br />The deep link for the above three parts is:<br /><br />`https://$&#123;yourOktaDomain&#125;/sso/saml2/:idpId/app/:app-location/:appId/sso/saml?RelayState=:anyUrlEncodedValue`<br /><br />#### Smart Card X509 IdP<br /><br />You must first add the IdP's server certificate to the IdP key store before you can add a Smart Card `X509` IdP with a `kid` credential reference.<br />You need to upload the whole trust chain as a single key using the [Key Store API](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/IdentityProviderKeys/#tag/IdentityProviderKeys/operation/createIdentityProviderKey).<br />Depending on the information stored in the smart card, select the proper [template](https://developer.okta.com/docs/reference/okta-expression-language/#idp-user-profile) `idpuser.subjectAltNameEmail` or `idpuser.subjectAltNameUpn`.<br /><br />#### Identity verification vendors as identity providers<br /><br />Identity verification (IDV) vendors work like IdPs, with a few key differences. IDV vendors verify your user's identities by requiring them to submit a proof of identity. There are many ways to verify user identities. For example, a proof of identity can be a selfie to determine liveliness or it can be requiring users to submit a photo of their driver's license and matching that information with a database.<br /><br />There are three IDV vendors (Persona, CLEAR Verified, and Incode) with specific configuration settings and another IDV vendor type (Custom IDV) that lets you create a custom IDV vendor, using a [standardized IDV process](https://developer.okta.com/docs/guides/idv-integration/main/). You can configure each of the IDV vendors as IdPs in your org by creating an account with the vendor, and then creating an IdP integration. Control how the IDVs verify your users by using [Okta account management policy rules](https://developer.okta.com/docs/guides/okta-account-management-policy/main/).<br /><br />* [Persona](https://withpersona.com/)<br /><br />* [CLEAR Verified](https://www.clearme.com/)<br /><br />* [Incode](https://incode.com/)<br /><br />* [Custom IDV](https://help.okta.com/okta_help.htm?type=oie&id=idp-add-custom-idv-vendor)

```sql
INSERT INTO okta.idps.identity_providers (
issuerMode,
name,
policy,
properties,
protocol,
status,
type,
subdomain
)
SELECT 
'{{ issuerMode }}',
'{{ name }}',
'{{ policy }}',
'{{ properties }}',
'{{ protocol }}',
'{{ status }}',
'{{ type }}',
'{{ subdomain }}'
RETURNING
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
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: identity_providers
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the identity_providers resource.
    - name: issuerMode
      value: "{{ issuerMode }}"
      description: |
        Indicates whether Okta uses the original Okta org domain URL or a custom domain URL in the request to the social IdP
      valid_values: ['CUSTOM_URL', 'DYNAMIC', 'ORG_URL']
      default: DYNAMIC
    - name: name
      value: "{{ name }}"
      description: |
        Unique name for the IdP
    - name: policy
      description: |
        Policy settings for the IdP.
        The following provisioning and account linking actions are supported by each IdP provider:
        | IdP type                                                           | User provisioning actions | Group provisioning actions            | Account link actions | Account link filters |
        | -----------------------------------------------------------------  | ------------------------- | ------------------------------------- | -------------------- | -------------------- |
        | \`SAML2\`                                                            | \`AUTO\` or \`DISABLED\`      | \`NONE\`, \`ASSIGN\`, \`APPEND\`, or \`SYNC\` | \`AUTO\`, \`DISABLED\`   | \`groups\`, \`users\`    |
        | \`X509\`, \`IDV_PERSONA\`, \`IDV_INCODE\`, \`IDV_CLEAR\` and \`IDV_STANDARD\`| \`DISABLED\`                | No support for JIT provisioning       |                      |                      |
        | All other IdP types                                                | \`AUTO\`, \`DISABLED\`        | \`NONE\` or \`ASSIGN\`                    | \`AUTO\`, \`DISABLED\`   | \`groups\`, \`users\`    |
      value:
        accountLink:
          action: "{{ action }}"
          filter:
            groups:
              include:
                - "{{ include }}"
            users:
              exclude:
                - "{{ exclude }}"
              excludeAdmins: {{ excludeAdmins }}
        maxClockSkew: {{ maxClockSkew }}
        trustClaims: {{ trustClaims }}
        provisioning:
          action: "{{ action }}"
          conditions:
            deprovisioned:
              action: "{{ action }}"
            suspended:
              action: "{{ action }}"
          groups:
            action: "{{ action }}"
            assignments:
              - "{{ assignments }}"
            filter:
              - "{{ filter }}"
            sourceAttributeName: "{{ sourceAttributeName }}"
          profileMaster: {{ profileMaster }}
        subject:
          filter: "{{ filter }}"
          matchAttribute: "{{ matchAttribute }}"
          matchType: "{{ matchType }}"
          userNameTemplate:
            template: "{{ template }}"
    - name: properties
      description: |
        The properties in the IdP \`properties\` object vary depending on the IdP type
      value:
        aalValue: "{{ aalValue }}"
        additionalAmr:
          - "{{ additionalAmr }}"
        allowDynamicUserMatching: {{ allowDynamicUserMatching }}
        allowUserUpdates: {{ allowUserUpdates }}
        ialValue: "{{ ialValue }}"
        idvMetadata:
          vendorDisplayName: "{{ vendorDisplayName }}"
          termsOfUse: "{{ termsOfUse }}"
          privacyPolicy: "{{ privacyPolicy }}"
        inquiryTemplateId: "{{ inquiryTemplateId }}"
    - name: protocol
      description: |
        IdP-specific protocol settings for endpoints, bindings, and algorithms used to connect with the IdP and validate messages
      value:
        algorithms:
          request:
            digest: "{{ digest }}"
            signature:
              algorithm: "{{ algorithm }}"
              scope: "{{ scope }}"
          response:
            signature:
              algorithm: "{{ algorithm }}"
              scope: "{{ scope }}"
        credentials:
          signing:
            kid: "{{ kid }}"
          trust:
            additionalKids:
              - "{{ additionalKids }}"
            audience: "{{ audience }}"
            issuer: "{{ issuer }}"
            kid: "{{ kid }}"
        endpoints:
          acs:
            binding: "{{ binding }}"
            type: "{{ type }}"
          slo:
            binding: "{{ binding }}"
            url: "{{ url }}"
          sso:
            binding: "{{ binding }}"
            destination: "{{ destination }}"
            url: "{{ url }}"
        relayState:
          format: "{{ format }}"
        settings:
          honorPersistentNameId: {{ honorPersistentNameId }}
          nameFormat: "{{ nameFormat }}"
          participateSlo: {{ participateSlo }}
          sendApplicationContext: {{ sendApplicationContext }}
        type: "{{ type }}"
        scopes:
          - "{{ scopes }}"
        issuer:
          url: "{{ url }}"
        oktaIdpOrgUrl: "{{ oktaIdpOrgUrl }}"
    - name: status
      value: "{{ status }}"
      valid_values: ['ACTIVE', 'INACTIVE']
    - name: type
      value: "{{ type }}"
      description: |
        The IdP object's \`type\` property identifies the social or enterprise IdP used for authentication.
        Each IdP uses a specific protocol, therefore the \`protocol\` object must correspond with the IdP \`type\`.
        If the protocol is OAuth 2.0-based, the \`protocol\` object's \`scopes\` property must also correspond with the scopes supported by the IdP \`type\`.
        For policy actions supported by each IdP type, see [IdP type policy actions](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/IdentityProvider/#tag/IdentityProvider/operation/createIdentityProvider!path=policy&t=request).
        | Type               | Description                                                                                                                                           | Corresponding protocol | Corresponding protocol scopes                                         |
        | ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------- | --------------------------------------------------------------------  |
        | \`AMAZON\`           | [Amazon](https://developer.amazon.com/settings/console/registration?return_to=/)&nbsp;as the IdP                                        | OpenID Connect         | \`profile\`, \`profile:user_id\`                                          |
        | \`APPLE\`            | [Apple](https://developer.apple.com/sign-in-with-apple/)&nbsp;as the IdP                                                                | OpenID Connect         | \`names\`, \`email\`, \`openid\`                                            |
        | \`DISCORD\`          | [Discord](https://discord.com/login)&nbsp;as the IdP                                                                                    | OAuth 2.0              | \`identify\`, \`email\`                                                   |
        | \`FACEBOOK\`         | [Facebook](https://developers.facebook.com)&nbsp;as the IdP                                                                             | OAuth 2.0              | \`public_profile\`, \`email\`                                             |
        | \`GITHUB\`           | [GitHub](https://github.com/join)&nbsp;as the IdP                                                                                       | OAuth 2.0              | \`user\`                                                                |
        | \`GITLAB\`           | [GitLab](https://gitlab.com/users/sign_in)&nbsp;as the IdP                                                                              | OpenID Connect         | \`openid\`, \`read_user\`, \`profile\`, \`email\`                             |
        | \`GOOGLE\`           | [Google](https://accounts.google.com/signup)&nbsp;as the IdP                                                                            | OpenID Connect         | \`openid\`, \`email\`, \`profile\`                                          |
        | \`IDV_PERSONA\`      | [Persona](https://app.withpersona.com/dashboard/login)&nbsp;as the IDV IdP                                                              | ID verification        |                                                                       |
        | \`IDV_CLEAR\`        | [CLEAR Verified](https://www.clearme.com/)&nbsp;as the IDV IdP                                                                          | ID verification        | \`openid\`, \`profile\`, \`identity_assurance\`                             |
        | \`IDV_INCODE\`       | [Incode](https://incode.com/)&nbsp;as the IDV IdP                                                                                       | ID verification        | \`openid\`, \`profile\`, \`identity_assurance\`                             |
        | \`IDV_STANDARD\` | Custom IDV&nbsp;as the IDV IdP                                                                                       | ID verification        | \`openid\`, \`profile\`, \`identity_assurance\`                             |
        | \`LINKEDIN\`         | [LinkedIn](https://developer.linkedin.com/)&nbsp;as the IdP                                                                             | OAuth 2.0              | \`r_emailaddress\`, \`r_liteprofile\`                                     |
        | \`LOGINGOV\`         | [Login.gov](https://developers.login.gov/)&nbsp;as the IdP                                                                              | OpenID Connect         | \`email\`, \`profile\`, \`profile:name\`                                    |
        | \`LOGINGOV_SANDBOX\` | [Login.gov's identity sandbox](https://developers.login.gov/testing/)&nbsp;as the IdP                                                   | OpenID Connect         | \`email\`, \`profile\`, \`profile:name\`                                    |
        | \`MICROSOFT\`        | [Microsoft Enterprise SSO](https://azure.microsoft.com/)&nbsp;as the IdP                                                                | OpenID Connect         | \`openid\`, \`email\`, \`profile\`, \`https://graph.microsoft.com/User.Read\` |
        | \`OIDC\`             | IdP that supports [OpenID Connect](https://openid.net/specs/openid-connect-core-1_0.html)                                               | OpenID Connect         | \`openid\`, \`email\`, \`profile\`                                          |
        | \`PAYPAL\`           | [Paypal](https://www.paypal.com/signin)&nbsp;as the IdP                                                                                 | OpenID Connect         | \`openid\`, \`email\`, \`profile\`                                          |
        | \`PAYPAL_SANDBOX\`   | [Paypal Sandbox](https://developer.paypal.com/tools/sandbox/)&nbsp;as the IdP                                                           | OpenID Connect         | \`openid\`, \`email\`, \`profile\`                                          |
        | \`SALESFORCE\`       | [SalesForce](https://login.salesforce.com/)&nbsp;as the IdP                                                                             | OAuth 2.0              | \`id\`, \`email\`, \`profile\`                                              |
        | \`SAML2\`            | Enterprise IdP that supports the [SAML 2.0 Web Browser SSO Profile](https://docs.oasis-open.org/security/saml/v2.0/saml-profiles-2.0-os.pdf)| SAML 2.0  |                                                                                |
        | \`SPOTIFY\`          | [Spotify](https://developer.spotify.com/)&nbsp;as the IdP                                                                               | OpenID Connect         | \`user-read-email\`, \`user-read-private\`                                |
        | \`X509\`             | [Smart Card IdP](https://tools.ietf.org/html/rfc5280)                                                                                   | Mutual TLS             |                                                                       |
        | \`XERO\`             | [Xero](https://www.xero.com/us/signup/api/)&nbsp;as the IdP                                                                             | OpenID Connect         | \`openid\`, \`profile\`, \`email\`                                          |
        | \`YAHOO\`            | [Yahoo](https://login.yahoo.com/)&nbsp;as the IdP                                                                                       | OpenID Connect         | \`openid\`, \`profile\`, \`email\`                                          |
        | \`YAHOOJP\`          | [Yahoo Japan](https://login.yahoo.co.jp/config/login)&nbsp;as the IdP                                                                   | OpenID Connect         | \`openid\`, \`profile\`, \`email\`                                          |
        | \`OKTA_INTEGRATION\`             | IdP that supports the [OpenID Connect](https://openid.net/specs/openid-connect-core-1_0.html) Org2Org IdP                                               | OpenID Connect         | \`openid\`, \`email\`, \`profile\`                                          |
      valid_values: ['AMAZON', 'APPLE', 'DISCORD', 'FACEBOOK', 'GITHUB', 'GITLAB', 'GOOGLE', 'IDV_CLEAR', 'IDV_INCODE', 'IDV_PERSONA', 'IDV_STANDARD', 'LINKEDIN', 'LOGINGOV', 'LOGINGOV_SANDBOX', 'MICROSOFT', 'OIDC', 'OKTA_INTEGRATION', 'PAYPAL', 'PAYPAL_SANDBOX', 'SALESFORCE', 'SAML2', 'SPOTIFY', 'X509', 'XERO', 'YAHOO', 'YAHOOJP']
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_identity_provider"
    values={[
        { label: 'replace_identity_provider', value: 'replace_identity_provider' }
    ]}
>
<TabItem value="replace_identity_provider">

Replaces an identity provider (IdP) integration by `idpId`

```sql
REPLACE okta.idps.identity_providers
SET 
issuerMode = '{{ issuerMode }}',
name = '{{ name }}',
policy = '{{ policy }}',
properties = '{{ properties }}',
protocol = '{{ protocol }}',
status = '{{ status }}',
type = '{{ type }}'
WHERE 
idpId = '{{ idpId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
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
type;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_identity_provider"
    values={[
        { label: 'delete_identity_provider', value: 'delete_identity_provider' }
    ]}
>
<TabItem value="delete_identity_provider">

Deletes an identity provider (IdP) integration by `idpId`<br />* All existing IdP users are unlinked with the highest order profile source taking precedence for each IdP user.<br />* Unlinked users keep their existing authentication provider such as `FEDERATION` or `SOCIAL`.

```sql
DELETE FROM okta.idps.identity_providers
WHERE idpId = '{{ idpId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_identity_provider"
    values={[
        { label: 'activate_identity_provider', value: 'activate_identity_provider' },
        { label: 'deactivate_identity_provider', value: 'deactivate_identity_provider' }
    ]}
>
<TabItem value="activate_identity_provider">

Activates an inactive identity provider (IdP)

```sql
EXEC okta.idps.identity_providers.activate_identity_provider 
@idpId='{{ idpId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_identity_provider">

Deactivates an active identity provider (IdP)

```sql
EXEC okta.idps.identity_providers.deactivate_identity_provider 
@idpId='{{ idpId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
