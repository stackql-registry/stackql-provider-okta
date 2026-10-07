--- 
title: roles
hide_title: false
hide_table_of_contents: false
keywords:
  - roles
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

Creates, updates, deletes, gets or lists a <code>roles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="roles" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.iam.roles" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_role"
    values={[
        { label: 'get_role', value: 'get_role' },
        { label: 'list_roles', value: 'list_roles' }
    ]}
>
<TabItem value="get_role">

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
    <td>Unique key for the role</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the role was created</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the role</td>
</tr>
<tr>
    <td><CopyableCode code="label" /></td>
    <td><code>string</code></td>
    <td>Unique label for the role</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the role was last updated</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_roles">

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
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the current status of an application using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. Use the `LinksNext` object for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="roles" /></td>
    <td><code>array</code></td>
    <td></td>
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
    <td><a href="#get_role"><CopyableCode code="get_role" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-roleIdOrLabel"><code>roleIdOrLabel</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a role by `roleIdOrLabel`</td>
</tr>
<tr>
    <td><a href="#list_roles"><CopyableCode code="list_roles" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a></td>
    <td>Lists all custom roles with pagination support</td>
</tr>
<tr>
    <td><a href="#create_role"><CopyableCode code="create_role" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-label"><code>label</code></a>, <a href="#parameter-description"><code>description</code></a>, <a href="#parameter-permissions"><code>permissions</code></a></td>
    <td></td>
    <td>Creates a custom role</td>
</tr>
<tr>
    <td><a href="#replace_role"><CopyableCode code="replace_role" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-roleIdOrLabel"><code>roleIdOrLabel</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-label"><code>label</code></a>, <a href="#parameter-description"><code>description</code></a></td>
    <td></td>
    <td>Replaces the label and description for a custom role by `roleIdOrLabel`</td>
</tr>
<tr>
    <td><a href="#delete_role"><CopyableCode code="delete_role" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-roleIdOrLabel"><code>roleIdOrLabel</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a custom role by `roleIdOrLabel`</td>
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
    defaultValue="get_role"
    values={[
        { label: 'get_role', value: 'get_role' },
        { label: 'list_roles', value: 'list_roles' }
    ]}
>
<TabItem value="get_role">

Retrieves a role by `roleIdOrLabel`

```sql
SELECT
id,
_links,
created,
description,
label,
lastUpdated
FROM okta.iam.roles
WHERE roleIdOrLabel = '{{ roleIdOrLabel }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_roles">

Lists all custom roles with pagination support

```sql
SELECT
_links,
roles
FROM okta.iam.roles
WHERE subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_role"
    values={[
        { label: 'create_role', value: 'create_role' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_role">

Creates a custom role

```sql
INSERT INTO okta.iam.roles (
description,
label,
permissions,
subdomain
)
SELECT 
'{{ description }}' /* required */,
'{{ label }}' /* required */,
'{{ permissions }}' /* required */,
'{{ subdomain }}'
RETURNING
id,
_links,
created,
description,
label,
lastUpdated
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: roles
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the roles resource.
    - name: description
      value: "{{ description }}"
      description: |
        Description of the role
    - name: label
      value: "{{ label }}"
      description: |
        Unique label for the role
    - name: permissions
      value:
        - "{{ permissions }}"
      description: |
        Array of permissions that the role grants. See [Permissions](https://developer.okta.com/docs/api/openapi/okta-management/guides/permissions).
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_role"
    values={[
        { label: 'replace_role', value: 'replace_role' }
    ]}
>
<TabItem value="replace_role">

Replaces the label and description for a custom role by `roleIdOrLabel`

```sql
REPLACE okta.iam.roles
SET 
description = '{{ description }}',
label = '{{ label }}'
WHERE 
roleIdOrLabel = '{{ roleIdOrLabel }}' --required
AND subdomain = '{{ subdomain }}' --required
AND label = '{{ label }}' --required
AND description = '{{ description }}' --required
RETURNING
id,
_links,
created,
description,
label,
lastUpdated;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_role"
    values={[
        { label: 'delete_role', value: 'delete_role' }
    ]}
>
<TabItem value="delete_role">

Deletes a custom role by `roleIdOrLabel`

```sql
DELETE FROM okta.iam.roles
WHERE roleIdOrLabel = '{{ roleIdOrLabel }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
