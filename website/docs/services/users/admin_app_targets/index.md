--- 
title: admin_app_targets
hide_title: false
hide_table_of_contents: false
keywords:
  - admin_app_targets
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

Creates, updates, deletes, gets or lists an <code>admin_app_targets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="admin_app_targets" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.users.admin_app_targets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_application_targets_for_application_administrator_role_for_user"
    values={[
        { label: 'list_application_targets_for_application_administrator_role_for_user', value: 'list_application_targets_for_application_administrator_role_for_user' }
    ]}
>
<TabItem value="list_application_targets_for_application_administrator_role_for_user">

An app in the OIN catalog

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
    <td>ID of the app instance. Okta returns this property only for apps not in the OIN catalog.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>App key name. For OIN catalog apps, this is a unique key for the app definition.</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification</td>
</tr>
<tr>
    <td><CopyableCode code="category" /></td>
    <td><code>string</code></td>
    <td>Category for the app in the OIN catalog (example: SOCIAL)</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the app in the OIN catalog</td>
</tr>
<tr>
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>OIN catalog app display name</td>
</tr>
<tr>
    <td><CopyableCode code="features" /></td>
    <td><code>array</code></td>
    <td>Features supported by the app. See app [features](https://developer.okta.com/docs/api/openapi/okta-management/management/application/listapplications#application/listapplications/t=response&c=200&path=&d=0/features).</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated (example: 2024-09-19T23:37:37.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="signOnModes" /></td>
    <td><code>array</code></td>
    <td>Authentication mode for the app. See app [signOnMode](https://developer.okta.com/docs/api/openapi/okta-management/management/application/listapplications#application/listapplications/t=response&c=200&path=&d=0/signonmode).</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>App status (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="verificationStatus" /></td>
    <td><code>string</code></td>
    <td>OIN verification status of the catalog app (example: OKTA_VERIFIED)</td>
</tr>
<tr>
    <td><CopyableCode code="website" /></td>
    <td><code>string</code></td>
    <td>Website of the OIN catalog app</td>
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
    <td><a href="#list_application_targets_for_application_administrator_role_for_user"><CopyableCode code="list_application_targets_for_application_administrator_role_for_user" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all app targets for an `APP_ADMIN` role assigned to a user. The response is a list that includes OIN-cataloged apps or app instances. The response payload for an app instance contains the `id` property, but an OIN-cataloged app payload doesn't.</td>
</tr>
<tr>
    <td><a href="#unassign_app_instance_target_from_admin_role_for_user"><CopyableCode code="unassign_app_instance_target_from_admin_role_for_user" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unassigns an app instance target from an `APP_ADMIN` role assignment to an admin user.<br /><br />&gt; **Note:** You can't remove the last app instance target from a role assignment since this causes an exception.<br />&gt; If you need a role assignment that applies to all apps, delete the `APP_ADMIN` role assignment and recreate a new one.</td>
</tr>
<tr>
    <td><a href="#unassign_app_target_from_app_admin_role_for_user"><CopyableCode code="unassign_app_target_from_app_admin_role_for_user" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unassigns an OIN app target from an `APP_ADMIN` role assignment to an admin user.<br /><br />&gt; **Note:** You can't remove the last OIN app target from a role assignment since this causes an exception.<br />&gt; If you need a role assignment that applies to all apps, delete the `APP_ADMIN` role assignment to the user and recreate a new one.<br /></td>
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
<tr id="parameter-appName">
    <td><CopyableCode code="appName" /></td>
    <td><code>string</code></td>
    <td>Name of the app definition (the OIN catalog app key name)</td>
</tr>
<tr id="parameter-roleAssignmentId">
    <td><CopyableCode code="roleAssignmentId" /></td>
    <td><code>string</code></td>
    <td>The `id` of the role assignment</td>
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
    defaultValue="list_application_targets_for_application_administrator_role_for_user"
    values={[
        { label: 'list_application_targets_for_application_administrator_role_for_user', value: 'list_application_targets_for_application_administrator_role_for_user' }
    ]}
>
<TabItem value="list_application_targets_for_application_administrator_role_for_user">

Lists all app targets for an `APP_ADMIN` role assigned to a user. The response is a list that includes OIN-cataloged apps or app instances. The response payload for an app instance contains the `id` property, but an OIN-cataloged app payload doesn't.

```sql
SELECT
id,
name,
_links,
category,
description,
displayName,
features,
lastUpdated,
signOnModes,
status,
verificationStatus,
website
FROM okta.users.admin_app_targets
WHERE userId = '{{ userId }}' -- required
AND roleAssignmentId = '{{ roleAssignmentId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="unassign_app_instance_target_from_admin_role_for_user"
    values={[
        { label: 'unassign_app_instance_target_from_admin_role_for_user', value: 'unassign_app_instance_target_from_admin_role_for_user' },
        { label: 'unassign_app_target_from_app_admin_role_for_user', value: 'unassign_app_target_from_app_admin_role_for_user' }
    ]}
>
<TabItem value="unassign_app_instance_target_from_admin_role_for_user">

Unassigns an app instance target from an `APP_ADMIN` role assignment to an admin user.<br /><br />&gt; **Note:** You can't remove the last app instance target from a role assignment since this causes an exception.<br />&gt; If you need a role assignment that applies to all apps, delete the `APP_ADMIN` role assignment and recreate a new one.

```sql
DELETE FROM okta.users.admin_app_targets
WHERE userId = '{{ userId }}' --required
AND roleAssignmentId = '{{ roleAssignmentId }}' --required
AND appName = '{{ appName }}' --required
AND appId = '{{ appId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="unassign_app_target_from_app_admin_role_for_user">

Unassigns an OIN app target from an `APP_ADMIN` role assignment to an admin user.<br /><br />&gt; **Note:** You can't remove the last OIN app target from a role assignment since this causes an exception.<br />&gt; If you need a role assignment that applies to all apps, delete the `APP_ADMIN` role assignment to the user and recreate a new one.<br />

```sql
DELETE FROM okta.users.admin_app_targets
WHERE userId = '{{ userId }}' --required
AND roleAssignmentId = '{{ roleAssignmentId }}' --required
AND appName = '{{ appName }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
