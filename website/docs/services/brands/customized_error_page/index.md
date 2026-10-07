--- 
title: customized_error_page
hide_title: false
hide_table_of_contents: false
keywords:
  - customized_error_page
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

Creates, updates, deletes, gets or lists a <code>customized_error_page</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="customized_error_page" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.brands.customized_error_page" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_customized_error_page"
    values={[
        { label: 'get_customized_error_page', value: 'get_customized_error_page' }
    ]}
>
<TabItem value="get_customized_error_page">

Successfully retrieved the customized error page.

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
    <td><CopyableCode code="contentSecurityPolicySetting" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="pageContent" /></td>
    <td><code>string</code></td>
    <td>The HTML for the page</td>
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
    <td><a href="#get_customized_error_page"><CopyableCode code="get_customized_error_page" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-brandId"><code>brandId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the customized error page. The customized error page appears in your live environment.</td>
</tr>
<tr>
    <td><a href="#replace_customized_error_page"><CopyableCode code="replace_customized_error_page" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-brandId"><code>brandId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the customized error page. The customized error page appears in your live environment.</td>
</tr>
<tr>
    <td><a href="#delete_customized_error_page"><CopyableCode code="delete_customized_error_page" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-brandId"><code>brandId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes the customized error page. As a result, the default error page appears in your live environment.</td>
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
    defaultValue="get_customized_error_page"
    values={[
        { label: 'get_customized_error_page', value: 'get_customized_error_page' }
    ]}
>
<TabItem value="get_customized_error_page">

Retrieves the customized error page. The customized error page appears in your live environment.

```sql
SELECT
contentSecurityPolicySetting,
pageContent
FROM okta.brands.customized_error_page
WHERE brandId = '{{ brandId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_customized_error_page"
    values={[
        { label: 'replace_customized_error_page', value: 'replace_customized_error_page' }
    ]}
>
<TabItem value="replace_customized_error_page">

Replaces the customized error page. The customized error page appears in your live environment.

```sql
REPLACE okta.brands.customized_error_page
SET 
pageContent = '{{ pageContent }}',
contentSecurityPolicySetting = '{{ contentSecurityPolicySetting }}'
WHERE 
brandId = '{{ brandId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
contentSecurityPolicySetting,
pageContent;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_customized_error_page"
    values={[
        { label: 'delete_customized_error_page', value: 'delete_customized_error_page' }
    ]}
>
<TabItem value="delete_customized_error_page">

Deletes the customized error page. As a result, the default error page appears in your live environment.

```sql
DELETE FROM okta.brands.customized_error_page
WHERE brandId = '{{ brandId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
