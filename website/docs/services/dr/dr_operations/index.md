--- 
title: dr_operations
hide_title: false
hide_table_of_contents: false
keywords:
  - dr_operations
  - dr
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

Creates, updates, deletes, gets or lists a <code>dr_operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="dr_operations" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.dr.dr_operations" /></td></tr>
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
    <td><a href="#start_org_failback"><CopyableCode code="start_org_failback" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Starts the failback of your org</td>
</tr>
<tr>
    <td><a href="#start_org_failover"><CopyableCode code="start_org_failover" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Starts the failover of your org</td>
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
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="start_org_failback"
    values={[
        { label: 'start_org_failback', value: 'start_org_failback' },
        { label: 'start_org_failover', value: 'start_org_failover' }
    ]}
>
<TabItem value="start_org_failback">

Starts the failback of your org

```sql
EXEC okta.dr.dr_operations.start_org_failback 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"domains": "{{ domains }}"
}'
;
```
</TabItem>
<TabItem value="start_org_failover">

Starts the failover of your org

```sql
EXEC okta.dr.dr_operations.start_org_failover 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"domains": "{{ domains }}"
}'
;
```
</TabItem>
</Tabs>
