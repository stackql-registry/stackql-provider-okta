--- 
title: role_resource_set_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - role_resource_set_resources
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

Creates, updates, deletes, gets or lists a <code>role_resource_set_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="role_resource_set_resources" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.iam.role_resource_set_resources" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_resource_set_resource"
    values={[
        { label: 'get_resource_set_resource', value: 'get_resource_set_resource' },
        { label: 'list_resource_set_resources', value: 'list_resource_set_resources' }
    ]}
>
<TabItem value="get_resource_set_resource">

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
    <td>Unique ID of the resource set resource object</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Related discoverable resources</td>
</tr>
<tr>
    <td><CopyableCode code="conditions" /></td>
    <td><code>object</code></td>
    <td>Conditions for further restricting a resource.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the resource set resource object was created</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when this object was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="orn" /></td>
    <td><code>string</code></td>
    <td>The Okta Resource Name (ORN) of the resource</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_resource_set_resources">

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
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the current status of an application using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. Use the `LinksNext` object for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="resources" /></td>
    <td><code>array</code></td>
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
    <td><a href="#get_resource_set_resource"><CopyableCode code="get_resource_set_resource" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceSetIdOrLabel"><code>resourceSetIdOrLabel</code></a>, <a href="#parameter-resourceId"><code>resourceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a resource identified by `resourceId` in a resource set</td>
</tr>
<tr>
    <td><a href="#list_resource_set_resources"><CopyableCode code="list_resource_set_resources" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceSetIdOrLabel"><code>resourceSetIdOrLabel</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all resources for the resource set</td>
</tr>
<tr>
    <td><a href="#add_resource_set_resource"><CopyableCode code="add_resource_set_resource" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceSetIdOrLabel"><code>resourceSetIdOrLabel</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-resourceOrnOrUrl"><code>resourceOrnOrUrl</code></a>, <a href="#parameter-conditions"><code>conditions</code></a></td>
    <td></td>
    <td>Adds a resource with conditions for a resource set</td>
</tr>
<tr>
    <td><a href="#add_resource_set_resources"><CopyableCode code="add_resource_set_resources" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceSetIdOrLabel"><code>resourceSetIdOrLabel</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Adds more resources to a resource set</td>
</tr>
<tr>
    <td><a href="#replace_resource_set_resource"><CopyableCode code="replace_resource_set_resource" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-resourceSetIdOrLabel"><code>resourceSetIdOrLabel</code></a>, <a href="#parameter-resourceId"><code>resourceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the conditions of a resource identified by `resourceId` in a resource set</td>
</tr>
<tr>
    <td><a href="#delete_resource_set_resource"><CopyableCode code="delete_resource_set_resource" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceSetIdOrLabel"><code>resourceSetIdOrLabel</code></a>, <a href="#parameter-resourceId"><code>resourceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a resource (identified by `resourceId`) from a resource set</td>
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
<tr id="parameter-resourceId">
    <td><CopyableCode code="resourceId" /></td>
    <td><code>string</code></td>
    <td>`id` of the resource</td>
</tr>
<tr id="parameter-resourceSetIdOrLabel">
    <td><CopyableCode code="resourceSetIdOrLabel" /></td>
    <td><code>string</code></td>
    <td>`id` or `label` of the resource set</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>Specifies the pagination cursor for the next page of targets</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of results returned. Defaults to `100`.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_resource_set_resource"
    values={[
        { label: 'get_resource_set_resource', value: 'get_resource_set_resource' },
        { label: 'list_resource_set_resources', value: 'list_resource_set_resources' }
    ]}
>
<TabItem value="get_resource_set_resource">

Retrieves a resource identified by `resourceId` in a resource set

```sql
SELECT
id,
_links,
conditions,
created,
lastUpdated,
orn
FROM okta.iam.role_resource_set_resources
WHERE resourceSetIdOrLabel = '{{ resourceSetIdOrLabel }}' -- required
AND resourceId = '{{ resourceId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_resource_set_resources">

Lists all resources for the resource set

```sql
SELECT
_links,
resources
FROM okta.iam.role_resource_set_resources
WHERE resourceSetIdOrLabel = '{{ resourceSetIdOrLabel }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="add_resource_set_resource"
    values={[
        { label: 'add_resource_set_resource', value: 'add_resource_set_resource' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="add_resource_set_resource">

Adds a resource with conditions for a resource set

```sql
INSERT INTO okta.iam.role_resource_set_resources (
conditions,
resourceOrnOrUrl,
resourceSetIdOrLabel,
subdomain
)
SELECT 
'{{ conditions }}' /* required */,
'{{ resourceOrnOrUrl }}' /* required */,
'{{ resourceSetIdOrLabel }}',
'{{ subdomain }}'
RETURNING
id,
_links,
conditions,
created,
lastUpdated,
orn
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: role_resource_set_resources
  props:
    - name: resourceSetIdOrLabel
      value: "{{ resourceSetIdOrLabel }}"
      description: Required parameter for the role_resource_set_resources resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the role_resource_set_resources resource.
    - name: conditions
      description: |
        Conditions for further restricting a resource.
      value:
        Exclude:
          okta:ORN:
            - "{{ okta:ORN }}"
    - name: resourceOrnOrUrl
      value: "{{ resourceOrnOrUrl }}"
      description: |
        Resource in ORN or REST API URL format
`}</CodeBlock>

</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="add_resource_set_resources"
    values={[
        { label: 'add_resource_set_resources', value: 'add_resource_set_resources' }
    ]}
>
<TabItem value="add_resource_set_resources">

Adds more resources to a resource set

```sql
UPDATE okta.iam.role_resource_set_resources
SET 
additions = '{{ additions }}'
WHERE 
resourceSetIdOrLabel = '{{ resourceSetIdOrLabel }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
_links,
created,
description,
label,
lastUpdated;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_resource_set_resource"
    values={[
        { label: 'replace_resource_set_resource', value: 'replace_resource_set_resource' }
    ]}
>
<TabItem value="replace_resource_set_resource">

Replaces the conditions of a resource identified by `resourceId` in a resource set

```sql
REPLACE okta.iam.role_resource_set_resources
SET 
conditions = '{{ conditions }}'
WHERE 
resourceSetIdOrLabel = '{{ resourceSetIdOrLabel }}' --required
AND resourceId = '{{ resourceId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
_links,
conditions,
created,
lastUpdated,
orn;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_resource_set_resource"
    values={[
        { label: 'delete_resource_set_resource', value: 'delete_resource_set_resource' }
    ]}
>
<TabItem value="delete_resource_set_resource">

Deletes a resource (identified by `resourceId`) from a resource set

```sql
DELETE FROM okta.iam.role_resource_set_resources
WHERE resourceSetIdOrLabel = '{{ resourceSetIdOrLabel }}' --required
AND resourceId = '{{ resourceId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
