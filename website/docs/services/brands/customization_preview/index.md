--- 
title: customization_preview
hide_title: false
hide_table_of_contents: false
keywords:
  - customization_preview
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

Creates, updates, deletes, gets or lists a <code>customization_preview</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="customization_preview" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.brands.customization_preview" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_customization_preview"
    values={[
        { label: 'get_customization_preview', value: 'get_customization_preview' }
    ]}
>
<TabItem value="get_customization_preview">

Successfully generated a preview of the email customization.

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
    <td><CopyableCode code="body" /></td>
    <td><code>string</code></td>
    <td>The email's HTML body</td>
</tr>
<tr>
    <td><CopyableCode code="subject" /></td>
    <td><code>string</code></td>
    <td>The email's subject</td>
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
    <td><a href="#get_customization_preview"><CopyableCode code="get_customization_preview" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-brandId"><code>brandId</code></a>, <a href="#parameter-templateName"><code>templateName</code></a>, <a href="#parameter-customizationId"><code>customizationId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a Preview of an Email Customization. All variable references are populated from the current user's context. For example, `$&#123;user.profile.firstName&#125;`.<br /><br />&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; If Custom languages for Okta Email Templates is disabled, requests for the preview of an additional language customization by ID return a `404 Not Found` error response.<br /></td>
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
<tr id="parameter-customizationId">
    <td><CopyableCode code="customizationId" /></td>
    <td><code>string</code></td>
    <td>The ID of the email customization</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-templateName">
    <td><CopyableCode code="templateName" /></td>
    <td><code>string</code></td>
    <td>The name of the email template</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_customization_preview"
    values={[
        { label: 'get_customization_preview', value: 'get_customization_preview' }
    ]}
>
<TabItem value="get_customization_preview">

Retrieves a Preview of an Email Customization. All variable references are populated from the current user's context. For example, `$&#123;user.profile.firstName&#125;`.<br /><br />&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; If Custom languages for Okta Email Templates is disabled, requests for the preview of an additional language customization by ID return a `404 Not Found` error response.<br />

```sql
SELECT
_links,
body,
subject
FROM okta.brands.customization_preview
WHERE brandId = '{{ brandId }}' -- required
AND templateName = '{{ templateName }}' -- required
AND customizationId = '{{ customizationId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
