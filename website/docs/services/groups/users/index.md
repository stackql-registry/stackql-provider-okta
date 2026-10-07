--- 
title: users
hide_title: false
hide_table_of_contents: false
keywords:
  - users
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

Creates, updates, deletes, gets or lists a <code>users</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="users" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.groups.users" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_group_users"
    values={[
        { label: 'list_group_users', value: 'list_group_users' }
    ]}
>
<TabItem value="list_group_users">

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
    <td>The unique key for the user</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resources related to the user using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://datatracker.ietf.org/doc/html/rfc8288) available for the current status of a user. The links object is used for dynamic discovery of related resources, lifecycle operations, and credential operations. The links object is read-only.  For an individual user result, the links object contains a full set of link relations available for that user as determined by your policies. For a collection of users, the links object contains only the `self` link. Operations that return a collection of users include [List all users](https://developer.okta.com/docs/api/openapi/okta-management/management/user/listusers) and [List all group member users](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Group/#tag/Group/operation/listGroupUsers).</td>
</tr>
<tr>
    <td><CopyableCode code="activated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the user status transitioned to `ACTIVE`</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the user was created</td>
</tr>
<tr>
    <td><CopyableCode code="credentials" /></td>
    <td><code>object</code></td>
    <td>Specifies primary authentication and recovery credentials for a user. Credential types and requirements vary depending on the provider and security policy of the org.</td>
</tr>
<tr>
    <td><CopyableCode code="lastLogin" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp of the last login</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the user was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="passwordChanged" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the user's password was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>Specifies the default and custom profile properties for a user.  The default user profile is based on the [System for Cross-domain Identity Management: Core Schema](https://datatracker.ietf.org/doc/html/rfc7643).  The only permitted customizations of the default profile are to update permissions, change whether the `firstName` and `lastName` properties are nullable, and specify a [pattern](https://developer.okta.com/docs/reference/api/schemas/#login-pattern-validation) for `login`. You can use the Profile Editor in the Admin Console or the [Schemas API](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UISchema/#tag/UISchema) to make schema modifications.  You can extend user profiles with custom properties. You must first add the custom property to the user profile schema before you reference it. You can use the Profile Editor in the Admin Console or the [Schemas API](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UISchema/#tag/UISchema) to manage schema extensions.  Custom attributes can contain HTML tags. It's the client's responsibility to escape or encode this data before displaying it. Use [best-practices](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html) to prevent cross-site scripting.</td>
</tr>
<tr>
    <td><CopyableCode code="realmId" /></td>
    <td><code>string</code></td>
    <td>The ID of the realm in which the user is residing. See [Realms](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/realm). (example: guo1bfiNtSnZYILxO0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The current status of the user.  The status of a user changes in response to explicit events, such as admin-driven lifecycle changes, user login, or self-service password recovery. Okta doesn't asynchronously sweep through users and update their password expiry state, for example. Instead, Okta evaluates password policy at login time, notices the password has expired, and moves the user to the expired state. When running reports, remember that the data is valid as of the last login or lifecycle event for that user.  &gt; **Note:** The `ACTIVATING` status is a transitional status that occurs when a user is being activated but hasn't completed the activation process. This status isn't directly settable through the API, nor should you use it for any of your user management workflows. (ACTIVE, DEPROVISIONED, LOCKED_OUT, PASSWORD_EXPIRED, PROVISIONED, RECOVERY, STAGED, SUSPENDED)</td>
</tr>
<tr>
    <td><CopyableCode code="statusChanged" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the status of the user last changed</td>
</tr>
<tr>
    <td><CopyableCode code="transitioningToStatus" /></td>
    <td><code>string</code></td>
    <td>The target status of an in-progress asynchronous status transition. This property is only returned if the user's state is transitioning. (ACTIVE, DEPROVISIONED, PROVISIONED)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>object</code></td>
    <td>The user type that determines the schema for the user's profile. The `type` property is a map that identifies the [User Types](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UserType/#tag/UserType).  Currently it contains a single element, `id`. It can be specified when creating a new user, and can be updated by an admin on a full replace of an existing user (but not a partial update).</td>
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
    <td><a href="#list_group_users"><CopyableCode code="list_group_users" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all users that are a member of a group.<br />The default user limit is set to a very high number due to historical reasons that are no longer valid for most orgs. This will change in a future version of this API. The recommended page limit is now `limit=200`.</td>
</tr>
<tr>
    <td><a href="#assign_user_to_group"><CopyableCode code="assign_user_to_group" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Assigns a user to a group with the `OKTA_GROUP` type.<br />&gt; **Note:** You only can modify memberships for groups of the `OKTA_GROUP` type. App imports are responsible for managing group memberships for groups of the `APP_GROUP` type, such as Active Directory groups.</td>
</tr>
<tr>
    <td><a href="#unassign_user_from_group"><CopyableCode code="unassign_user_from_group" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unassigns a user from a group with the `OKTA_GROUP` type.<br />&gt; **Note:** You only can modify memberships for groups of the `OKTA_GROUP` type.<br />&gt;<br />&gt; App imports are responsible for managing group memberships for groups of the `APP_GROUP` type, such as Active Directory groups.</td>
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
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of user results in a page</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_group_users"
    values={[
        { label: 'list_group_users', value: 'list_group_users' }
    ]}
>
<TabItem value="list_group_users">

Lists all users that are a member of a group.<br />The default user limit is set to a very high number due to historical reasons that are no longer valid for most orgs. This will change in a future version of this API. The recommended page limit is now `limit=200`.

```sql
SELECT
id,
_embedded,
_links,
activated,
created,
credentials,
lastLogin,
lastUpdated,
passwordChanged,
profile,
realmId,
status,
statusChanged,
transitioningToStatus,
type
FROM okta.groups.users
WHERE groupId = '{{ groupId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="assign_user_to_group"
    values={[
        { label: 'assign_user_to_group', value: 'assign_user_to_group' }
    ]}
>
<TabItem value="assign_user_to_group">

Assigns a user to a group with the `OKTA_GROUP` type.<br />&gt; **Note:** You only can modify memberships for groups of the `OKTA_GROUP` type. App imports are responsible for managing group memberships for groups of the `APP_GROUP` type, such as Active Directory groups.

```sql
REPLACE okta.groups.users
SET 
-- No updatable properties
WHERE 
groupId = '{{ groupId }}' --required
AND userId = '{{ userId }}' --required
AND subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="unassign_user_from_group"
    values={[
        { label: 'unassign_user_from_group', value: 'unassign_user_from_group' }
    ]}
>
<TabItem value="unassign_user_from_group">

Unassigns a user from a group with the `OKTA_GROUP` type.<br />&gt; **Note:** You only can modify memberships for groups of the `OKTA_GROUP` type.<br />&gt;<br />&gt; App imports are responsible for managing group memberships for groups of the `APP_GROUP` type, such as Active Directory groups.

```sql
DELETE FROM okta.groups.users
WHERE groupId = '{{ groupId }}' --required
AND userId = '{{ userId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
