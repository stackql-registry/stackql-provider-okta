--- 
title: sign_in_widget_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - sign_in_widget_versions
  - brands
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

Creates, updates, deletes, gets or lists a <code>sign_in_widget_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="sign_in_widget_versions" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.brands.sign_in_widget_versions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_all_sign_in_widget_versions"
    values={[
        { label: 'list_all_sign_in_widget_versions', value: 'list_all_sign_in_widget_versions' }
    ]}
>
<TabItem value="list_all_sign_in_widget_versions">

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
    <td><CopyableCode code="sign_in_widget_version" /></td>
    <td><code>string</code></td>
    <td></td>
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
    <td><a href="#list_all_sign_in_widget_versions"><CopyableCode code="list_all_sign_in_widget_versions" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-brandId"><code>brandId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all sign-in widget versions supported by the current org</td>
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
<tr id="parameter-brandId">
    <td><CopyableCode code="brandId" /></td>
    <td><code>string</code></td>
    <td>The ID of the brand</td>
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
    defaultValue="list_all_sign_in_widget_versions"
    values={[
        { label: 'list_all_sign_in_widget_versions', value: 'list_all_sign_in_widget_versions' }
    ]}
>
<TabItem value="list_all_sign_in_widget_versions">

Lists all sign-in widget versions supported by the current org

```sql
SELECT
sign_in_widget_version
FROM okta.brands.sign_in_widget_versions
WHERE brandId = '{{ brandId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
