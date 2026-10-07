--- 
title: groups
hide_title: false
hide_table_of_contents: false
keywords:
  - groups
  - identity_sources
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

Creates, updates, deletes, gets or lists a <code>groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="groups" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.identity_sources.groups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_identity_source_group"
    values={[
        { label: 'get_identity_source_group', value: 'get_identity_source_group' }
    ]}
>
<TabItem value="get_identity_source_group">

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
    <td>The Okta group ID of the identity source group</td>
</tr>
<tr>
    <td><CopyableCode code="externalId" /></td>
    <td><code>string</code></td>
    <td>The external ID of the identity source group</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>The profile information of the group</td>
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
    <td><a href="#get_identity_source_group"><CopyableCode code="get_identity_source_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-groupOrExternalId"><code>groupOrExternalId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a group from an identity source for a given identity source ID and group ID or external ID</td>
</tr>
<tr>
    <td><a href="#create_identity_source_groups"><CopyableCode code="create_identity_source_groups" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a group in an identity source for the given identity source instance</td>
</tr>
<tr>
    <td><a href="#update_identity_source_groups"><CopyableCode code="update_identity_source_groups" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-groupOrExternalId"><code>groupOrExternalId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates a group to an identity source for the given identity source instance and group ID</td>
</tr>
<tr>
    <td><a href="#delete_identity_source_group"><CopyableCode code="delete_identity_source_group" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-groupOrExternalId"><code>groupOrExternalId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a group in an identity source for a given identity source ID and group ID</td>
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
<tr id="parameter-groupOrExternalId">
    <td><CopyableCode code="groupOrExternalId" /></td>
    <td><code>string</code></td>
    <td>The Okta group ID or external ID of the identity source group (example: 00gsl4xM9ys8TdnbZ0g4 or GROUPEXT123456784C2IF)</td>
</tr>
<tr id="parameter-identitySourceId">
    <td><CopyableCode code="identitySourceId" /></td>
    <td><code>string</code></td>
    <td>The ID of the identity source for which the session is created (example: 0oa3l6l6WK6h0R0QW0g4)</td>
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
    defaultValue="get_identity_source_group"
    values={[
        { label: 'get_identity_source_group', value: 'get_identity_source_group' }
    ]}
>
<TabItem value="get_identity_source_group">

Retrieves a group from an identity source for a given identity source ID and group ID or external ID

```sql
SELECT
id,
externalId,
profile
FROM okta.identity_sources.groups
WHERE identitySourceId = '{{ identitySourceId }}' -- required
AND groupOrExternalId = '{{ groupOrExternalId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_identity_source_groups"
    values={[
        { label: 'create_identity_source_groups', value: 'create_identity_source_groups' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_identity_source_groups">

Creates a group in an identity source for the given identity source instance

```sql
INSERT INTO okta.identity_sources.groups (
externalId,
profile,
identitySourceId,
subdomain
)
SELECT 
'{{ externalId }}',
'{{ profile }}',
'{{ identitySourceId }}',
'{{ subdomain }}'
RETURNING
id,
externalId,
profile
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: groups
  props:
    - name: identitySourceId
      value: "{{ identitySourceId }}"
      description: Required parameter for the groups resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the groups resource.
    - name: externalId
      value: "{{ externalId }}"
      description: |
        The external ID of the identity source group to be created
    - name: profile
      description: |
        Contains a set of external group attributes and their values that are mapped to Okta standard properties. See the group [\`profile\` object](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Group/#tag/Group/operation/getGroup!c=200&path=profile&t=response) and Declaration of a Custom Identity Source Schema in [Using anything as a source](https://help.okta.com/okta_help.htm?type=oie&id=ext-anything-as-a-source).
        > **Note:** Profile attributes can only be of the string type.
      value:
        description: "{{ description }}"
        displayName: "{{ displayName }}"
`}</CodeBlock>

</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_identity_source_groups"
    values={[
        { label: 'update_identity_source_groups', value: 'update_identity_source_groups' }
    ]}
>
<TabItem value="update_identity_source_groups">

Updates a group to an identity source for the given identity source instance and group ID

```sql
UPDATE okta.identity_sources.groups
SET 
externalId = '{{ externalId }}',
profile = '{{ profile }}'
WHERE 
identitySourceId = '{{ identitySourceId }}' --required
AND groupOrExternalId = '{{ groupOrExternalId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
externalId,
profile;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_identity_source_group"
    values={[
        { label: 'delete_identity_source_group', value: 'delete_identity_source_group' }
    ]}
>
<TabItem value="delete_identity_source_group">

Deletes a group in an identity source for a given identity source ID and group ID

```sql
DELETE FROM okta.identity_sources.groups
WHERE identitySourceId = '{{ identitySourceId }}' --required
AND groupOrExternalId = '{{ groupOrExternalId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
