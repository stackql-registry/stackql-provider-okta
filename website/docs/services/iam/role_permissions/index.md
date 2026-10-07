--- 
title: role_permissions
hide_title: false
hide_table_of_contents: false
keywords:
  - role_permissions
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

Creates, updates, deletes, gets or lists a <code>role_permissions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="role_permissions" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.iam.role_permissions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_role_permission"
    values={[
        { label: 'get_role_permission', value: 'get_role_permission' },
        { label: 'list_role_permissions', value: 'list_role_permissions' }
    ]}
>
<TabItem value="get_role_permission">

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
    <td><CopyableCode code="conditions" /></td>
    <td><code>object</code></td>
    <td>Conditions for further restricting a permission. See [Permission conditions](https://help.okta.com/okta_help.htm?type=oie&id=ext-permission-conditions).</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the permission was assigned</td>
</tr>
<tr>
    <td><CopyableCode code="label" /></td>
    <td><code>string</code></td>
    <td>The assigned Okta [permission](https://developer.okta.com/docs/api/openapi/okta-management/guides/permissions) (example: okta.users.read)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the permission was last updated</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_role_permissions">

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
    <td><CopyableCode code="permissions" /></td>
    <td><code>array</code></td>
    <td>Array of permissions assigned to the role. See [Permissions](https://developer.okta.com/docs/api/openapi/okta-management/guides/permissions).</td>
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
    <td><a href="#get_role_permission"><CopyableCode code="get_role_permission" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-roleIdOrLabel"><code>roleIdOrLabel</code></a>, <a href="#parameter-permissionType"><code>permissionType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a permission (identified by `permissionType`) for a custom role</td>
</tr>
<tr>
    <td><a href="#list_role_permissions"><CopyableCode code="list_role_permissions" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-roleIdOrLabel"><code>roleIdOrLabel</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all permissions for a custom role by `roleIdOrLabel`</td>
</tr>
<tr>
    <td><a href="#create_role_permission"><CopyableCode code="create_role_permission" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-roleIdOrLabel"><code>roleIdOrLabel</code></a>, <a href="#parameter-permissionType"><code>permissionType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a permission (specified by `permissionType`) for a custom role</td>
</tr>
<tr>
    <td><a href="#replace_role_permission"><CopyableCode code="replace_role_permission" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-roleIdOrLabel"><code>roleIdOrLabel</code></a>, <a href="#parameter-permissionType"><code>permissionType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a permission (specified by `permissionType`) for a custom role</td>
</tr>
<tr>
    <td><a href="#delete_role_permission"><CopyableCode code="delete_role_permission" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-roleIdOrLabel"><code>roleIdOrLabel</code></a>, <a href="#parameter-permissionType"><code>permissionType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a permission (identified by `permissionType`) from a custom role</td>
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
<tr id="parameter-permissionType">
    <td><CopyableCode code="permissionType" /></td>
    <td><code>string</code></td>
    <td>An Okta [permission](https://developer.okta.com/docs/api/openapi/okta-management/guides/permissions)</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_role_permission"
    values={[
        { label: 'get_role_permission', value: 'get_role_permission' },
        { label: 'list_role_permissions', value: 'list_role_permissions' }
    ]}
>
<TabItem value="get_role_permission">

Retrieves a permission (identified by `permissionType`) for a custom role

```sql
SELECT
_links,
conditions,
created,
label,
lastUpdated
FROM okta.iam.role_permissions
WHERE roleIdOrLabel = '{{ roleIdOrLabel }}' -- required
AND permissionType = '{{ permissionType }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_role_permissions">

Lists all permissions for a custom role by `roleIdOrLabel`

```sql
SELECT
permissions
FROM okta.iam.role_permissions
WHERE roleIdOrLabel = '{{ roleIdOrLabel }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_role_permission"
    values={[
        { label: 'create_role_permission', value: 'create_role_permission' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_role_permission">

Creates a permission (specified by `permissionType`) for a custom role

```sql
INSERT INTO okta.iam.role_permissions (
conditions,
roleIdOrLabel,
permissionType,
subdomain
)
SELECT 
'{{ conditions }}',
'{{ roleIdOrLabel }}',
'{{ permissionType }}',
'{{ subdomain }}'
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: role_permissions
  props:
    - name: roleIdOrLabel
      value: "{{ roleIdOrLabel }}"
      description: Required parameter for the role_permissions resource.
    - name: permissionType
      value: "{{ permissionType }}"
      description: Required parameter for the role_permissions resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the role_permissions resource.
    - name: conditions
      description: |
        Conditions for further restricting a permission. See [Permission conditions](https://help.okta.com/okta_help.htm?type=oie&id=ext-permission-conditions).
      value:
        exclude: "{{ exclude }}"
        include: "{{ include }}"
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_role_permission"
    values={[
        { label: 'replace_role_permission', value: 'replace_role_permission' }
    ]}
>
<TabItem value="replace_role_permission">

Replaces a permission (specified by `permissionType`) for a custom role

```sql
REPLACE okta.iam.role_permissions
SET 
conditions = '{{ conditions }}'
WHERE 
roleIdOrLabel = '{{ roleIdOrLabel }}' --required
AND permissionType = '{{ permissionType }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
_links,
conditions,
created,
label,
lastUpdated;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_role_permission"
    values={[
        { label: 'delete_role_permission', value: 'delete_role_permission' }
    ]}
>
<TabItem value="delete_role_permission">

Deletes a permission (identified by `permissionType`) from a custom role

```sql
DELETE FROM okta.iam.role_permissions
WHERE roleIdOrLabel = '{{ roleIdOrLabel }}' --required
AND permissionType = '{{ permissionType }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
