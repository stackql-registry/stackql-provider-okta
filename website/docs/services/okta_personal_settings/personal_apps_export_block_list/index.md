--- 
title: personal_apps_export_block_list
hide_title: false
hide_table_of_contents: false
keywords:
  - personal_apps_export_block_list
  - okta_personal_settings
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

Creates, updates, deletes, gets or lists a <code>personal_apps_export_block_list</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="personal_apps_export_block_list" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.okta_personal_settings.personal_apps_export_block_list" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_personal_apps_export_block_list"
    values={[
        { label: 'list_personal_apps_export_block_list', value: 'list_personal_apps_export_block_list' }
    ]}
>
<TabItem value="list_personal_apps_export_block_list">

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
    <td><CopyableCode code="domains" /></td>
    <td><code>array</code></td>
    <td>List of blocked email domains</td>
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
    <td><a href="#list_personal_apps_export_block_list"><CopyableCode code="list_personal_apps_export_block_list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all blocked email domains which are excluded from app migration</td>
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
    defaultValue="list_personal_apps_export_block_list"
    values={[
        { label: 'list_personal_apps_export_block_list', value: 'list_personal_apps_export_block_list' }
    ]}
>
<TabItem value="list_personal_apps_export_block_list">

Lists all blocked email domains which are excluded from app migration

```sql
SELECT
domains
FROM okta.okta_personal_settings.personal_apps_export_block_list
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
