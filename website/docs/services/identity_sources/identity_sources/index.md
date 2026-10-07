--- 
title: identity_sources
hide_title: false
hide_table_of_contents: false
keywords:
  - identity_sources
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

Creates, updates, deletes, gets or lists an <code>identity_sources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="identity_sources" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.identity_sources.identity_sources" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#upload_identity_source_data_for_delete"><CopyableCode code="upload_identity_source_data_for_delete" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-sessionId"><code>sessionId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Uploads external IDs of entities that need to be deleted in Okta from the identity source for the given session</td>
</tr>
<tr>
    <td><a href="#upload_identity_source_group_memberships_for_delete"><CopyableCode code="upload_identity_source_group_memberships_for_delete" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-sessionId"><code>sessionId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Uploads the group memberships that need to be deleted in Okta from the identity source for the given session</td>
</tr>
<tr>
    <td><a href="#upload_identity_source_group_memberships_for_upsert"><CopyableCode code="upload_identity_source_group_memberships_for_upsert" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-sessionId"><code>sessionId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Uploads the group memberships that need to be inserted or updated in Okta from the identity source for the given session</td>
</tr>
<tr>
    <td><a href="#upload_identity_source_groups_data_for_delete"><CopyableCode code="upload_identity_source_groups_data_for_delete" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-sessionId"><code>sessionId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Uploads external IDs of groups that need to be deleted in Okta from the identity source for the given session</td>
</tr>
<tr>
    <td><a href="#upload_identity_source_groups_for_upsert"><CopyableCode code="upload_identity_source_groups_for_upsert" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-sessionId"><code>sessionId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Uploads the group profiles without memberships that need to be inserted or updated in Okta from the identity source for the given session</td>
</tr>
<tr>
    <td><a href="#upload_identity_source_data_for_upsert"><CopyableCode code="upload_identity_source_data_for_upsert" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-sessionId"><code>sessionId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Uploads entities that need to be inserted or updated in Okta from the identity source for the given session</td>
</tr>
<tr>
    <td><a href="#start_import_from_identity_source"><CopyableCode code="start_import_from_identity_source" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-sessionId"><code>sessionId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Starts the import from the identity source described by the uploaded bulk operations</td>
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
<tr id="parameter-identitySourceId">
    <td><CopyableCode code="identitySourceId" /></td>
    <td><code>string</code></td>
    <td>The ID of the identity source for which the session is created (example: 0oa3l6l6WK6h0R0QW0g4)</td>
</tr>
<tr id="parameter-sessionId">
    <td><CopyableCode code="sessionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the identity source session (example: aps1qqonvr2SZv6o70h8)</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="upload_identity_source_data_for_delete"
    values={[
        { label: 'upload_identity_source_data_for_delete', value: 'upload_identity_source_data_for_delete' },
        { label: 'upload_identity_source_group_memberships_for_delete', value: 'upload_identity_source_group_memberships_for_delete' },
        { label: 'upload_identity_source_group_memberships_for_upsert', value: 'upload_identity_source_group_memberships_for_upsert' },
        { label: 'upload_identity_source_groups_data_for_delete', value: 'upload_identity_source_groups_data_for_delete' },
        { label: 'upload_identity_source_groups_for_upsert', value: 'upload_identity_source_groups_for_upsert' },
        { label: 'upload_identity_source_data_for_upsert', value: 'upload_identity_source_data_for_upsert' },
        { label: 'start_import_from_identity_source', value: 'start_import_from_identity_source' }
    ]}
>
<TabItem value="upload_identity_source_data_for_delete">

Uploads external IDs of entities that need to be deleted in Okta from the identity source for the given session

```sql
EXEC okta.identity_sources.identity_sources.upload_identity_source_data_for_delete 
@identitySourceId='{{ identitySourceId }}' --required, 
@sessionId='{{ sessionId }}' --required, 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"entityType": "{{ entityType }}", 
"profiles": "{{ profiles }}"
}'
;
```
</TabItem>
<TabItem value="upload_identity_source_group_memberships_for_delete">

Uploads the group memberships that need to be deleted in Okta from the identity source for the given session

```sql
EXEC okta.identity_sources.identity_sources.upload_identity_source_group_memberships_for_delete 
@identitySourceId='{{ identitySourceId }}' --required, 
@sessionId='{{ sessionId }}' --required, 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"memberships": "{{ memberships }}"
}'
;
```
</TabItem>
<TabItem value="upload_identity_source_group_memberships_for_upsert">

Uploads the group memberships that need to be inserted or updated in Okta from the identity source for the given session

```sql
EXEC okta.identity_sources.identity_sources.upload_identity_source_group_memberships_for_upsert 
@identitySourceId='{{ identitySourceId }}' --required, 
@sessionId='{{ sessionId }}' --required, 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"memberships": "{{ memberships }}"
}'
;
```
</TabItem>
<TabItem value="upload_identity_source_groups_data_for_delete">

Uploads external IDs of groups that need to be deleted in Okta from the identity source for the given session

```sql
EXEC okta.identity_sources.identity_sources.upload_identity_source_groups_data_for_delete 
@identitySourceId='{{ identitySourceId }}' --required, 
@sessionId='{{ sessionId }}' --required, 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"externalIds": "{{ externalIds }}"
}'
;
```
</TabItem>
<TabItem value="upload_identity_source_groups_for_upsert">

Uploads the group profiles without memberships that need to be inserted or updated in Okta from the identity source for the given session

```sql
EXEC okta.identity_sources.identity_sources.upload_identity_source_groups_for_upsert 
@identitySourceId='{{ identitySourceId }}' --required, 
@sessionId='{{ sessionId }}' --required, 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"profiles": "{{ profiles }}"
}'
;
```
</TabItem>
<TabItem value="upload_identity_source_data_for_upsert">

Uploads entities that need to be inserted or updated in Okta from the identity source for the given session

```sql
EXEC okta.identity_sources.identity_sources.upload_identity_source_data_for_upsert 
@identitySourceId='{{ identitySourceId }}' --required, 
@sessionId='{{ sessionId }}' --required, 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"entityType": "{{ entityType }}", 
"profiles": "{{ profiles }}"
}'
;
```
</TabItem>
<TabItem value="start_import_from_identity_source">

Starts the import from the identity source described by the uploaded bulk operations

```sql
EXEC okta.identity_sources.identity_sources.start_import_from_identity_source 
@identitySourceId='{{ identitySourceId }}' --required, 
@sessionId='{{ sessionId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
