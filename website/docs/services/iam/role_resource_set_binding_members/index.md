--- 
title: role_resource_set_binding_members
hide_title: false
hide_table_of_contents: false
keywords:
  - role_resource_set_binding_members
  - iam
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

Creates, updates, deletes, gets or lists a <code>role_resource_set_binding_members</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="role_resource_set_binding_members" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.iam.role_resource_set_binding_members" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_member_of_binding"
    values={[
        { label: 'get_member_of_binding', value: 'get_member_of_binding' },
        { label: 'list_members_of_binding', value: 'list_members_of_binding' }
    ]}
>
<TabItem value="get_member_of_binding">

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
    <td>Role resource set binding member ID</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the member was created</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the member was last updated</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_members_of_binding">

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
    <td><CopyableCode code="members" /></td>
    <td><code>array</code></td>
    <td>The members of the role resource set binding. If there are more than 100 members for the binding, then the `_links.next` resource is returned with the next list of members.</td>
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
    <td><a href="#get_member_of_binding"><CopyableCode code="get_member_of_binding" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceSetIdOrLabel"><code>resourceSetIdOrLabel</code></a>, <a href="#parameter-roleIdOrLabel"><code>roleIdOrLabel</code></a>, <a href="#parameter-memberId"><code>memberId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a member (identified by `memberId`) that belongs to a role resource set binding</td>
</tr>
<tr>
    <td><a href="#list_members_of_binding"><CopyableCode code="list_members_of_binding" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceSetIdOrLabel"><code>resourceSetIdOrLabel</code></a>, <a href="#parameter-roleIdOrLabel"><code>roleIdOrLabel</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a></td>
    <td>Lists all members of a role resource set binding with pagination support</td>
</tr>
<tr>
    <td><a href="#add_members_to_binding"><CopyableCode code="add_members_to_binding" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceSetIdOrLabel"><code>resourceSetIdOrLabel</code></a>, <a href="#parameter-roleIdOrLabel"><code>roleIdOrLabel</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Adds more members to a role resource set binding</td>
</tr>
<tr>
    <td><a href="#unassign_member_from_binding"><CopyableCode code="unassign_member_from_binding" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceSetIdOrLabel"><code>resourceSetIdOrLabel</code></a>, <a href="#parameter-roleIdOrLabel"><code>roleIdOrLabel</code></a>, <a href="#parameter-memberId"><code>memberId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unassigns a member (identified by `memberId`) from a role resource set binding</td>
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
<tr id="parameter-memberId">
    <td><CopyableCode code="memberId" /></td>
    <td><code>string</code></td>
    <td>`id` of the member</td>
</tr>
<tr id="parameter-resourceSetIdOrLabel">
    <td><CopyableCode code="resourceSetIdOrLabel" /></td>
    <td><code>string</code></td>
    <td>`id` or `label` of the resource set</td>
</tr>
<tr id="parameter-roleIdOrLabel">
    <td><CopyableCode code="roleIdOrLabel" /></td>
    <td><code>string</code></td>
    <td>`id` or `label` of the role</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_member_of_binding"
    values={[
        { label: 'get_member_of_binding', value: 'get_member_of_binding' },
        { label: 'list_members_of_binding', value: 'list_members_of_binding' }
    ]}
>
<TabItem value="get_member_of_binding">

Retrieves a member (identified by `memberId`) that belongs to a role resource set binding

```sql
SELECT
id,
_links,
created,
lastUpdated
FROM okta.iam.role_resource_set_binding_members
WHERE resourceSetIdOrLabel = '{{ resourceSetIdOrLabel }}' -- required
AND roleIdOrLabel = '{{ roleIdOrLabel }}' -- required
AND memberId = '{{ memberId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_members_of_binding">

Lists all members of a role resource set binding with pagination support

```sql
SELECT
_links,
members
FROM okta.iam.role_resource_set_binding_members
WHERE resourceSetIdOrLabel = '{{ resourceSetIdOrLabel }}' -- required
AND roleIdOrLabel = '{{ roleIdOrLabel }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="add_members_to_binding"
    values={[
        { label: 'add_members_to_binding', value: 'add_members_to_binding' }
    ]}
>
<TabItem value="add_members_to_binding">

Adds more members to a role resource set binding

```sql
UPDATE okta.iam.role_resource_set_binding_members
SET 
additions = '{{ additions }}'
WHERE 
resourceSetIdOrLabel = '{{ resourceSetIdOrLabel }}' --required
AND roleIdOrLabel = '{{ roleIdOrLabel }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
_links;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="unassign_member_from_binding"
    values={[
        { label: 'unassign_member_from_binding', value: 'unassign_member_from_binding' }
    ]}
>
<TabItem value="unassign_member_from_binding">

Unassigns a member (identified by `memberId`) from a role resource set binding

```sql
DELETE FROM okta.iam.role_resource_set_binding_members
WHERE resourceSetIdOrLabel = '{{ resourceSetIdOrLabel }}' --required
AND roleIdOrLabel = '{{ roleIdOrLabel }}' --required
AND memberId = '{{ memberId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
