--- 
title: role_resource_set_bindings
hide_title: false
hide_table_of_contents: false
keywords:
  - role_resource_set_bindings
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

Creates, updates, deletes, gets or lists a <code>role_resource_set_bindings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="role_resource_set_bindings" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.iam.role_resource_set_bindings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_binding"
    values={[
        { label: 'get_binding', value: 'get_binding' },
        { label: 'list_bindings', value: 'list_bindings' }
    ]}
>
<TabItem value="get_binding">

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
    <td>`id` of the role resource set binding</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_bindings">

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
    <td><CopyableCode code="roles" /></td>
    <td><code>array</code></td>
    <td>Roles associated with the resource set binding. If there are more than 100 bindings for the specified resource set, then the `_links.next` resource is returned with the next list of bindings.</td>
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
    <td><a href="#get_binding"><CopyableCode code="get_binding" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceSetIdOrLabel"><code>resourceSetIdOrLabel</code></a>, <a href="#parameter-roleIdOrLabel"><code>roleIdOrLabel</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the binding of a role (identified by `roleIdOrLabel`) for a resource set (identified by `resourceSetIdOrLabel`)</td>
</tr>
<tr>
    <td><a href="#list_bindings"><CopyableCode code="list_bindings" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceSetIdOrLabel"><code>resourceSetIdOrLabel</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a></td>
    <td>Lists all bindings for a resource set with pagination support.<br /><br />The returned `roles` array contains the roles for each binding associated with the specified resource set. If there are more than 100 bindings for the specified resource set, `links.next` provides the resource with pagination for the next list of bindings.</td>
</tr>
<tr>
    <td><a href="#create_resource_set_binding"><CopyableCode code="create_resource_set_binding" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceSetIdOrLabel"><code>resourceSetIdOrLabel</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a binding for the resource set, custom role, and members (users or groups)<br /><br />&gt; **Note:** If you use a custom role with permissions that don't apply to the resources in the resource set, it doesn't affect the admin role. For example,<br /> the `okta.users.userprofile.manage` permission gives the admin no privileges if it's granted to a resource set that only includes `https://&#123;yourOktaDomain&#125;/api/v1/groups/&#123;targetGroupId&#125;`<br /> resources. If you want the admin to be able to manage the users within the group, the resource set must include the corresponding `https://&#123;yourOktaDomain&#125;/api/v1/groups/&#123;targetGroupId&#125;/users` resource.</td>
</tr>
<tr>
    <td><a href="#delete_binding"><CopyableCode code="delete_binding" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceSetIdOrLabel"><code>resourceSetIdOrLabel</code></a>, <a href="#parameter-roleIdOrLabel"><code>roleIdOrLabel</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a binding of a role (identified by `roleIdOrLabel`) and a resource set (identified by `resourceSetIdOrLabel`)</td>
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
    defaultValue="get_binding"
    values={[
        { label: 'get_binding', value: 'get_binding' },
        { label: 'list_bindings', value: 'list_bindings' }
    ]}
>
<TabItem value="get_binding">

Retrieves the binding of a role (identified by `roleIdOrLabel`) for a resource set (identified by `resourceSetIdOrLabel`)

```sql
SELECT
id,
_links
FROM okta.iam.role_resource_set_bindings
WHERE resourceSetIdOrLabel = '{{ resourceSetIdOrLabel }}' -- required
AND roleIdOrLabel = '{{ roleIdOrLabel }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_bindings">

Lists all bindings for a resource set with pagination support.<br /><br />The returned `roles` array contains the roles for each binding associated with the specified resource set. If there are more than 100 bindings for the specified resource set, `links.next` provides the resource with pagination for the next list of bindings.

```sql
SELECT
_links,
roles
FROM okta.iam.role_resource_set_bindings
WHERE resourceSetIdOrLabel = '{{ resourceSetIdOrLabel }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_resource_set_binding"
    values={[
        { label: 'create_resource_set_binding', value: 'create_resource_set_binding' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_resource_set_binding">

Creates a binding for the resource set, custom role, and members (users or groups)<br /><br />&gt; **Note:** If you use a custom role with permissions that don't apply to the resources in the resource set, it doesn't affect the admin role. For example,<br /> the `okta.users.userprofile.manage` permission gives the admin no privileges if it's granted to a resource set that only includes `https://&#123;yourOktaDomain&#125;/api/v1/groups/&#123;targetGroupId&#125;`<br /> resources. If you want the admin to be able to manage the users within the group, the resource set must include the corresponding `https://&#123;yourOktaDomain&#125;/api/v1/groups/&#123;targetGroupId&#125;/users` resource.

```sql
INSERT INTO okta.iam.role_resource_set_bindings (
members,
role,
resourceSetIdOrLabel,
subdomain
)
SELECT 
'{{ members }}',
'{{ role }}',
'{{ resourceSetIdOrLabel }}',
'{{ subdomain }}'
RETURNING
_links
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: role_resource_set_bindings
  props:
    - name: resourceSetIdOrLabel
      value: "{{ resourceSetIdOrLabel }}"
      description: Required parameter for the role_resource_set_bindings resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the role_resource_set_bindings resource.
    - name: members
      value:
        - "{{ members }}"
      description: |
        URLs to user and/or group instances that are assigned to the role
    - name: role
      value: "{{ role }}"
      description: |
        Unique key for the role
`}</CodeBlock>

</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_binding"
    values={[
        { label: 'delete_binding', value: 'delete_binding' }
    ]}
>
<TabItem value="delete_binding">

Deletes a binding of a role (identified by `roleIdOrLabel`) and a resource set (identified by `resourceSetIdOrLabel`)

```sql
DELETE FROM okta.iam.role_resource_set_bindings
WHERE resourceSetIdOrLabel = '{{ resourceSetIdOrLabel }}' --required
AND roleIdOrLabel = '{{ roleIdOrLabel }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
