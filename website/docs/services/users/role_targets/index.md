--- 
title: role_targets
hide_title: false
hide_table_of_contents: false
keywords:
  - role_targets
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

Creates, updates, deletes, gets or lists a <code>role_targets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="role_targets" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.users.role_targets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_role_targets_by_user_id_and_role_id"
    values={[
        { label: 'get_role_targets_by_user_id_and_role_id', value: 'get_role_targets_by_user_id_and_role_id' }
    ]}
>
<TabItem value="get_role_targets_by_user_id_and_role_id">

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
    <td><CopyableCode code="assignmentType" /></td>
    <td><code>string</code></td>
    <td>The assignment type of how the user receives this target (example: GROUP)</td>
</tr>
<tr>
    <td><CopyableCode code="expiration" /></td>
    <td><code>string (date-time)</code></td>
    <td>The expiry time stamp of the associated target. It's only included in the response if the associated target will expire. (example: 2023-08-25T12:00:00.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="orn" /></td>
    <td><code>string</code></td>
    <td>The [Okta Resource Name (ORN)](https://support.okta.com/help/s/article/understanding-okta-resource-name-orn) of the app target or group target (example: orn:okta:directory:00o5v1t2W4OSF9r4N0g4:groups:00g5vhi3rEJMOog1S0g4)</td>
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
    <td><a href="#get_role_targets_by_user_id_and_role_id"><CopyableCode code="get_role_targets_by_user_id_and_role_id" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-roleIdOrEncodedRoleId"><code>roleIdOrEncodedRoleId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-assignmentType"><code>assignmentType</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Retrieves all role targets for an `APP_ADMIN`, `USER_ADMIN`, `HELP_DESK_ADMIN`, or `GROUP_MEMBERSHIP_ADMIN` role assignment to an admin user by user or group assignment type.<br />If the role isn't scoped to specific group targets or any app targets, an empty array `[]` is returned.<br /></td>
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
<tr id="parameter-roleIdOrEncodedRoleId">
    <td><CopyableCode code="roleIdOrEncodedRoleId" /></td>
    <td><code>string</code></td>
    <td>The `id` of the role or Base32 encoded `id` of the role name</td>
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
<tr id="parameter-assignmentType">
    <td><CopyableCode code="assignmentType" /></td>
    <td><code>string</code></td>
    <td>Specifies the assignment type of the user</td>
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
    defaultValue="get_role_targets_by_user_id_and_role_id"
    values={[
        { label: 'get_role_targets_by_user_id_and_role_id', value: 'get_role_targets_by_user_id_and_role_id' }
    ]}
>
<TabItem value="get_role_targets_by_user_id_and_role_id">

Retrieves all role targets for an `APP_ADMIN`, `USER_ADMIN`, `HELP_DESK_ADMIN`, or `GROUP_MEMBERSHIP_ADMIN` role assignment to an admin user by user or group assignment type.<br />If the role isn't scoped to specific group targets or any app targets, an empty array `[]` is returned.<br />

```sql
SELECT
_links,
assignmentType,
expiration,
orn
FROM okta.users.role_targets
WHERE userId = '{{ userId }}' -- required
AND roleIdOrEncodedRoleId = '{{ roleIdOrEncodedRoleId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND assignmentType = '{{ assignmentType }}'
AND after = '{{ after }}'
AND limit = '{{ limit }}'
;
```
</TabItem>
</Tabs>
