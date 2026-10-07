--- 
title: linked_objects
hide_title: false
hide_table_of_contents: false
keywords:
  - linked_objects
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

Creates, updates, deletes, gets or lists a <code>linked_objects</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="linked_objects" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.users.linked_objects" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_linked_objects_for_user"
    values={[
        { label: 'list_linked_objects_for_user', value: 'list_linked_objects_for_user' }
    ]}
>
<TabItem value="list_linked_objects_for_user">

Link objects

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
    <td><a href="#list_linked_objects_for_user"><CopyableCode code="list_linked_objects_for_user" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-userIdOrLogin"><code>userIdOrLogin</code></a>, <a href="#parameter-relationshipName"><code>relationshipName</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists either the `self` link for the primary user or all associated users in the relationship specified by `relationshipName`. If the specified user isn't associated in any relationship, an empty array is returned.<br /><br />Use `me` instead of `id` to specify the current session user.</td>
</tr>
<tr>
    <td><a href="#assign_linked_object_value_for_primary"><CopyableCode code="assign_linked_object_value_for_primary" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-userIdOrLogin"><code>userIdOrLogin</code></a>, <a href="#parameter-primaryRelationshipName"><code>primaryRelationshipName</code></a>, <a href="#parameter-primaryUserId"><code>primaryUserId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Assigns the first user as the `associated` and the second user as the `primary` for the specified relationship.<br /><br />If the first user is already associated with a different `primary` for this relationship, the previous link is removed. A linked object relationship can specify only one primary user for an associated user.</td>
</tr>
<tr>
    <td><a href="#delete_linked_object_for_user"><CopyableCode code="delete_linked_object_for_user" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-userIdOrLogin"><code>userIdOrLogin</code></a>, <a href="#parameter-relationshipName"><code>relationshipName</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes any existing relationship between the `associated` and `primary` user. For the `associated` user, this is specified by the ID. The `primary` name specifies the relationship.<br /><br />The operation is successful if the relationship is deleted. The operation is also successful if the specified user isn't in the `associated` relationship for any instance of the specified `primary` and thus, no relationship is found.</td>
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
<tr id="parameter-primaryRelationshipName">
    <td><CopyableCode code="primaryRelationshipName" /></td>
    <td><code>string</code></td>
    <td>Name of the `primary` relationship being assigned</td>
</tr>
<tr id="parameter-primaryUserId">
    <td><CopyableCode code="primaryUserId" /></td>
    <td><code>string</code></td>
    <td>User ID to be assigned to the `primary` relationship for the `associated` user</td>
</tr>
<tr id="parameter-relationshipName">
    <td><CopyableCode code="relationshipName" /></td>
    <td><code>string</code></td>
    <td>Name of the `primary` or `associated` relationship being queried</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-userIdOrLogin">
    <td><CopyableCode code="userIdOrLogin" /></td>
    <td><code>string</code></td>
    <td>If for the `self` link, this is the ID of the user for whom you want to get the primary user ID. If for the `associated` relation, this is the user ID or login value of the user assigned the associated relationship.  This can be `me` to represent the current session user.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_linked_objects_for_user"
    values={[
        { label: 'list_linked_objects_for_user', value: 'list_linked_objects_for_user' }
    ]}
>
<TabItem value="list_linked_objects_for_user">

Lists either the `self` link for the primary user or all associated users in the relationship specified by `relationshipName`. If the specified user isn't associated in any relationship, an empty array is returned.<br /><br />Use `me` instead of `id` to specify the current session user.

```sql
SELECT
_links
FROM okta.users.linked_objects
WHERE userIdOrLogin = '{{ userIdOrLogin }}' -- required
AND relationshipName = '{{ relationshipName }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="assign_linked_object_value_for_primary"
    values={[
        { label: 'assign_linked_object_value_for_primary', value: 'assign_linked_object_value_for_primary' }
    ]}
>
<TabItem value="assign_linked_object_value_for_primary">

Assigns the first user as the `associated` and the second user as the `primary` for the specified relationship.<br /><br />If the first user is already associated with a different `primary` for this relationship, the previous link is removed. A linked object relationship can specify only one primary user for an associated user.

```sql
REPLACE okta.users.linked_objects
SET 
-- No updatable properties
WHERE 
userIdOrLogin = '{{ userIdOrLogin }}' --required
AND primaryRelationshipName = '{{ primaryRelationshipName }}' --required
AND primaryUserId = '{{ primaryUserId }}' --required
AND subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_linked_object_for_user"
    values={[
        { label: 'delete_linked_object_for_user', value: 'delete_linked_object_for_user' }
    ]}
>
<TabItem value="delete_linked_object_for_user">

Deletes any existing relationship between the `associated` and `primary` user. For the `associated` user, this is specified by the ID. The `primary` name specifies the relationship.<br /><br />The operation is successful if the relationship is deleted. The operation is also successful if the specified user isn't in the `associated` relationship for any instance of the specified `primary` and thus, no relationship is found.

```sql
DELETE FROM okta.users.linked_objects
WHERE userIdOrLogin = '{{ userIdOrLogin }}' --required
AND relationshipName = '{{ relationshipName }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
