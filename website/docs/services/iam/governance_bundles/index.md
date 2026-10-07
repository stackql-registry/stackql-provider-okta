--- 
title: governance_bundles
hide_title: false
hide_table_of_contents: false
keywords:
  - governance_bundles
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

Creates, updates, deletes, gets or lists a <code>governance_bundles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="governance_bundles" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.iam.governance_bundles" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_governance_bundle"
    values={[
        { label: 'get_governance_bundle', value: 'get_governance_bundle' },
        { label: 'list_governance_bundles', value: 'list_governance_bundles' }
    ]}
>
<TabItem value="get_governance_bundle">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Governance bundle ID</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the governance bundle</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Link relations available</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the governance bundle</td>
</tr>
<tr>
    <td><CopyableCode code="orn" /></td>
    <td><code>string</code></td>
    <td>The governance bundle resource, in [ORN format](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#okta-resource-name-orn)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the governance bundle</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_governance_bundles">

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
    <td><CopyableCode code="bundles" /></td>
    <td><code>array</code></td>
    <td>List of governance bundles</td>
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
    <td><a href="#get_governance_bundle"><CopyableCode code="get_governance_bundle" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-bundleId"><code>bundleId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a governance bundle for the Admin Console</td>
</tr>
<tr>
    <td><a href="#list_governance_bundles"><CopyableCode code="list_governance_bundles" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all governance bundles for the Admin Console in your org</td>
</tr>
<tr>
    <td><a href="#create_governance_bundle"><CopyableCode code="create_governance_bundle" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a governance bundle of entitlements for the Admin Console</td>
</tr>
<tr>
    <td><a href="#replace_governance_bundle"><CopyableCode code="replace_governance_bundle" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-bundleId"><code>bundleId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the properties of a governance bundle for the Admin Console</td>
</tr>
<tr>
    <td><a href="#delete_governance_bundle"><CopyableCode code="delete_governance_bundle" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-bundleId"><code>bundleId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an Admin Console governance bundle</td>
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
    defaultValue="get_governance_bundle"
    values={[
        { label: 'get_governance_bundle', value: 'get_governance_bundle' },
        { label: 'list_governance_bundles', value: 'list_governance_bundles' }
    ]}
>
<TabItem value="get_governance_bundle">

Retrieves a governance bundle for the Admin Console

```sql
SELECT
id,
name,
_links,
description,
orn,
status
FROM okta.iam.governance_bundles
WHERE bundleId = '{{ bundleId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_governance_bundles">

Lists all governance bundles for the Admin Console in your org

```sql
SELECT
_links,
bundles
FROM okta.iam.governance_bundles
WHERE subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_governance_bundle"
    values={[
        { label: 'create_governance_bundle', value: 'create_governance_bundle' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_governance_bundle">

Creates a governance bundle of entitlements for the Admin Console

```sql
INSERT INTO okta.iam.governance_bundles (
description,
entitlements,
name,
subdomain
)
SELECT 
'{{ description }}',
'{{ entitlements }}',
'{{ name }}',
'{{ subdomain }}'
RETURNING
id,
name,
_links,
description,
orn,
status
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: governance_bundles
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the governance_bundles resource.
    - name: description
      value: "{{ description }}"
      description: |
        Description of the governance bundle
    - name: entitlements
      description: |
        List of entitlements to include in the governance bundle
      value:
        - resourceSets: "{{ resourceSets }}"
          role: "{{ role }}"
          targets: "{{ targets }}"
    - name: name
      value: "{{ name }}"
      description: |
        Name of the governance bundle
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_governance_bundle"
    values={[
        { label: 'replace_governance_bundle', value: 'replace_governance_bundle' }
    ]}
>
<TabItem value="replace_governance_bundle">

Replaces the properties of a governance bundle for the Admin Console

```sql
REPLACE okta.iam.governance_bundles
SET 
description = '{{ description }}',
entitlements = '{{ entitlements }}',
name = '{{ name }}'
WHERE 
bundleId = '{{ bundleId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
description,
orn,
status;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_governance_bundle"
    values={[
        { label: 'delete_governance_bundle', value: 'delete_governance_bundle' }
    ]}
>
<TabItem value="delete_governance_bundle">

Deletes an Admin Console governance bundle

```sql
DELETE FROM okta.iam.governance_bundles
WHERE bundleId = '{{ bundleId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
