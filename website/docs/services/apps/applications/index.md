--- 
title: applications
hide_title: false
hide_table_of_contents: false
keywords:
  - applications
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

Creates, updates, deletes, gets or lists an <code>applications</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="applications" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.apps.applications" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_application"
    values={[
        { label: 'get_application', value: 'get_application' },
        { label: 'list_applications', value: 'list_applications' }
    ]}
>
<TabItem value="get_application">

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
    <td>Unique ID for the app instance</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resources related to the app using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. If the `expand=user/&#123;userId&#125;` query parameter is specified, then the assigned [Application User](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/applicationusers) is embedded.</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Discoverable resources related to the app</td>
</tr>
<tr>
    <td><CopyableCode code="accessibility" /></td>
    <td><code>object</code></td>
    <td>Specifies access settings for the app</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the application object was created</td>
</tr>
<tr>
    <td><CopyableCode code="expressConfiguration" /></td>
    <td><code>object</code></td>
    <td>&lt;div class="x-lifecycle-container"&gt;&lt;x-lifecycle class="oie"&gt;&lt;/x-lifecycle&gt;&lt;/div&gt; Indicates which Express Configuration capabilities the app supports and has enabled</td>
</tr>
<tr>
    <td><CopyableCode code="features" /></td>
    <td><code>array</code></td>
    <td>Enabled app features &gt; **Note:** See [Application Features](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/applicationfeatures/) for app provisioning features. </td>
</tr>
<tr>
    <td><CopyableCode code="label" /></td>
    <td><code>string</code></td>
    <td>User-defined display name for app</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the application object was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="licensing" /></td>
    <td><code>object</code></td>
    <td>Licenses for the app</td>
</tr>
<tr>
    <td><CopyableCode code="orn" /></td>
    <td><code>string</code></td>
    <td>The Okta resource name (ORN) for the current app instance</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>Contains any valid JSON schema for specifying properties that can be referenced from a request (only available to OAuth 2.0 client apps). For example, add an app manager contact email address or define an allowlist of groups that you can then reference using the Okta Expression Language `getFilteredGroups` function.  &gt; **Notes:** &gt; * `profile` isn't encrypted, so don't store sensitive data in it. &gt; * `profile` doesn't limit the level of nesting in the JSON schema you created, but there is a practical size limit. Okta recommends a JSON schema size of 1 MB or less for best performance.</td>
