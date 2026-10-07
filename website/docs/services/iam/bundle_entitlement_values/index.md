--- 
title: bundle_entitlement_values
hide_title: false
hide_table_of_contents: false
keywords:
  - bundle_entitlement_values
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

Creates, updates, deletes, gets or lists a <code>bundle_entitlement_values</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="bundle_entitlement_values" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.iam.bundle_entitlement_values" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_bundle_entitlement_values"
    values={[
        { label: 'list_bundle_entitlement_values', value: 'list_bundle_entitlement_values' }
    ]}
>
<TabItem value="list_bundle_entitlement_values">

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
    <td><CopyableCode code="entitlementValues" /></td>
    <td><code>array</code></td>
    <td>List of entitlement values for a bundle entitlement</td>
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
    <td><a href="#list_bundle_entitlement_values"><CopyableCode code="list_bundle_entitlement_values" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-bundleId"><code>bundleId</code></a>, <a href="#parameter-entitlementId"><code>entitlementId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all entitlement values that are specific to a governance bundle entitlement</td>
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
<tr id="parameter-bundleId">
    <td><CopyableCode code="bundleId" /></td>
    <td><code>string</code></td>
    <td>The `id` of a bundle</td>
</tr>
<tr id="parameter-entitlementId">
    <td><CopyableCode code="entitlementId" /></td>
    <td><code>string</code></td>
    <td>The `id` of a bundle entitlement</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](https://developer.okta.com/docs/api/#pagination) and [Link header](https://developer.okta.com/docs/api/#link-header).</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer</code></td>
    <td>A limit on the number of objects to return</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_bundle_entitlement_values"
    values={[
        { label: 'list_bundle_entitlement_values', value: 'list_bundle_entitlement_values' }
    ]}
>
<TabItem value="list_bundle_entitlement_values">

Lists all entitlement values that are specific to a governance bundle entitlement

```sql
SELECT
_links,
entitlementValues
FROM okta.iam.bundle_entitlement_values
WHERE bundleId = '{{ bundleId }}' -- required
AND entitlementId = '{{ entitlementId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
;
```
</TabItem>
</Tabs>
