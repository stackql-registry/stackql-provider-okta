--- 
title: dr_status
hide_title: false
hide_table_of_contents: false
keywords:
  - dr_status
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

Creates, updates, deletes, gets or lists a <code>dr_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="dr_status" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.dr.dr_status" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_drstatus_for_domain"
    values={[
        { label: 'get_drstatus_for_domain', value: 'get_drstatus_for_domain' },
        { label: 'get_drstatus', value: 'get_drstatus' }
    ]}
>
<TabItem value="get_drstatus_for_domain">

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
    <td><CopyableCode code="domain" /></td>
    <td><code>string</code></td>
    <td>Domain for your org</td>
</tr>
<tr>
    <td><CopyableCode code="isFailedOver" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the domain has been failed over</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_drstatus">

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
    <td><CopyableCode code="domain" /></td>
    <td><code>string</code></td>
    <td>Domain for your org</td>
</tr>
<tr>
    <td><CopyableCode code="isFailedOver" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the domain has been failed over</td>
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
    <td><a href="#get_drstatus_for_domain"><CopyableCode code="get_drstatus_for_domain" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-domain"><code>domain</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the failover or failback status for the domain specified in the request path</td>
</tr>
<tr>
    <td><a href="#get_drstatus"><CopyableCode code="get_drstatus" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the failover or failback status for all the domains for your org</td>
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
<tr id="parameter-domain">
    <td><CopyableCode code="domain" /></td>
    <td><code>string</code></td>
    <td>The Okta domain name of your org or one of your custom domains</td>
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
    defaultValue="get_drstatus_for_domain"
    values={[
        { label: 'get_drstatus_for_domain', value: 'get_drstatus_for_domain' },
        { label: 'get_drstatus', value: 'get_drstatus' }
    ]}
>
<TabItem value="get_drstatus_for_domain">

Retrieves the failover or failback status for the domain specified in the request path

```sql
SELECT
domain,
isFailedOver
FROM okta.dr.dr_status
WHERE domain = '{{ domain }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="get_drstatus">

Retrieves the failover or failback status for all the domains for your org

```sql
SELECT
domain,
isFailedOver
FROM okta.dr.dr_status
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
