--- 
title: assigned_apps
hide_title: false
hide_table_of_contents: false
keywords:
  - assigned_apps
  - groups
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

Creates, updates, deletes, gets or lists an <code>assigned_apps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="assigned_apps" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.groups.assigned_apps" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_assigned_applications_for_group"
    values={[
        { label: 'list_assigned_applications_for_group', value: 'list_assigned_applications_for_group' }
    ]}
>
<TabItem value="list_assigned_applications_for_group">

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
    <td><a href="#list_assigned_applications_for_group"><CopyableCode code="list_assigned_applications_for_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all apps that are assigned to a group. See [Application Groups API](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/applicationgroups/).</td>
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
<tr id="parameter-groupId">
    <td><CopyableCode code="groupId" /></td>
    <td><code>string</code></td>
    <td>The `id` of the group</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>Specifies the pagination cursor for the next page of apps</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of app results for a page</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_assigned_applications_for_group"
    values={[
        { label: 'list_assigned_applications_for_group', value: 'list_assigned_applications_for_group' }
    ]}
>
<TabItem value="list_assigned_applications_for_group">

Lists all apps that are assigned to a group. See [Application Groups API](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/applicationgroups/).

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
FROM okta.groups.assigned_apps
WHERE groupId = '{{ groupId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
;
```
</TabItem>
</Tabs>
