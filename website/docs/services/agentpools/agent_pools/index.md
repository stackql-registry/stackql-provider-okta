--- 
title: agent_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - agent_pools
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

Creates, updates, deletes, gets or lists an <code>agent_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="agent_pools" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.agentpools.agent_pools" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_agent_pools"
    values={[
        { label: 'list_agent_pools', value: 'list_agent_pools' }
    ]}
>
<TabItem value="list_agent_pools">

An agent pool is a collection of agents that serve a common purpose. An agent pool has a unique ID within an org, and contains a collection of agents disjoint to every other agent pool, meaning that no two agent pools share an agent.

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
    <td>Agent pool ID</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Agent pool name</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="agents" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="disruptedAgents" /></td>
    <td><code>integer</code></td>
    <td>Number of agents in the pool that are in a disrupted state</td>
</tr>
<tr>
    <td><CopyableCode code="inactiveAgents" /></td>
    <td><code>integer</code></td>
    <td>Number of agents in the pool that are in an inactive state</td>
</tr>
<tr>
    <td><CopyableCode code="operationalStatus" /></td>
    <td><code>string</code></td>
    <td>Operational status of a given agent (DEGRADED, DISRUPTED, INACTIVE, OPERATIONAL)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Agent types that are being monitored (AD, IWA, LDAP, MFA, OPP, RUM, Radius)</td>
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
    <td><a href="#list_agent_pools"><CopyableCode code="list_agent_pools" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-limitPerPoolType"><code>limitPerPoolType</code></a>, <a href="#parameter-poolType"><code>poolType</code></a>, <a href="#parameter-after"><code>after</code></a></td>
    <td>Lists all agent pools with pagination support</td>
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
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](https://developer.okta.com/docs/api/#pagination) and [Link header](https://developer.okta.com/docs/api/#link-header).</td>
</tr>
<tr id="parameter-limitPerPoolType">
    <td><CopyableCode code="limitPerPoolType" /></td>
    <td><code>integer</code></td>
    <td>Maximum number of agent pools returned</td>
</tr>
<tr id="parameter-poolType">
    <td><CopyableCode code="poolType" /></td>
    <td><code>string</code></td>
    <td>Agent type to search for</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_agent_pools"
    values={[
        { label: 'list_agent_pools', value: 'list_agent_pools' }
    ]}
>
<TabItem value="list_agent_pools">

Lists all agent pools with pagination support

```sql
SELECT
id,
name,
_links,
agents,
disruptedAgents,
inactiveAgents,
operationalStatus,
type
FROM okta.agentpools.agent_pools
WHERE subdomain = '{{ subdomain }}' -- required
AND limitPerPoolType = '{{ limitPerPoolType }}'
AND poolType = '{{ poolType }}'
AND after = '{{ after }}'
;
```
</TabItem>
</Tabs>
