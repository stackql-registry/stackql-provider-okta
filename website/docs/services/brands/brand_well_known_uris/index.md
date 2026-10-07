--- 
title: brand_well_known_uris
hide_title: false
hide_table_of_contents: false
keywords:
  - brand_well_known_uris
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

Creates, updates, deletes, gets or lists a <code>brand_well_known_uris</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="brand_well_known_uris" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.brands.brand_well_known_uris" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_brand_well_known_uri"
    values={[
        { label: 'get_brand_well_known_uri', value: 'get_brand_well_known_uri' }
    ]}
>
<TabItem value="get_brand_well_known_uri">

Successfully retrieved the customized well-known URI content

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
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="representation" /></td>
    <td><code>string</code></td>
    <td>The well-known URI content in JSON format (opaque JSON object)</td>
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
    <td><a href="#get_brand_well_known_uri"><CopyableCode code="get_brand_well_known_uri" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-brandId"><code>brandId</code></a>, <a href="#parameter-path"><code>path</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the customized content of a well-known URI for a specific brand and well-known URI path</td>
</tr>
<tr>
    <td><a href="#replace_brand_well_known_uri"><CopyableCode code="replace_brand_well_known_uri" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-brandId"><code>brandId</code></a>, <a href="#parameter-path"><code>path</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-representation"><code>representation</code></a></td>
    <td></td>
    <td>Replaces the content of a customized well-known URI that you specify.<br /><br />There are endpoint-specific format requirements when you update the content of a customized well-known URI. See [Customize associated domains](https://developer.okta.com/docs/guides/custom-well-known-uri/main/).</td>
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
<tr id="parameter-path">
    <td><CopyableCode code="path" /></td>
    <td><code>string</code></td>
    <td>The path of the well-known URI</td>
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
    defaultValue="get_brand_well_known_uri"
    values={[
        { label: 'get_brand_well_known_uri', value: 'get_brand_well_known_uri' }
    ]}
>
<TabItem value="get_brand_well_known_uri">

Retrieves the customized content of a well-known URI for a specific brand and well-known URI path

```sql
SELECT
_links,
representation
FROM okta.brands.brand_well_known_uris
WHERE brandId = '{{ brandId }}' -- required
AND path = '{{ path }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_brand_well_known_uri"
    values={[
        { label: 'replace_brand_well_known_uri', value: 'replace_brand_well_known_uri' }
    ]}
>
<TabItem value="replace_brand_well_known_uri">

Replaces the content of a customized well-known URI that you specify.<br /><br />There are endpoint-specific format requirements when you update the content of a customized well-known URI. See [Customize associated domains](https://developer.okta.com/docs/guides/custom-well-known-uri/main/).

```sql
REPLACE okta.brands.brand_well_known_uris
SET 
representation = '{{ representation }}'
WHERE 
brandId = '{{ brandId }}' --required
AND path = '{{ path }}' --required
AND subdomain = '{{ subdomain }}' --required
AND representation = '{{ representation }}' --required
RETURNING
_links,
representation;
```
</TabItem>
</Tabs>