</tr>
<tr>
    <td><CopyableCode code="signOnMode" /></td>
    <td><code>string</code></td>
    <td>Authentication mode for the app  | signOnMode | Description | | ---------- | ----------- | | AUTO_LOGIN | Secure Web Authentication (SWA) | | BASIC_AUTH | HTTP Basic Authentication with Okta Browser Plugin | | BOOKMARK | Just a bookmark (no-authentication) | | BROWSER_PLUGIN | Secure Web Authentication (SWA) with Okta Browser Plugin | | OPENID_CONNECT | Federated Authentication with OpenID Connect (OIDC) | | SAML_1_1 | Federated Authentication with SAML 1.1 WebSSO (not supported for custom apps) | | SAML_2_0 | Federated Authentication with SAML 2.0 WebSSO | | SECURE_PASSWORD_STORE | Secure Web Authentication (SWA) with POST (plugin not required) | | WS_FEDERATION | Federated Authentication with WS-Federation Passive Requestor Profile |  Select the `signOnMode` for your custom app:  (AUTO_LOGIN, BASIC_AUTH, BOOKMARK, BROWSER_PLUGIN, OPENID_CONNECT, SAML_1_1, SAML_2_0, SECURE_PASSWORD_STORE, WS_FEDERATION)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>App instance status (ACTIVE, DELETED, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="universalLogout" /></td>
    <td><code>object</code></td>
    <td>&lt;div class="x-lifecycle-container"&gt;&lt;x-lifecycle class="oie"&gt;&lt;/x-lifecycle&gt;&lt;/div&gt; Universal Logout properties for the app. These properties are only returned and can't be updated. (example: ACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="visibility" /></td>
    <td><code>object</code></td>
    <td>Specifies visibility settings for the app</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_applications">

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
    <td>Unique ID for the app instance</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resources related to the app using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. If the `expand=user/&#123;userId&#125;` query parameter is specified, then the assigned [Application User](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/applicationusers) is embedded.</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Discoverable resources related to the app</td>
</tr>
<tr>
    <td><CopyableCode code="accessibility" /></td>
    <td><code>object</code></td>
    <td>Specifies access settings for the app</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the application object was created</td>
</tr>
<tr>
    <td><CopyableCode code="expressConfiguration" /></td>
    <td><code>object</code></td>
    <td>&lt;div class="x-lifecycle-container"&gt;&lt;x-lifecycle class="oie"&gt;&lt;/x-lifecycle&gt;&lt;/div&gt; Indicates which Express Configuration capabilities the app supports and has enabled</td>
</tr>
<tr>
    <td><CopyableCode code="features" /></td>
    <td><code>array</code></td>
    <td>Enabled app features &gt; **Note:** See [Application Features](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/applicationfeatures/) for app provisioning features. </td>
</tr>
<tr>
    <td><CopyableCode code="label" /></td>
    <td><code>string</code></td>
    <td>User-defined display name for app</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the application object was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="licensing" /></td>
    <td><code>object</code></td>
    <td>Licenses for the app</td>
</tr>
<tr>
    <td><CopyableCode code="orn" /></td>
    <td><code>string</code></td>
    <td>The Okta resource name (ORN) for the current app instance</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>Contains any valid JSON schema for specifying properties that can be referenced from a request (only available to OAuth 2.0 client apps). For example, add an app manager contact email address or define an allowlist of groups that you can then reference using the Okta Expression Language `getFilteredGroups` function.  &gt; **Notes:** &gt; * `profile` isn't encrypted, so don't store sensitive data in it. &gt; * `profile` doesn't limit the level of nesting in the JSON schema you created, but there is a practical size limit. Okta recommends a JSON schema size of 1 MB or less for best performance.</td>
</tr>
<tr>
    <td><CopyableCode code="signOnMode" /></td>
    <td><code>string</code></td>
    <td>Authentication mode for the app  | signOnMode | Description | | ---------- | ----------- | | AUTO_LOGIN | Secure Web Authentication (SWA) | | BASIC_AUTH | HTTP Basic Authentication with Okta Browser Plugin | | BOOKMARK | Just a bookmark (no-authentication) | | BROWSER_PLUGIN | Secure Web Authentication (SWA) with Okta Browser Plugin | | OPENID_CONNECT | Federated Authentication with OpenID Connect (OIDC) | | SAML_1_1 | Federated Authentication with SAML 1.1 WebSSO (not supported for custom apps) | | SAML_2_0 | Federated Authentication with SAML 2.0 WebSSO | | SECURE_PASSWORD_STORE | Secure Web Authentication (SWA) with POST (plugin not required) | | WS_FEDERATION | Federated Authentication with WS-Federation Passive Requestor Profile |  Select the `signOnMode` for your custom app:  (AUTO_LOGIN, BASIC_AUTH, BOOKMARK, BROWSER_PLUGIN, OPENID_CONNECT, SAML_1_1, SAML_2_0, SECURE_PASSWORD_STORE, WS_FEDERATION)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>App instance status (ACTIVE, DELETED, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="universalLogout" /></td>
    <td><code>object</code></td>
    <td>&lt;div class="x-lifecycle-container"&gt;&lt;x-lifecycle class="oie"&gt;&lt;/x-lifecycle&gt;&lt;/div&gt; Universal Logout properties for the app. These properties are only returned and can't be updated. (example: ACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="visibility" /></td>
    <td><code>object</code></td>
    <td>Specifies visibility settings for the app</td>
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
    <td><a href="#get_application"><CopyableCode code="get_application" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Retrieves an application from your Okta organization by `id`</td>
</tr>
<tr>
    <td><a href="#list_applications"><CopyableCode code="list_applications" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-q"><code>q</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-useOptimization"><code>useOptimization</code></a>, <a href="#parameter-alwaysIncludeVpnSettings"><code>alwaysIncludeVpnSettings</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-expand"><code>expand</code></a>, <a href="#parameter-includeNonDeleted"><code>includeNonDeleted</code></a></td>
    <td>Lists all apps in the org with pagination. A subset of apps can be returned that match a supported filter expression or query. The results are [paginated]https://developer.okta.com/docs/api#pagination according to the `limit` parameter. If there are multiple pages of results, the header contains a `next` link. Treat the link as an opaque value (follow it, don't parse it).<br /><br />&gt; **Note:** To list all of a member's assigned app links, use the [List all assigned app links endpoint in the User Resources API](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/userresources/other/listapplinks).</td>
</tr>
<tr>
    <td><a href="#create_application"><CopyableCode code="create_application" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-signOnMode"><code>signOnMode</code></a>, <a href="#parameter-label"><code>label</code></a></td>
    <td><a href="#parameter-activate"><code>activate</code></a>, <a href="#parameter-OktaAccessGateway-Agent"><code>OktaAccessGateway-Agent</code></a></td>
    <td>Creates an app instance in your Okta org.<br /><br />You can either create an OIN app instance or a custom app instance:<br />* OIN app instances have prescribed `name` (key app definition) and `signOnMode` options. See the [OIN schemas](https://developer.okta.com/docs/api/openapi/okta-management/management/application/googleapplication) for the request body.<br />* For custom app instances, select the [signOnMode](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/application/other/createapplication#application/createapplication/t=request&path=&d=0/signonmode) that pertains to your app and specify the required parameters in the request body.<br /></td>
</tr>
<tr>
    <td><a href="#replace_application"><CopyableCode code="replace_application" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-signOnMode"><code>signOnMode</code></a>, <a href="#parameter-label"><code>label</code></a></td>
    <td></td>
    <td>Replaces properties for an application<br />&gt; **Notes:**<br />&gt; * All required properties must be specified in the request body<br />&gt; * You can't modify system-assigned properties, such as `id`, `name`, `status`, `created`, and `lastUpdated`. The values for these properties in the PUT request body are ignored.<br /></td>
</tr>
<tr>
    <td><a href="#delete_application"><CopyableCode code="delete_application" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an inactive application</td>
</tr>
<tr>
    <td><a href="#activate_application"><CopyableCode code="activate_application" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates an inactive application</td>
</tr>
<tr>
    <td><a href="#deactivate_application"><CopyableCode code="deactivate_application" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates an active application<br /><br />&gt; **Note:** Deactivating an app triggers a full reconciliation of all users assigned to the app by groups. This reconcile process removes the app assignment for the deactivated app, and might also correct assignments that were supposed to be removed but failed previously.</td>
</tr>
<tr>
    <td><a href="#upload_application_logo"><CopyableCode code="upload_application_logo" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-file"><code>file</code></a></td>
    <td></td>
    <td>Uploads a logo for the app instance.<br />If the app already has a logo, this operation replaces the previous logo.<br /><br />The logo is visible in the Admin Console as an icon for your app instance.<br />If you have one `appLink` object configured, this logo also appears in the End-User Dashboard as an icon for your app.<br />&gt; **Note:** If you have multiple `appLink` objects, use the Admin Console to add logos for each app link.<br />&gt; You can't use the API to add logos for multiple app links.<br /></td>
</tr>
<tr>
    <td><a href="#assign_application_policy"><CopyableCode code="assign_application_policy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Assigns an app to an [app sign-in policy](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/policy/), identified by `policyId`.<br />If the app was previously assigned to another policy, this operation replaces that assignment with the updated policy identified by `policyId`.<br /><br />&gt; **Note:** When you [merge duplicate app sign-in policies](https://help.okta.com/okta_help.htm?type=oie&id=ext-merge-auth-policies),<br />the policy and mapping CRUD operations may be unavailable during the consolidation. When the consolidation is complete, you receive an email with merged results.</td>
</tr>
<tr>
    <td><a href="#preview_samlmetadata_for_application"><CopyableCode code="preview_samlmetadata_for_application" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-kid"><code>kid</code></a>, <a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Previews the SSO SAML metadata for an application</td>
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
<tr id="parameter-kid">
    <td><CopyableCode code="kid" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-policyId">
    <td><CopyableCode code="policyId" /></td>
    <td><code>string</code></td>
    <td>`id` of the policy</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-OktaAccessGateway-Agent">
    <td><CopyableCode code="OktaAccessGateway-Agent" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-activate">
    <td><CopyableCode code="activate" /></td>
    <td><code>string</code></td>
    <td>Executes activation lifecycle operation when creating the app</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>Specifies the [pagination]https://developer.okta.com/docs/api#pagination cursor for the next page of results. Treat this as an opaque value obtained through the `next` link relationship.</td>
</tr>
<tr id="parameter-alwaysIncludeVpnSettings">
    <td><CopyableCode code="alwaysIncludeVpnSettings" /></td>
    <td><code>string</code></td>
    <td>Specifies whether to include the VPN configuration for existing notifications in the result, regardless of whether VPN notifications are configured</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>An optional parameter used for link expansion to embed more resources in the response. Only supports `expand=user/&#123;userId&#125;` and must be used with the `user.id eq "&#123;userId&#125;"` filter query for the same user. Returns the assigned [application user](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/applicationusers) in the `_embedded` property.</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>Filters apps with a supported expression for a subset of properties. Filtering supports the following limited number of properties: `id`, `status`, `credentials.signing.kid`, `settings.slo.enabled`, or `name`. See [Filter](https://developer.okta.com/docs/api/#filter).</td>
</tr>
<tr id="parameter-includeNonDeleted">
    <td><CopyableCode code="includeNonDeleted" /></td>
    <td><code>string</code></td>
    <td>Specifies whether to include non-active, but not deleted apps in the results</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of results per page</td>
</tr>
<tr id="parameter-q">
    <td><CopyableCode code="q" /></td>
    <td><code>string</code></td>
    <td>Searches for apps with `name` or `label` properties that starts with the `q` value using the `startsWith` operation</td>
</tr>
<tr id="parameter-useOptimization">
    <td><CopyableCode code="useOptimization" /></td>
    <td><code>string</code></td>
    <td>Specifies whether to use query optimization. If you specify `useOptimization=true` in the request query, the response contains a subset of app instance properties.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_application"
    values={[
        { label: 'get_application', value: 'get_application' },
        { label: 'list_applications', value: 'list_applications' }
    ]}
>
<TabItem value="get_application">

Retrieves an application from your Okta organization by `id`

```sql
SELECT
id,
_embedded,
_links,
accessibility,
created,
expressConfiguration,
features,
label,
lastUpdated,
licensing,
orn,
profile,
signOnMode,
status,
universalLogout,
visibility
FROM okta.apps.applications
WHERE appId = '{{ appId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}'
;
```
</TabItem>
<TabItem value="list_applications">

Lists all apps in the org with pagination. A subset of apps can be returned that match a supported filter expression or query. The results are [paginated]https://developer.okta.com/docs/api#pagination according to the `limit` parameter. If there are multiple pages of results, the header contains a `next` link. Treat the link as an opaque value (follow it, don't parse it).<br /><br />&gt; **Note:** To list all of a member's assigned app links, use the [List all assigned app links endpoint in the User Resources API](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/userresources/other/listapplinks).

```sql
SELECT
id,
_embedded,
_links,
accessibility,
created,
expressConfiguration,
features,
label,
lastUpdated,
licensing,
orn,
profile,
signOnMode,
status,
universalLogout,
visibility
FROM okta.apps.applications
WHERE subdomain = '{{ subdomain }}' -- required
AND q = '{{ q }}'
AND after = '{{ after }}'
AND useOptimization = '{{ useOptimization }}'
AND alwaysIncludeVpnSettings = '{{ alwaysIncludeVpnSettings }}'
AND limit = '{{ limit }}'
AND filter = '{{ filter }}'
AND expand = '{{ expand }}'
AND includeNonDeleted = '{{ includeNonDeleted }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_application"
    values={[
        { label: 'create_application', value: 'create_application' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_application">

Creates an app instance in your Okta org.<br /><br />You can either create an OIN app instance or a custom app instance:<br />* OIN app instances have prescribed `name` (key app definition) and `signOnMode` options. See the [OIN schemas](https://developer.okta.com/docs/api/openapi/okta-management/management/application/googleapplication) for the request body.<br />* For custom app instances, select the [signOnMode](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/application/other/createapplication#application/createapplication/t=request&path=&d=0/signonmode) that pertains to your app and specify the required parameters in the request body.<br />

```sql
INSERT INTO okta.apps.applications (
accessibility,
label,
licensing,
profile,
signOnMode,
visibility,
subdomain,
activate,
OktaAccessGateway-Agent
)
SELECT 
'{{ accessibility }}',
'{{ label }}' /* required */,
'{{ licensing }}',
'{{ profile }}',
'{{ signOnMode }}' /* required */,
'{{ visibility }}',
'{{ subdomain }}',
'{{ activate }}',
'{{ OktaAccessGateway-Agent }}'
RETURNING
id,
_embedded,
_links,
accessibility,
created,
expressConfiguration,
features,
label,
lastUpdated,
licensing,
orn,
profile,
signOnMode,
status,
universalLogout,
visibility
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: applications
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the applications resource.
    - name: accessibility
      description: |
        Specifies access settings for the app
      value:
        errorRedirectUrl: "{{ errorRedirectUrl }}"
        loginRedirectUrl: "{{ loginRedirectUrl }}"
        selfService: {{ selfService }}
    - name: label
      value: "{{ label }}"
      description: |
        User-defined display name for app
    - name: licensing
      description: |
        Licenses for the app
      value:
        seatCount: {{ seatCount }}
    - name: profile
      value: "{{ profile }}"
      description: |
        Contains any valid JSON schema for specifying properties that can be referenced from a request (only available to OAuth 2.0 client apps).
        For example, add an app manager contact email address or define an allowlist of groups that you can then reference using the Okta Expression Language \`getFilteredGroups\` function.
        > **Notes:**
        > * \`profile\` isn't encrypted, so don't store sensitive data in it.
        > * \`profile\` doesn't limit the level of nesting in the JSON schema you created, but there is a practical size limit. Okta recommends a JSON schema size of 1 MB or less for best performance.
    - name: signOnMode
      value: "{{ signOnMode }}"
      description: |
        Authentication mode for the app
        | signOnMode | Description |
        | ---------- | ----------- |
        | AUTO_LOGIN | Secure Web Authentication (SWA) |
        | BASIC_AUTH | HTTP Basic Authentication with Okta Browser Plugin |
        | BOOKMARK | Just a bookmark (no-authentication) |
        | BROWSER_PLUGIN | Secure Web Authentication (SWA) with Okta Browser Plugin |
        | OPENID_CONNECT | Federated Authentication with OpenID Connect (OIDC) |
        | SAML_1_1 | Federated Authentication with SAML 1.1 WebSSO (not supported for custom apps) |
        | SAML_2_0 | Federated Authentication with SAML 2.0 WebSSO |
        | SECURE_PASSWORD_STORE | Secure Web Authentication (SWA) with POST (plugin not required) |
        | WS_FEDERATION | Federated Authentication with WS-Federation Passive Requestor Profile |
        Select the \`signOnMode\` for your custom app:
      valid_values: ['AUTO_LOGIN', 'BASIC_AUTH', 'BOOKMARK', 'BROWSER_PLUGIN', 'OPENID_CONNECT', 'SAML_1_1', 'SAML_2_0', 'SECURE_PASSWORD_STORE', 'WS_FEDERATION']
    - name: visibility
      description: |
        Specifies visibility settings for the app
      value:
        appLinks: "{{ appLinks }}"
        autoLaunch: {{ autoLaunch }}
        autoSubmitToolbar: {{ autoSubmitToolbar }}
        hide:
          iOS: {{ iOS }}
          web: {{ web }}
    - name: activate
      value: "{{ activate }}"
      description: Executes activation lifecycle operation when creating the app
      description: Executes activation lifecycle operation when creating the app
    - name: OktaAccessGateway-Agent
      value: "{{ OktaAccessGateway-Agent }}"
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_application"
    values={[
        { label: 'replace_application', value: 'replace_application' }
    ]}
>
<TabItem value="replace_application">

Replaces properties for an application<br />&gt; **Notes:**<br />&gt; * All required properties must be specified in the request body<br />&gt; * You can't modify system-assigned properties, such as `id`, `name`, `status`, `created`, and `lastUpdated`. The values for these properties in the PUT request body are ignored.<br />

```sql
REPLACE okta.apps.applications
SET 
accessibility = '{{ accessibility }}',
label = '{{ label }}',
licensing = '{{ licensing }}',
profile = '{{ profile }}',
signOnMode = '{{ signOnMode }}',
visibility = '{{ visibility }}'
WHERE 
appId = '{{ appId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND signOnMode = '{{ signOnMode }}' --required
AND label = '{{ label }}' --required
RETURNING
id,
_embedded,
_links,
accessibility,
created,
expressConfiguration,
features,
label,
lastUpdated,
licensing,
orn,
profile,
signOnMode,
status,
universalLogout,
visibility;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_application"
    values={[
        { label: 'delete_application', value: 'delete_application' }
    ]}
>
<TabItem value="delete_application">

Deletes an inactive application

```sql
DELETE FROM okta.apps.applications
WHERE appId = '{{ appId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_application"
    values={[
        { label: 'activate_application', value: 'activate_application' },
        { label: 'deactivate_application', value: 'deactivate_application' },
        { label: 'upload_application_logo', value: 'upload_application_logo' },
        { label: 'assign_application_policy', value: 'assign_application_policy' },
        { label: 'preview_samlmetadata_for_application', value: 'preview_samlmetadata_for_application' }
    ]}
>
<TabItem value="activate_application">

Activates an inactive application

```sql
EXEC okta.apps.applications.activate_application 
@appId='{{ appId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_application">

Deactivates an active application<br /><br />&gt; **Note:** Deactivating an app triggers a full reconciliation of all users assigned to the app by groups. This reconcile process removes the app assignment for the deactivated app, and might also correct assignments that were supposed to be removed but failed previously.

```sql
EXEC okta.apps.applications.deactivate_application 
@appId='{{ appId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="upload_application_logo">

Uploads a logo for the app instance.<br />If the app already has a logo, this operation replaces the previous logo.<br /><br />The logo is visible in the Admin Console as an icon for your app instance.<br />If you have one `appLink` object configured, this logo also appears in the End-User Dashboard as an icon for your app.<br />&gt; **Note:** If you have multiple `appLink` objects, use the Admin Console to add logos for each app link.<br />&gt; You can't use the API to add logos for multiple app links.<br />

```sql
EXEC okta.apps.applications.upload_application_logo 
@appId='{{ appId }}' --required, 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"file": "{{ file }}"
}'
;
```
</TabItem>
<TabItem value="assign_application_policy">

Assigns an app to an [app sign-in policy](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/policy/), identified by `policyId`.<br />If the app was previously assigned to another policy, this operation replaces that assignment with the updated policy identified by `policyId`.<br /><br />&gt; **Note:** When you [merge duplicate app sign-in policies](https://help.okta.com/okta_help.htm?type=oie&id=ext-merge-auth-policies),<br />the policy and mapping CRUD operations may be unavailable during the consolidation. When the consolidation is complete, you receive an email with merged results.

```sql
EXEC okta.apps.applications.assign_application_policy 
@appId='{{ appId }}' --required, 
@policyId='{{ policyId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="preview_samlmetadata_for_application">

Previews the SSO SAML metadata for an application

```sql
EXEC okta.apps.applications.preview_samlmetadata_for_application 
@kid='{{ kid }}' --required, 
@appId='{{ appId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
