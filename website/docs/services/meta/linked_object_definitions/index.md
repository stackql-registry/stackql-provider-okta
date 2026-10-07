--- 
title: linked_object_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - linked_object_definitions
  - meta
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

Creates, updates, deletes, gets or lists a <code>linked_object_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="linked_object_definitions" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.meta.linked_object_definitions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_linked_object_definition"
    values={[
        { label: 'get_linked_object_definition', value: 'get_linked_object_definition' },
        { label: 'list_linked_object_definitions', value: 'list_linked_object_definitions' }
    ]}
>
<TabItem value="get_linked_object_definition">

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
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the current status of an application using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="associated" /></td>
    <td><code>object</code></td>
    <td> (title: LinkedObjectDetails)</td>
</tr>
<tr>
    <td><CopyableCode code="primary" /></td>
    <td><code>object</code></td>
    <td> (title: LinkedObjectDetails)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_linked_object_definitions">

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
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the current status of an application using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="associated" /></td>
    <td><code>object</code></td>
    <td> (title: LinkedObjectDetails)</td>
</tr>
<tr>
    <td><CopyableCode code="primary" /></td>
    <td><code>object</code></td>
    <td> (title: LinkedObjectDetails)</td>
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
    <td><a href="#get_linked_object_definition"><CopyableCode code="get_linked_object_definition" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-linkedObjectName"><code>linkedObjectName</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a Linked Object definition</td>
</tr>
<tr>
    <td><a href="#list_linked_object_definitions"><CopyableCode code="list_linked_object_definitions" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all Linked Object definitions</td>
</tr>
<tr>
    <td><a href="#create_linked_object_definition"><CopyableCode code="create_linked_object_definition" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a Linked Object definition</td>
</tr>
<tr>
    <td><a href="#delete_linked_object_definition"><CopyableCode code="delete_linked_object_definition" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-linkedObjectName"><code>linkedObjectName</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes the Linked Object definition specified by either the `primary` or `associated` name. The entire definition is removed, regardless of which name that you specify.</td>
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
<tr id="parameter-linkedObjectName">
    <td><CopyableCode code="linkedObjectName" /></td>
    <td><code>string</code></td>
    <td>Primary or Associated name</td>
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
    defaultValue="get_linked_object_definition"
    values={[
        { label: 'get_linked_object_definition', value: 'get_linked_object_definition' },
        { label: 'list_linked_object_definitions', value: 'list_linked_object_definitions' }
    ]}
>
<TabItem value="get_linked_object_definition">

Retrieves a Linked Object definition

```sql
SELECT
_links,
associated,
primary
FROM okta.meta.linked_object_definitions
WHERE linkedObjectName = '{{ linkedObjectName }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_linked_object_definitions">

Lists all Linked Object definitions

```sql
SELECT
_links,
associated,
primary
FROM okta.meta.linked_object_definitions
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_linked_object_definition"
    values={[
        { label: 'create_linked_object_definition', value: 'create_linked_object_definition' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_linked_object_definition">

Creates a Linked Object definition

```sql
INSERT INTO okta.meta.linked_object_definitions (
associated,
primary,
_links,
subdomain
)
SELECT 
'{{ associated }}',
'{{ primary }}',
'{{ _links }}',
'{{ subdomain }}'
RETURNING
_links,
associated,
primary
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: linked_object_definitions
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the linked_object_definitions resource.
    - name: associated
      value:
        description: "{{ description }}"
        name: "{{ name }}"
        title: "{{ title }}"
        type: "{{ type }}"
    - name: primary
      value:
        description: "{{ description }}"
        name: "{{ name }}"
        title: "{{ title }}"
        type: "{{ type }}"
    - name: _links
      description: |
        Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the current status of an application using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.
      value:
        self:
          href: "{{ href }}"
`}</CodeBlock>

</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_linked_object_definition"
    values={[
        { label: 'delete_linked_object_definition', value: 'delete_linked_object_definition' }
    ]}
>
<TabItem value="delete_linked_object_definition">

Deletes the Linked Object definition specified by either the `primary` or `associated` name. The entire definition is removed, regardless of which name that you specify.

```sql
DELETE FROM okta.meta.linked_object_definitions
WHERE linkedObjectName = '{{ linkedObjectName }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
