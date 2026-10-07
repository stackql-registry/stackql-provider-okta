--- 
title: sign_out_page_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - sign_out_page_settings
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

Creates, updates, deletes, gets or lists a <code>sign_out_page_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="sign_out_page_settings" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.brands.sign_out_page_settings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_sign_out_page_settings"
    values={[
        { label: 'get_sign_out_page_settings', value: 'get_sign_out_page_settings' }
    ]}
>
<TabItem value="get_sign_out_page_settings">

Successfully retrieved the sign-out page settings.

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
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td> (EXTERNALLY_HOSTED, OKTA_DEFAULT)</td>
</tr>
<tr>
    <td><CopyableCode code="url" /></td>
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
    <td><a href="#get_sign_out_page_settings"><CopyableCode code="get_sign_out_page_settings" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-brandId"><code>brandId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the sign-out page settings</td>
</tr>
<tr>
    <td><a href="#replace_sign_out_page_settings"><CopyableCode code="replace_sign_out_page_settings" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-brandId"><code>brandId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Replaces the sign-out page settings</td>
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
    defaultValue="get_sign_out_page_settings"
    values={[
        { label: 'get_sign_out_page_settings', value: 'get_sign_out_page_settings' }
    ]}
>
<TabItem value="get_sign_out_page_settings">

Retrieves the sign-out page settings

```sql
SELECT
type,
url
FROM okta.brands.sign_out_page_settings
WHERE brandId = '{{ brandId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_sign_out_page_settings"
    values={[
        { label: 'replace_sign_out_page_settings', value: 'replace_sign_out_page_settings' }
    ]}
>
<TabItem value="replace_sign_out_page_settings">

Replaces the sign-out page settings

```sql
REPLACE okta.brands.sign_out_page_settings
SET 
type = '{{ type }}',
url = '{{ url }}'
WHERE 
brandId = '{{ brandId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND type = '{{ type }}' --required
RETURNING
type,
url;
```
</TabItem>
</Tabs>
