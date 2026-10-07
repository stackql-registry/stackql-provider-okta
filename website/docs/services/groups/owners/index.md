--- 
title: owners
hide_title: false
hide_table_of_contents: false
keywords:
  - owners
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

Creates, updates, deletes, gets or lists an <code>owners</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="owners" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.groups.owners" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_group_owners"
    values={[
        { label: 'list_group_owners', value: 'list_group_owners' }
    ]}
>
<TabItem value="list_group_owners">

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
    <td>The `id` of the group owner</td>
</tr>
<tr>
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>The display name of the group owner</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the group owner was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="originId" /></td>
    <td><code>string</code></td>
    <td>The ID of the app instance if the `originType` is `APPLICATION`. This value is `NULL` if `originType` is `OKTA_DIRECTORY`.</td>
</tr>
<tr>
    <td><CopyableCode code="originType" /></td>
    <td><code>string</code></td>
    <td>The source where group ownership is managed (APPLICATION, OKTA_DIRECTORY)</td>
</tr>
<tr>
    <td><CopyableCode code="resolved" /></td>
    <td><code>boolean</code></td>
    <td>If `originType`is APPLICATION, this parameter is set to `FALSE` until the owner's `originId` is reconciled with an associated Okta ID.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The entity type of the owner (GROUP, USER)</td>
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
    <td><a href="#list_group_owners"><CopyableCode code="list_group_owners" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-search"><code>search</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all owners for a specific group</td>
</tr>
<tr>
    <td><a href="#assign_group_owner"><CopyableCode code="assign_group_owner" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Assigns a group owner</td>
</tr>
<tr>
    <td><a href="#delete_group_owner"><CopyableCode code="delete_group_owner" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-ownerId"><code>ownerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a group owner from a specific group</td>
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
<tr id="parameter-ownerId">
    <td><CopyableCode code="ownerId" /></td>
    <td><code>string</code></td>
    <td>The `id` of the group owner</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>Specifies the pagination cursor for the next page of owners</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of owner results in a page</td>
</tr>
<tr id="parameter-search">
    <td><CopyableCode code="search" /></td>
    <td><code>string</code></td>
    <td>SCIM filter expression for group owners. Allows you to filter owners by type.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_group_owners"
    values={[
        { label: 'list_group_owners', value: 'list_group_owners' }
    ]}
>
<TabItem value="list_group_owners">

Lists all owners for a specific group

```sql
SELECT
id,
displayName,
lastUpdated,
originId,
originType,
resolved,
type
FROM okta.groups.owners
WHERE groupId = '{{ groupId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND search = '{{ search }}'
AND after = '{{ after }}'
AND limit = '{{ limit }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="assign_group_owner"
    values={[
        { label: 'assign_group_owner', value: 'assign_group_owner' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="assign_group_owner">

Assigns a group owner

```sql
INSERT INTO okta.groups.owners (
id,
type,
groupId,
subdomain
)
SELECT 
'{{ id }}',
'{{ type }}',
'{{ groupId }}',
'{{ subdomain }}'
RETURNING
id,
displayName,
lastUpdated,
originId,
originType,
resolved,
type
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: owners
  props:
    - name: groupId
      value: "{{ groupId }}"
      description: Required parameter for the owners resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the owners resource.
    - name: id
      value: "{{ id }}"
      description: |
        The \`id\` of the group owner
    - name: type
      value: "{{ type }}"
      description: |
        The entity type of the owner
      valid_values: ['GROUP', 'USER']
`}</CodeBlock>

</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_group_owner"
    values={[
        { label: 'delete_group_owner', value: 'delete_group_owner' }
    ]}
>
<TabItem value="delete_group_owner">

Deletes a group owner from a specific group

```sql
DELETE FROM okta.groups.owners
WHERE groupId = '{{ groupId }}' --required
AND ownerId = '{{ ownerId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
