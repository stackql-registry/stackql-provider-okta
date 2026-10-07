--- 
title: agent_pool_update_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - agent_pool_update_settings
  - agentpools
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

Creates, updates, deletes, gets or lists an <code>agent_pool_update_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="agent_pool_update_settings" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.agentpools.agent_pool_update_settings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_agent_pools_update_settings"
    values={[
        { label: 'get_agent_pools_update_settings', value: 'get_agent_pools_update_settings' }
    ]}
>
<TabItem value="get_agent_pools_update_settings">

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
    <td><CopyableCode code="agentType" /></td>
    <td><code>string</code></td>
    <td>Agent types that are being monitored (AD, IWA, LDAP, MFA, OPP, RUM, Radius)</td>
</tr>
<tr>
    <td><CopyableCode code="continueOnError" /></td>
    <td><code>boolean</code></td>
    <td>Continues the update even if some agents fail to update</td>
</tr>
<tr>
    <td><CopyableCode code="latestVersion" /></td>
    <td><code>string</code></td>
    <td>Latest version of the agent (example: 3.20.0)</td>
</tr>
<tr>
    <td><CopyableCode code="minimalSupportedVersion" /></td>
    <td><code>string</code></td>
    <td>Minimal version of the agent (example: 3.19.0)</td>
</tr>
<tr>
    <td><CopyableCode code="poolId" /></td>
    <td><code>string</code></td>
    <td>ID of the agent pool that the settings apply to (example: 0oa3eu7ekG8tjbD9J5s6)</td>
</tr>
<tr>
    <td><CopyableCode code="poolName" /></td>
    <td><code>string</code></td>
    <td>Pool name (example: iwa.dc)</td>
</tr>
<tr>
    <td><CopyableCode code="releaseChannel" /></td>
    <td><code>string</code></td>
    <td>Release channel for auto-update (BETA, EA, GA, TEST)</td>
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
    <td><a href="#get_agent_pools_update_settings"><CopyableCode code="get_agent_pools_update_settings" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-poolId"><code>poolId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the current state of the agent pool update instance settings</td>
</tr>
<tr>
    <td><a href="#update_agent_pools_update_settings"><CopyableCode code="update_agent_pools_update_settings" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-poolId"><code>poolId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-agentType"><code>agentType</code></a></td>
    <td></td>
    <td>Updates an agent pool update instance settings</td>
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
<tr id="parameter-poolId">
    <td><CopyableCode code="poolId" /></td>
    <td><code>string</code></td>
    <td>ID of the agent pool for which the settings apply to</td>
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
    defaultValue="get_agent_pools_update_settings"
    values={[
        { label: 'get_agent_pools_update_settings', value: 'get_agent_pools_update_settings' }
    ]}
>
<TabItem value="get_agent_pools_update_settings">

Retrieves the current state of the agent pool update instance settings

```sql
SELECT
agentType,
continueOnError,
latestVersion,
minimalSupportedVersion,
poolId,
poolName,
releaseChannel
FROM okta.agentpools.agent_pool_update_settings
WHERE poolId = '{{ poolId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_agent_pools_update_settings"
    values={[
        { label: 'update_agent_pools_update_settings', value: 'update_agent_pools_update_settings' }
    ]}
>
<TabItem value="update_agent_pools_update_settings">

Updates an agent pool update instance settings

```sql
UPDATE okta.agentpools.agent_pool_update_settings
SET 
agentType = '{{ agentType }}',
continueOnError = {{ continueOnError }},
latestVersion = '{{ latestVersion }}',
minimalSupportedVersion = '{{ minimalSupportedVersion }}',
poolName = '{{ poolName }}',
releaseChannel = '{{ releaseChannel }}'
WHERE 
poolId = '{{ poolId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND agentType = '{{ agentType }}' --required
RETURNING
agentType,
continueOnError,
latestVersion,
minimalSupportedVersion,
poolId,
poolName,
releaseChannel;
```
</TabItem>
</Tabs>
