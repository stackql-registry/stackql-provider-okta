--- 
title: cross_app_access_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - cross_app_access_connections
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

Creates, updates, deletes, gets or lists a <code>cross_app_access_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="cross_app_access_connections" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.apps.cross_app_access_connections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_cross_app_access_connection"
    values={[
        { label: 'get_cross_app_access_connection', value: 'get_cross_app_access_connection' },
        { label: 'get_all_cross_app_access_connections', value: 'get_all_cross_app_access_connections' }
    ]}
>
<TabItem value="get_cross_app_access_connection">

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
    <td>Unique identifier for the connection (example: cwofxqCAJWWGELFTYASJ)</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>The ISO 8601 formatted date and time when the connection was created (example: 2024-10-15T10:30:00.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The ISO 8601 formatted date and time when the connection was last updated (example: 2024-10-15T14:20:00.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="requestingAppInstanceId" /></td>
    <td><code>string</code></td>
    <td>ID of the requesting app instance (example: 0oafxqCAJWWGELFTYASJ)</td>
</tr>
<tr>
    <td><CopyableCode code="resourceAppInstanceId" /></td>
    <td><code>string</code></td>
    <td>ID of the resource app instance (example: 0oafxqCBJWWGELFTYASK)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Indicates if the Cross App Access connection is active or inactive (ACTIVE, INACTIVE) (example: ACTIVE)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_all_cross_app_access_connections">

Connection object for Cross App Access connections

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
    <td>Unique identifier for the connection (example: cwofxqCAJWWGELFTYASJ)</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>The ISO 8601 formatted date and time when the connection was created (example: 2024-10-15T10:30:00.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The ISO 8601 formatted date and time when the connection was last updated (example: 2024-10-15T14:20:00.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="requestingAppInstanceId" /></td>
    <td><code>string</code></td>
    <td>ID of the requesting app instance (example: 0oafxqCAJWWGELFTYASJ)</td>
</tr>
<tr>
    <td><CopyableCode code="resourceAppInstanceId" /></td>
    <td><code>string</code></td>
    <td>ID of the resource app instance (example: 0oafxqCBJWWGELFTYASK)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Indicates if the Cross App Access connection is active or inactive (ACTIVE, INACTIVE) (example: ACTIVE)</td>
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
    <td><a href="#get_cross_app_access_connection"><CopyableCode code="get_cross_app_access_connection" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-connectionId"><code>connectionId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the Cross App Access connection with the specified ID<br /></td>
</tr>
<tr>
    <td><a href="#get_all_cross_app_access_connections"><CopyableCode code="get_all_cross_app_access_connections" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-status"><code>status</code></a>, <a href="#parameter-requestingAppId"><code>requestingAppId</code></a>, <a href="#parameter-resourceAppId"><code>resourceAppId</code></a>, <a href="#parameter-activeAppsOnly"><code>activeAppsOnly</code></a>, <a href="#parameter-requestingAppName"><code>requestingAppName</code></a>, <a href="#parameter-resourceAppName"><code>resourceAppName</code></a></td>
    <td>Retrieves inbound and outbound Cross App Access connections associated with an app<br /></td>
</tr>
<tr>
    <td><a href="#create_cross_app_access_connection"><CopyableCode code="create_cross_app_access_connection" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a Cross App Access connection<br /></td>
</tr>
<tr>
    <td><a href="#update_cross_app_access_connection"><CopyableCode code="update_cross_app_access_connection" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-connectionId"><code>connectionId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-status"><code>status</code></a></td>
    <td></td>
    <td>Updates the Cross App Access connection with the specified ID<br /></td>
</tr>
<tr>
    <td><a href="#delete_cross_app_access_connection"><CopyableCode code="delete_cross_app_access_connection" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-connectionId"><code>connectionId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a Cross App Access connection with the specified ID<br /></td>
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
<tr id="parameter-connectionId">
    <td><CopyableCode code="connectionId" /></td>
    <td><code>string</code></td>
    <td>Connection ID</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-activeAppsOnly">
    <td><CopyableCode code="activeAppsOnly" /></td>
    <td><code>string</code></td>
    <td>When set to true, filters the result to include only connections where both the requesting and resource app have a status of ACTIVE (example: true)</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>Specifies the pagination cursor for the next page of connection results</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of results to return per page. The values:   * -1: Return all results (up to system maximum)   * 0: Return an empty result set   * Positive integer: Return up to that many results (capped at system maximum) </td>
</tr>
<tr id="parameter-requestingAppId">
    <td><CopyableCode code="requestingAppId" /></td>
    <td><code>string</code></td>
    <td>Filters only connections where the app with the specified ID is the requesting app (example: 0oa8mm6ktyXqkcs5t0g7)</td>
</tr>
<tr id="parameter-requestingAppName">
    <td><CopyableCode code="requestingAppName" /></td>
    <td><code>string</code></td>
    <td>Filters connections where the requesting app's name matches the provided search string (example: zoom)</td>
</tr>
<tr id="parameter-resourceAppId">
    <td><CopyableCode code="resourceAppId" /></td>
    <td><code>string</code></td>
    <td>Filters only connections where the app with the specified ID is the requesting app (example: 0oa8mmm7ruidxWhlf0g7)</td>
</tr>
<tr id="parameter-resourceAppName">
    <td><CopyableCode code="resourceAppName" /></td>
    <td><code>string</code></td>
    <td>Filters connections where the resource app's name matches the provided search string (example: box)</td>
</tr>
<tr id="parameter-status">
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Filters connections by their lifecycle status. When specified, only connections that match the specified status are returned.  (example: ACTIVE)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_cross_app_access_connection"
    values={[
        { label: 'get_cross_app_access_connection', value: 'get_cross_app_access_connection' },
        { label: 'get_all_cross_app_access_connections', value: 'get_all_cross_app_access_connections' }
    ]}
>
<TabItem value="get_cross_app_access_connection">

Retrieves the Cross App Access connection with the specified ID<br />

```sql
SELECT
id,
created,
lastUpdated,
requestingAppInstanceId,
resourceAppInstanceId,
status
FROM okta.apps.cross_app_access_connections
WHERE appId = '{{ appId }}' -- required
AND connectionId = '{{ connectionId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="get_all_cross_app_access_connections">

Retrieves inbound and outbound Cross App Access connections associated with an app<br />

```sql
SELECT
id,
created,
lastUpdated,
requestingAppInstanceId,
resourceAppInstanceId,
status
FROM okta.apps.cross_app_access_connections
WHERE appId = '{{ appId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
AND status = '{{ status }}'
AND requestingAppId = '{{ requestingAppId }}'
AND resourceAppId = '{{ resourceAppId }}'
AND activeAppsOnly = '{{ activeAppsOnly }}'
AND requestingAppName = '{{ requestingAppName }}'
AND resourceAppName = '{{ resourceAppName }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_cross_app_access_connection"
    values={[
        { label: 'create_cross_app_access_connection', value: 'create_cross_app_access_connection' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_cross_app_access_connection">

Creates a Cross App Access connection<br />

```sql
INSERT INTO okta.apps.cross_app_access_connections (
requestingAppInstanceId,
resourceAppInstanceId,
status,
appId,
subdomain
)
SELECT 
'{{ requestingAppInstanceId }}',
'{{ resourceAppInstanceId }}',
'{{ status }}',
'{{ appId }}',
'{{ subdomain }}'
RETURNING
id,
created,
lastUpdated,
requestingAppInstanceId,
resourceAppInstanceId,
status
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: cross_app_access_connections
  props:
    - name: appId
      value: "{{ appId }}"
      description: Required parameter for the cross_app_access_connections resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the cross_app_access_connections resource.
    - name: requestingAppInstanceId
      value: "{{ requestingAppInstanceId }}"
      description: |
        ID of the requesting app instance
    - name: resourceAppInstanceId
      value: "{{ resourceAppInstanceId }}"
      description: |
        ID of the resource app instance
    - name: status
      value: "{{ status }}"
      description: |
        Indicates if the Cross App Access connection is active or inactive
      valid_values: ['ACTIVE', 'INACTIVE']
`}</CodeBlock>

</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_cross_app_access_connection"
    values={[
        { label: 'update_cross_app_access_connection', value: 'update_cross_app_access_connection' }
    ]}
>
<TabItem value="update_cross_app_access_connection">

Updates the Cross App Access connection with the specified ID<br />

```sql
UPDATE okta.apps.cross_app_access_connections
SET 
status = '{{ status }}'
WHERE 
appId = '{{ appId }}' --required
AND connectionId = '{{ connectionId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND status = '{{ status }}' --required
RETURNING
id,
created,
lastUpdated,
requestingAppInstanceId,
resourceAppInstanceId,
status;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_cross_app_access_connection"
    values={[
        { label: 'delete_cross_app_access_connection', value: 'delete_cross_app_access_connection' }
    ]}
>
<TabItem value="delete_cross_app_access_connection">

Deletes a Cross App Access connection with the specified ID<br />

```sql
DELETE FROM okta.apps.cross_app_access_connections
WHERE appId = '{{ appId }}' --required
AND connectionId = '{{ connectionId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
