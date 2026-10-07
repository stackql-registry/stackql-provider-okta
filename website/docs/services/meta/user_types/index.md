--- 
title: user_types
hide_title: false
hide_table_of_contents: false
keywords:
  - user_types
  - meta
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

Creates, updates, deletes, gets or lists a <code>user_types</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="user_types" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.meta.user_types" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_user_type"
    values={[
        { label: 'get_user_type', value: 'get_user_type' },
        { label: 'list_user_types', value: 'list_user_types' }
    ]}
>
<TabItem value="get_user_type">

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
    <td>The unique key for the user type</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the user type. The name must start with A-Z or a-z and contain only A-Z, a-z, 0-9, or underscore (_) characters. This value becomes read-only after creation and can't be updated.</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>A timestamp from when the user type was created</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>The user ID of the account that created the user type</td>
</tr>
<tr>
    <td><CopyableCode code="default" /></td>
    <td><code>boolean</code></td>
    <td>A boolean value to indicate if this is the default user type</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>The human-readable description of the user type</td>
</tr>
<tr>
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>The human-readable name of the user type</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>A timestamp from when the user type was most recently updated</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdatedBy" /></td>
    <td><code>string</code></td>
    <td>The user ID of the most recent account to edit the user type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_user_types">

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
    <td>The unique key for the user type</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the user type. The name must start with A-Z or a-z and contain only A-Z, a-z, 0-9, or underscore (_) characters. This value becomes read-only after creation and can't be updated.</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>A timestamp from when the user type was created</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>The user ID of the account that created the user type</td>
</tr>
<tr>
    <td><CopyableCode code="default" /></td>
    <td><code>boolean</code></td>
    <td>A boolean value to indicate if this is the default user type</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>The human-readable description of the user type</td>
</tr>
<tr>
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>The human-readable name of the user type</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>A timestamp from when the user type was most recently updated</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdatedBy" /></td>
    <td><code>string</code></td>
    <td>The user ID of the most recent account to edit the user type</td>
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
    <td><a href="#get_user_type"><CopyableCode code="get_user_type" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-typeId"><code>typeId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a user type by ID. Use `default` to fetch the default user type.</td>
</tr>
<tr>
    <td><a href="#list_user_types"><CopyableCode code="list_user_types" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all user types in your org</td>
</tr>
<tr>
    <td><a href="#create_user_type"><CopyableCode code="create_user_type" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-displayName"><code>displayName</code></a></td>
    <td></td>
    <td>Creates a new user type. Okta automatically creates a `default` user type for your org. You may add up to nine additional user types.<br />&gt; **Note**: New user types are based on the current default schema template. Modifications to this schema do not automatically propagate to previously created user types.</td>
</tr>
<tr>
    <td><a href="#update_user_type"><CopyableCode code="update_user_type" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-typeId"><code>typeId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates an existing user type. This operation is a partial update.<br />&gt; **Note**: You can only update the `displayName` and `description` elements. The `name` of an existing user type can't be changed.</td>
</tr>
<tr>
    <td><a href="#replace_user_type"><CopyableCode code="replace_user_type" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-typeId"><code>typeId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-displayName"><code>displayName</code></a>, <a href="#parameter-description"><code>description</code></a></td>
    <td></td>
    <td>Replaces an existing user type. This operation is a full update.<br />&gt; **Note**: The `name` of an existing user type can't be changed, but must be part of the request body. You can only replace the `displayName` and `description` elements.</td>
</tr>
<tr>
    <td><a href="#delete_user_type"><CopyableCode code="delete_user_type" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-typeId"><code>typeId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a user type permanently.<br />&gt; **Note**: You can't delete the default user type or a user type that is currently assigned to users.</td>
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
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-typeId">
    <td><CopyableCode code="typeId" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_user_type"
    values={[
        { label: 'get_user_type', value: 'get_user_type' },
        { label: 'list_user_types', value: 'list_user_types' }
    ]}
>
<TabItem value="get_user_type">

Retrieves a user type by ID. Use `default` to fetch the default user type.

```sql
SELECT
id,
name,
_links,
created,
createdBy,
default,
description,
displayName,
lastUpdated,
lastUpdatedBy
FROM okta.meta.user_types
WHERE typeId = '{{ typeId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_user_types">

Lists all user types in your org

```sql
SELECT
id,
name,
_links,
created,
createdBy,
default,
description,
displayName,
lastUpdated,
lastUpdatedBy
FROM okta.meta.user_types
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_user_type"
    values={[
        { label: 'create_user_type', value: 'create_user_type' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_user_type">

Creates a new user type. Okta automatically creates a `default` user type for your org. You may add up to nine additional user types.<br />&gt; **Note**: New user types are based on the current default schema template. Modifications to this schema do not automatically propagate to previously created user types.

```sql
INSERT INTO okta.meta.user_types (
description,
displayName,
name,
subdomain
)
SELECT 
'{{ description }}',
'{{ displayName }}' /* required */,
'{{ name }}' /* required */,
'{{ subdomain }}'
RETURNING
id,
name,
_links,
created,
createdBy,
default,
description,
displayName,
lastUpdated,
lastUpdatedBy
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: user_types
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the user_types resource.
    - name: description
      value: "{{ description }}"
      description: |
        The human-readable description of the user type
    - name: displayName
      value: "{{ displayName }}"
      description: |
        The human-readable name of the user type
    - name: name
      value: "{{ name }}"
      description: |
        The name of the user type. The name must start with A-Z or a-z and contain only A-Z, a-z, 0-9, or underscore (_) characters. This value becomes read-only after creation and can't be updated.
`}</CodeBlock>

</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_user_type"
    values={[
        { label: 'update_user_type', value: 'update_user_type' }
    ]}
>
<TabItem value="update_user_type">

Updates an existing user type. This operation is a partial update.<br />&gt; **Note**: You can only update the `displayName` and `description` elements. The `name` of an existing user type can't be changed.

```sql
UPDATE okta.meta.user_types
SET 
description = '{{ description }}',
displayName = '{{ displayName }}'
WHERE 
typeId = '{{ typeId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
created,
createdBy,
default,
description,
displayName,
lastUpdated,
lastUpdatedBy;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_user_type"
    values={[
        { label: 'replace_user_type', value: 'replace_user_type' }
    ]}
>
<TabItem value="replace_user_type">

Replaces an existing user type. This operation is a full update.<br />&gt; **Note**: The `name` of an existing user type can't be changed, but must be part of the request body. You can only replace the `displayName` and `description` elements.

```sql
REPLACE okta.meta.user_types
SET 
description = '{{ description }}',
displayName = '{{ displayName }}',
name = '{{ name }}'
WHERE 
typeId = '{{ typeId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND name = '{{ name }}' --required
AND displayName = '{{ displayName }}' --required
AND description = '{{ description }}' --required
RETURNING
id,
name,
_links,
created,
createdBy,
default,
description,
displayName,
lastUpdated,
lastUpdatedBy;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_user_type"
    values={[
        { label: 'delete_user_type', value: 'delete_user_type' }
    ]}
>
<TabItem value="delete_user_type">

Deletes a user type permanently.<br />&gt; **Note**: You can't delete the default user type or a user type that is currently assigned to users.

```sql
DELETE FROM okta.meta.user_types
WHERE typeId = '{{ typeId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
