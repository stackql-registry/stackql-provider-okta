--- 
title: error_page
hide_title: false
hide_table_of_contents: false
keywords:
  - error_page
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

Creates, updates, deletes, gets or lists an <code>error_page</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="error_page" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.brands.error_page" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_error_page"
    values={[
        { label: 'get_error_page', value: 'get_error_page' }
    ]}
>
<TabItem value="get_error_page">

Successfully retrieved the error page.

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
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
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
    <td><a href="#get_error_page"><CopyableCode code="get_error_page" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-brandId"><code>brandId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Retrieves the error page sub-resources. The `expand` query parameter specifies which sub-resources to include in the response.</td>
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
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>array</code></td>
    <td>Specifies additional metadata to be included in the response</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_error_page"
    values={[
        { label: 'get_error_page', value: 'get_error_page' }
    ]}
>
<TabItem value="get_error_page">

Retrieves the error page sub-resources. The `expand` query parameter specifies which sub-resources to include in the response.

```sql
SELECT
_embedded,
_links
FROM okta.brands.error_page
WHERE brandId = '{{ brandId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}'
;
```
</TabItem>
</Tabs>
