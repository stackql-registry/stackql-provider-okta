--- 
title: role_resource_sets
hide_title: false
hide_table_of_contents: false
keywords:
  - role_resource_sets
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

Creates, updates, deletes, gets or lists a <code>role_resource_sets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="role_resource_sets" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.iam.role_resource_sets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_resource_set"
    values={[
        { label: 'get_resource_set', value: 'get_resource_set' },
        { label: 'list_resource_sets', value: 'list_resource_sets' }
    ]}
>
<TabItem value="get_resource_set">

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
    <td>Unique ID for the resource set object</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the role was created</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the resource set</td>
</tr>
<tr>
    <td><CopyableCode code="label" /></td>
    <td><code>string</code></td>
    <td>Unique label for the resource set</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the role was last updated</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_resource_sets">

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
    <td><CopyableCode code="resource-sets" /></td>
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
    <td><a href="#get_resource_set"><CopyableCode code="get_resource_set" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceSetIdOrLabel"><code>resourceSetIdOrLabel</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a resource set by `resourceSetIdOrLabel`</td>
</tr>
<tr>
    <td><a href="#list_resource_sets"><CopyableCode code="list_resource_sets" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a></td>
    <td>Lists all resource sets with pagination support</td>
</tr>
<tr>
    <td><a href="#create_resource_set"><CopyableCode code="create_resource_set" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-description"><code>description</code></a>, <a href="#parameter-label"><code>label</code></a>, <a href="#parameter-resources"><code>resources</code></a></td>
    <td></td>
    <td>Creates a new resource set. See [Supported resources](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#supported-resources).<br /><br />&gt; **Note:** The maximum number of `resources` allowed in a resource set object is 1000. Resources are identified by either an Okta Resource Name (ORN) or by a REST URL format. See [Okta Resource Name](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#okta-resource-name-orn).</td>
</tr>
<tr>
    <td><a href="#replace_resource_set"><CopyableCode code="replace_resource_set" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-resourceSetIdOrLabel"><code>resourceSetIdOrLabel</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the label and description of a resource set. See [Supported resources](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#supported-resources).</td>
</tr>
<tr>
    <td><a href="#delete_resource_set"><CopyableCode code="delete_resource_set" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceSetIdOrLabel"><code>resourceSetIdOrLabel</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a resource set by `resourceSetIdOrLabel`</td>
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
    <td>The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](https://developer.okta.com/docs/api/#pagination) and [Link header](https://developer.okta.com/docs/api/#link-header).</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_resource_set"
    values={[
        { label: 'get_resource_set', value: 'get_resource_set' },
        { label: 'list_resource_sets', value: 'list_resource_sets' }
    ]}
>
<TabItem value="get_resource_set">

Retrieves a resource set by `resourceSetIdOrLabel`

```sql
SELECT
id,
_links,
created,
description,
label,
lastUpdated
FROM okta.iam.role_resource_sets
WHERE resourceSetIdOrLabel = '{{ resourceSetIdOrLabel }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_resource_sets">

Lists all resource sets with pagination support

```sql
SELECT
_links,
resource-sets
FROM okta.iam.role_resource_sets
WHERE subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_resource_set"
    values={[
        { label: 'create_resource_set', value: 'create_resource_set' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_resource_set">

Creates a new resource set. See [Supported resources](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#supported-resources).<br /><br />&gt; **Note:** The maximum number of `resources` allowed in a resource set object is 1000. Resources are identified by either an Okta Resource Name (ORN) or by a REST URL format. See [Okta Resource Name](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#okta-resource-name-orn).

```sql
INSERT INTO okta.iam.role_resource_sets (
description,
label,
resources,
subdomain
)
SELECT 
'{{ description }}' /* required */,
'{{ label }}' /* required */,
'{{ resources }}' /* required */,
'{{ subdomain }}'
RETURNING
id,
_links,
created,
description,
label,
lastUpdated
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: role_resource_sets
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the role_resource_sets resource.
    - name: description
      value: "{{ description }}"
      description: |
        Description of the resource set
    - name: label
      value: "{{ label }}"
      description: |
        Unique name for the resource set
    - name: resources
      value:
        - "{{ resources }}"
      description: |
        The endpoint (URL) that references all resource objects included in the resource set. Resources are identified by either an Okta Resource Name (ORN) or by a REST URL format. See [Okta Resource Name](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#okta-resource-name-orn).
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_resource_set"
    values={[
        { label: 'replace_resource_set', value: 'replace_resource_set' }
    ]}
>
<TabItem value="replace_resource_set">

Replaces the label and description of a resource set. See [Supported resources](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#supported-resources).

```sql
REPLACE okta.iam.role_resource_sets
SET 
description = '{{ description }}',
label = '{{ label }}'
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


## `DELETE` examples

<Tabs
    defaultValue="delete_resource_set"
    values={[
        { label: 'delete_resource_set', value: 'delete_resource_set' }
    ]}
>
<TabItem value="delete_resource_set">

Deletes a resource set by `resourceSetIdOrLabel`

```sql
DELETE FROM okta.iam.role_resource_sets
WHERE resourceSetIdOrLabel = '{{ resourceSetIdOrLabel }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
