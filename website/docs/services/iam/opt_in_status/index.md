--- 
title: opt_in_status
hide_title: false
hide_table_of_contents: false
keywords:
  - opt_in_status
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

Creates, updates, deletes, gets or lists an <code>opt_in_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="opt_in_status" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.iam.opt_in_status" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_opt_in_status"
    values={[
        { label: 'get_opt_in_status', value: 'get_opt_in_status' }
    ]}
>
<TabItem value="get_opt_in_status">

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
    <td>Link relations available</td>
</tr>
<tr>
    <td><CopyableCode code="optInStatus" /></td>
    <td><code>string</code></td>
    <td>The entitlement management opt-in status for the Admin Console (OPTING_IN, OPTED_IN, OPTING_OUT, OPTED_OUT)</td>
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
    <td><a href="#get_opt_in_status"><CopyableCode code="get_opt_in_status" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the entitlement management opt-in status for the Admin Console</td>
</tr>
<tr>
    <td><a href="#opt_in"><CopyableCode code="opt_in" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Opts in the Admin Console to entitlement management</td>
</tr>
<tr>
    <td><a href="#opt_out"><CopyableCode code="opt_out" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Opts out the Admin Console from entitlement management</td>
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

## `SELECT` examples

<Tabs
    defaultValue="get_opt_in_status"
    values={[
        { label: 'get_opt_in_status', value: 'get_opt_in_status' }
    ]}
>
<TabItem value="get_opt_in_status">

Retrieves the entitlement management opt-in status for the Admin Console

```sql
SELECT
_links,
optInStatus
FROM okta.iam.opt_in_status
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="opt_in"
    values={[
        { label: 'opt_in', value: 'opt_in' },
        { label: 'opt_out', value: 'opt_out' }
    ]}
>
<TabItem value="opt_in">

Opts in the Admin Console to entitlement management

```sql
EXEC okta.iam.opt_in_status.opt_in 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="opt_out">

Opts out the Admin Console from entitlement management

```sql
EXEC okta.iam.opt_in_status.opt_out 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
