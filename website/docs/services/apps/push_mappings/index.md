--- 
title: push_mappings
hide_title: false
hide_table_of_contents: false
keywords:
  - push_mappings
  - apps
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

Creates, updates, deletes, gets or lists a <code>push_mappings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="push_mappings" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.apps.push_mappings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_group_push_mapping"
    values={[
        { label: 'get_group_push_mapping', value: 'get_group_push_mapping' },
        { label: 'list_group_push_mappings', value: 'list_group_push_mappings' }
    ]}
>
<TabItem value="get_group_push_mapping">

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
    <td>The ID of the group push mapping</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Discoverable resources related to the group push mapping</td>
</tr>
<tr>
    <td><CopyableCode code="appConfig" /></td>
    <td><code>object</code></td>
    <td>Additional app configuration for group push mappings. Currently only required for Active Directory.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the group push mapping was created</td>
</tr>
<tr>
    <td><CopyableCode code="errorSummary" /></td>
    <td><code>string</code></td>
    <td>The error message summary if the latest push failed</td>
</tr>
<tr>
    <td><CopyableCode code="lastPush" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the group push mapping was pushed</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the group push mapping was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="sourceGroupId" /></td>
    <td><code>string</code></td>
    <td>The ID of the source group for the group push mapping</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the group push mapping (ACTIVE, ERROR, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="targetGroupId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target group for the group push mapping</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_group_push_mappings">

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
    <td>The ID of the group push mapping</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Discoverable resources related to the group push mapping</td>
</tr>
<tr>
    <td><CopyableCode code="appConfig" /></td>
    <td><code>object</code></td>
    <td>Additional app configuration for group push mappings. Currently only required for Active Directory.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the group push mapping was created</td>
</tr>
<tr>
    <td><CopyableCode code="errorSummary" /></td>
    <td><code>string</code></td>
    <td>The error message summary if the latest push failed</td>
</tr>
<tr>
    <td><CopyableCode code="lastPush" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the group push mapping was pushed</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the group push mapping was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="sourceGroupId" /></td>
    <td><code>string</code></td>
    <td>The ID of the source group for the group push mapping</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the group push mapping (ACTIVE, ERROR, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="targetGroupId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target group for the group push mapping</td>
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
    <td><a href="#get_group_push_mapping"><CopyableCode code="get_group_push_mapping" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-mappingId"><code>mappingId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a group push mapping by ID</td>
</tr>
<tr>
    <td><a href="#list_group_push_mappings"><CopyableCode code="list_group_push_mappings" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-lastUpdated"><code>lastUpdated</code></a>, <a href="#parameter-sourceGroupId"><code>sourceGroupId</code></a>, <a href="#parameter-status"><code>status</code></a></td>
    <td>Lists all group push mappings with pagination support</td>
</tr>
<tr>
    <td><a href="#create_group_push_mapping"><CopyableCode code="create_group_push_mapping" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-sourceGroupId"><code>sourceGroupId</code></a></td>
    <td></td>
    <td>Creates or links a group push mapping.<br /><br />**Note:** Either `targetGroupId` or `targetGroupName` must be provided, but not both. If `targetGroupId` is provided, it links to an existing group. If `targetGroupName` is provided, it creates a new group.</td>
</tr>
<tr>
    <td><a href="#update_group_push_mapping"><CopyableCode code="update_group_push_mapping" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-mappingId"><code>mappingId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-status"><code>status</code></a></td>
    <td></td>
    <td>Updates the status of a group push mapping</td>
</tr>
<tr>
    <td><a href="#delete_group_push_mapping"><CopyableCode code="delete_group_push_mapping" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-deleteTargetGroup"><code>deleteTargetGroup</code></a>, <a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-mappingId"><code>mappingId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a specific group push mapping. The group push mapping must be in an `INACTIVE` state.</td>
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
<tr id="parameter-appId">
    <td><CopyableCode code="appId" /></td>
    <td><code>string</code></td>
    <td>Application ID</td>
</tr>
<tr id="parameter-deleteTargetGroup">
    <td><CopyableCode code="deleteTargetGroup" /></td>
    <td><code>string</code></td>
    <td>If set to `true`, the target group is also deleted. If set to `false`, the target group isn't deleted.</td>
</tr>
<tr id="parameter-mappingId">
    <td><CopyableCode code="mappingId" /></td>
    <td><code>string</code></td>
    <td>Group push mapping ID</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>Specifies the pagination cursor for the next page of mappings</td>
</tr>
<tr id="parameter-lastUpdated">
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string</code></td>
    <td>Filters group push mappings by last updated date. The `lastUpdated` parameter supports the following format: `YYYY-MM-DDTHH:mm:ssZ`. This filters mappings updated on or after the specified date and time in UTC.  If you don't specify a value, all group push mappings are returned.</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of results returned</td>
</tr>
<tr id="parameter-sourceGroupId">
    <td><CopyableCode code="sourceGroupId" /></td>
    <td><code>string</code></td>
    <td>Filters group push mappings by source group ID. If you don't specify a value, all group push mappings are returned.</td>
</tr>
<tr id="parameter-status">
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Filters group push mappings by status. If you don't specify a value, all group push mappings are returned.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_group_push_mapping"
    values={[
        { label: 'get_group_push_mapping', value: 'get_group_push_mapping' },
        { label: 'list_group_push_mappings', value: 'list_group_push_mappings' }
    ]}
>
<TabItem value="get_group_push_mapping">

Retrieves a group push mapping by ID

```sql
SELECT
id,
_links,
appConfig,
created,
errorSummary,
lastPush,
lastUpdated,
sourceGroupId,
status,
targetGroupId
FROM okta.apps.push_mappings
WHERE appId = '{{ appId }}' -- required
AND mappingId = '{{ mappingId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_group_push_mappings">

Lists all group push mappings with pagination support

```sql
SELECT
id,
_links,
appConfig,
created,
errorSummary,
lastPush,
lastUpdated,
sourceGroupId,
status,
targetGroupId
FROM okta.apps.push_mappings
WHERE appId = '{{ appId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
AND lastUpdated = '{{ lastUpdated }}'
AND sourceGroupId = '{{ sourceGroupId }}'
AND status = '{{ status }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_group_push_mapping"
    values={[
        { label: 'create_group_push_mapping', value: 'create_group_push_mapping' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_group_push_mapping">

Creates or links a group push mapping.<br /><br />**Note:** Either `targetGroupId` or `targetGroupName` must be provided, but not both. If `targetGroupId` is provided, it links to an existing group. If `targetGroupName` is provided, it creates a new group.

```sql
INSERT INTO okta.apps.push_mappings (
appConfig,
sourceGroupId,
status,
targetGroupId,
targetGroupName,
appId,
subdomain
)
SELECT 
'{{ appConfig }}',
'{{ sourceGroupId }}' /* required */,
'{{ status }}',
'{{ targetGroupId }}',
'{{ targetGroupName }}',
'{{ appId }}',
'{{ subdomain }}'
RETURNING
id,
_links,
appConfig,
created,
errorSummary,
lastPush,
lastUpdated,
sourceGroupId,
status,
targetGroupId
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: push_mappings
  props:
    - name: appId
      value: "{{ appId }}"
      description: Required parameter for the push_mappings resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the push_mappings resource.
    - name: appConfig
      description: |
        Additional app configuration for group push mappings. Currently only required for Active Directory.
      value:
        type: "{{ type }}"
    - name: sourceGroupId
      value: "{{ sourceGroupId }}"
      description: |
        The ID of the source group for the group push mapping
    - name: status
      value: "{{ status }}"
      description: |
        The status of the group push mapping
      valid_values: ['ACTIVE', 'INACTIVE']
      default: ACTIVE
    - name: targetGroupId
      value: "{{ targetGroupId }}"
      description: |
        The ID of the existing target group for the group push mapping. This is used to link to an existing group. Required if \`targetGroupName\` is not provided.
    - name: targetGroupName
      value: "{{ targetGroupName }}"
      description: |
        The name of the target group for the group push mapping. This is used when creating a new downstream group. If the group already exists, it links to the existing group. Required if \`targetGroupId\` is not provided.
`}</CodeBlock>

</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_group_push_mapping"
    values={[
        { label: 'update_group_push_mapping', value: 'update_group_push_mapping' }
    ]}
>
<TabItem value="update_group_push_mapping">

Updates the status of a group push mapping

```sql
UPDATE okta.apps.push_mappings
SET 
status = '{{ status }}'
WHERE 
appId = '{{ appId }}' --required
AND mappingId = '{{ mappingId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND status = '{{ status }}' --required
RETURNING
id,
_links,
appConfig,
created,
errorSummary,
lastPush,
lastUpdated,
sourceGroupId,
status,
targetGroupId;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_group_push_mapping"
    values={[
        { label: 'delete_group_push_mapping', value: 'delete_group_push_mapping' }
    ]}
>
<TabItem value="delete_group_push_mapping">

Deletes a specific group push mapping. The group push mapping must be in an `INACTIVE` state.

```sql
DELETE FROM okta.apps.push_mappings
WHERE deleteTargetGroup = '{{ deleteTargetGroup }}' --required
AND appId = '{{ appId }}' --required
AND mappingId = '{{ mappingId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
