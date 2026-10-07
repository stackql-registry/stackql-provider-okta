--- 
title: app_targets
hide_title: false
hide_table_of_contents: false
keywords:
  - app_targets
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

Creates, updates, deletes, gets or lists an <code>app_targets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="app_targets" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.groups.app_targets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_application_targets_for_application_administrator_role_for_group"
    values={[
        { label: 'list_application_targets_for_application_administrator_role_for_group', value: 'list_application_targets_for_application_administrator_role_for_group' }
    ]}
>
<TabItem value="list_application_targets_for_application_administrator_role_for_group">

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
    <td><a href="#list_application_targets_for_application_administrator_role_for_group"><CopyableCode code="list_application_targets_for_application_administrator_role_for_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all app targets for an `APP_ADMIN` role assignment to a group. The response includes a list of OIN-cataloged apps or app instances. The response payload for an app instance contains the `id` property, but an OIN-cataloged app doesn't.</td>
</tr>
<tr>
    <td><a href="#assign_app_target_to_admin_role_for_group"><CopyableCode code="assign_app_target_to_admin_role_for_group" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Assigns an OIN app target to an `APP_ADMIN` role assignment to a group. When you assign the first OIN app target, you reduce the scope of the role assignment. The role no longer applies to all app targets, but applies only to the specified target. An OIN app target that's assigned to the role overrides any existing instance targets of the OIN app. For example, if a user is assigned to administer a specific Facebook instance, a successful request to add an OIN app with `facebook` for `appName` makes that user the administrator for all Facebook instances.</td>
</tr>
<tr>
    <td><a href="#unassign_app_target_to_admin_role_for_group"><CopyableCode code="unassign_app_target_to_admin_role_for_group" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unassigns an OIN app target from an `APP_ADMIN` role assignment to a group<br /><br />&gt; **Note:** You can't remove the last app target from a role assignment.<br />&gt; If you need a role assignment that applies to all apps, delete the `APP_ADMIN` role assignment with the target and create another one. See [Unassign a group role](https://developer.okta.com/docs/api/openapi/okta-management/management/roleassignmentbgroup/unassignrolefromgroup).<br /></td>
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
<tr id="parameter-appName">
    <td><CopyableCode code="appName" /></td>
    <td><code>string</code></td>
    <td>Name of the app definition (the OIN catalog app key name)</td>
</tr>
<tr id="parameter-groupId">
    <td><CopyableCode code="groupId" /></td>
    <td><code>string</code></td>
    <td>The `id` of the group</td>
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
    defaultValue="list_application_targets_for_application_administrator_role_for_group"
    values={[
        { label: 'list_application_targets_for_application_administrator_role_for_group', value: 'list_application_targets_for_application_administrator_role_for_group' }
    ]}
>
<TabItem value="list_application_targets_for_application_administrator_role_for_group">

Lists all app targets for an `APP_ADMIN` role assignment to a group. The response includes a list of OIN-cataloged apps or app instances. The response payload for an app instance contains the `id` property, but an OIN-cataloged app doesn't.

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
FROM okta.groups.app_targets
WHERE groupId = '{{ groupId }}' -- required
AND roleAssignmentId = '{{ roleAssignmentId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="assign_app_target_to_admin_role_for_group"
    values={[
        { label: 'assign_app_target_to_admin_role_for_group', value: 'assign_app_target_to_admin_role_for_group' }
    ]}
>
<TabItem value="assign_app_target_to_admin_role_for_group">

Assigns an OIN app target to an `APP_ADMIN` role assignment to a group. When you assign the first OIN app target, you reduce the scope of the role assignment. The role no longer applies to all app targets, but applies only to the specified target. An OIN app target that's assigned to the role overrides any existing instance targets of the OIN app. For example, if a user is assigned to administer a specific Facebook instance, a successful request to add an OIN app with `facebook` for `appName` makes that user the administrator for all Facebook instances.

```sql
REPLACE okta.groups.app_targets
SET 
-- No updatable properties
WHERE 
groupId = '{{ groupId }}' --required
AND roleAssignmentId = '{{ roleAssignmentId }}' --required
AND appName = '{{ appName }}' --required
AND subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="unassign_app_target_to_admin_role_for_group"
    values={[
        { label: 'unassign_app_target_to_admin_role_for_group', value: 'unassign_app_target_to_admin_role_for_group' }
    ]}
>
<TabItem value="unassign_app_target_to_admin_role_for_group">

Unassigns an OIN app target from an `APP_ADMIN` role assignment to a group<br /><br />&gt; **Note:** You can't remove the last app target from a role assignment.<br />&gt; If you need a role assignment that applies to all apps, delete the `APP_ADMIN` role assignment with the target and create another one. See [Unassign a group role](https://developer.okta.com/docs/api/openapi/okta-management/management/roleassignmentbgroup/unassignrolefromgroup).<br />

```sql
DELETE FROM okta.groups.app_targets
WHERE groupId = '{{ groupId }}' --required
AND roleAssignmentId = '{{ roleAssignmentId }}' --required
AND appName = '{{ appName }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
