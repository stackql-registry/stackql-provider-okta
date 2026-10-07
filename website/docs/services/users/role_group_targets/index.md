--- 
title: role_group_targets
hide_title: false
hide_table_of_contents: false
keywords:
  - role_group_targets
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

Creates, updates, deletes, gets or lists a <code>role_group_targets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="role_group_targets" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.users.role_group_targets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_group_targets_for_role"
    values={[
        { label: 'list_group_targets_for_role', value: 'list_group_targets_for_role' }
    ]}
>
<TabItem value="list_group_targets_for_role">

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
    <td>Unique ID for the group (example: 0gabcd1234)</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resources related to the group</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>[Discoverable resources](https://developer.okta.com/docs/api/openapi/okta-management/management/group/listgroups#group/listgroups/t=response&c=200&path=_links/source) related to the group</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the group was created</td>
</tr>
<tr>
    <td><CopyableCode code="lastMembershipUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the groups memberships were last updated</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the group's profile was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="objectClass" /></td>
    <td><code>array</code></td>
    <td>Determines the group's `profile`</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>Profile for any group that is not imported from Active Directory. Specifies the standard and custom profile properties for a group.  The `objectClass` for these groups is `okta:user_group`.  You can extend group profiles with custom properties, but you must first add the properties to the group profile schema before you can reference them. Use the Profile Editor in the Admin Console or the [Schemas API](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Schema/) to manage schema extensions.  Custom properties can contain HTML tags. It is the client's responsibility to escape or encode this data before displaying it. Use [best-practices](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html) to prevent cross-site scripting.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Determines how a group's profile and memberships are managed (APP_GROUP, BUILT_IN, OKTA_GROUP)</td>
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
    <td><a href="#list_group_targets_for_role"><CopyableCode code="list_group_targets_for_role" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all group targets for a `USER_ADMIN`, `HELP_DESK_ADMIN`, or `GROUP_MEMBERSHIP_ADMIN` role assignment to an admin user.<br />If the role isn't scoped to specific group targets, an empty array `[]` is returned.<br /></td>
</tr>
<tr>
    <td><a href="#assign_group_target_to_user_role"><CopyableCode code="assign_group_target_to_user_role" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a>, <a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Assigns a group target for a `USER_ADMIN`, `HELP_DESK_ADMIN`, or `GROUP_MEMBERSHIP_ADMIN` role assignment to an admin user.<br />When you assign the first group target, you reduce the scope of the role assignment. The role no longer applies to all targets but applies only to the specified target.<br /></td>
</tr>
<tr>
    <td><a href="#unassign_group_target_from_user_admin_role"><CopyableCode code="unassign_group_target_from_user_admin_role" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a>, <a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unassigns a group target from a `USER_ADMIN`, `HELP_DESK_ADMIN`, or `GROUP_MEMBERSHIP_ADMIN` role assignment to an admin user.<br /><br />&gt; **Note:** You can't remove the last group target from a role assignment since this causes an exception.<br />&gt; If you need a role assignment that applies to all groups, delete the role assignment to the user and recreate a new one.<br /></td>
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
    defaultValue="list_group_targets_for_role"
    values={[
        { label: 'list_group_targets_for_role', value: 'list_group_targets_for_role' }
    ]}
>
<TabItem value="list_group_targets_for_role">

Lists all group targets for a `USER_ADMIN`, `HELP_DESK_ADMIN`, or `GROUP_MEMBERSHIP_ADMIN` role assignment to an admin user.<br />If the role isn't scoped to specific group targets, an empty array `[]` is returned.<br />

```sql
SELECT
id,
_embedded,
_links,
created,
lastMembershipUpdated,
lastUpdated,
objectClass,
profile,
type
FROM okta.users.role_group_targets
WHERE userId = '{{ userId }}' -- required
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
    defaultValue="assign_group_target_to_user_role"
    values={[
        { label: 'assign_group_target_to_user_role', value: 'assign_group_target_to_user_role' }
    ]}
>
<TabItem value="assign_group_target_to_user_role">

Assigns a group target for a `USER_ADMIN`, `HELP_DESK_ADMIN`, or `GROUP_MEMBERSHIP_ADMIN` role assignment to an admin user.<br />When you assign the first group target, you reduce the scope of the role assignment. The role no longer applies to all targets but applies only to the specified target.<br />

```sql
REPLACE okta.users.role_group_targets
SET 
-- No updatable properties
WHERE 
userId = '{{ userId }}' --required
AND roleAssignmentId = '{{ roleAssignmentId }}' --required
AND groupId = '{{ groupId }}' --required
AND subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="unassign_group_target_from_user_admin_role"
    values={[
        { label: 'unassign_group_target_from_user_admin_role', value: 'unassign_group_target_from_user_admin_role' }
    ]}
>
<TabItem value="unassign_group_target_from_user_admin_role">

Unassigns a group target from a `USER_ADMIN`, `HELP_DESK_ADMIN`, or `GROUP_MEMBERSHIP_ADMIN` role assignment to an admin user.<br /><br />&gt; **Note:** You can't remove the last group target from a role assignment since this causes an exception.<br />&gt; If you need a role assignment that applies to all groups, delete the role assignment to the user and recreate a new one.<br />

```sql
DELETE FROM okta.users.role_group_targets
WHERE userId = '{{ userId }}' --required
AND roleAssignmentId = '{{ roleAssignmentId }}' --required
AND groupId = '{{ groupId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
