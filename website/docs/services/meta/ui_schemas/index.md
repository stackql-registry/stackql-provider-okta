--- 
title: ui_schemas
hide_title: false
hide_table_of_contents: false
keywords:
  - ui_schemas
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

Creates, updates, deletes, gets or lists a <code>ui_schemas</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="ui_schemas" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.meta.ui_schemas" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_uischema"
    values={[
        { label: 'get_uischema', value: 'get_uischema' },
        { label: 'list_uischemas', value: 'list_uischemas' }
    ]}
>
<TabItem value="get_uischema">

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
    <td>Unique identifier for the UI Schema</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the UI Schema was created (ISO 86001)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the UI Schema was last modified (ISO 86001)</td>
</tr>
<tr>
    <td><CopyableCode code="uiSchema" /></td>
    <td><code>object</code></td>
    <td>Properties of the UI schema</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_uischemas">

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
    <td>Unique identifier for the UI Schema</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the UI Schema was created (ISO 86001)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the UI Schema was last modified (ISO 86001)</td>
</tr>
<tr>
    <td><CopyableCode code="uiSchema" /></td>
    <td><code>object</code></td>
    <td>Properties of the UI schema</td>
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
    <td><a href="#get_uischema"><CopyableCode code="get_uischema" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a UI Schema by `id`</td>
</tr>
<tr>
    <td><a href="#list_uischemas"><CopyableCode code="list_uischemas" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all UI Schemas in your org</td>
</tr>
<tr>
    <td><a href="#create_uischema"><CopyableCode code="create_uischema" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates an input for an enrollment form</td>
</tr>
<tr>
    <td><a href="#replace_uischemas"><CopyableCode code="replace_uischemas" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a UI Schema by `id`</td>
</tr>
<tr>
    <td><a href="#delete_uischemas"><CopyableCode code="delete_uischemas" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a UI Schema by `id`</td>
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
<tr id="parameter-id">
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The unique ID of the UI Schema</td>
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
    defaultValue="get_uischema"
    values={[
        { label: 'get_uischema', value: 'get_uischema' },
        { label: 'list_uischemas', value: 'list_uischemas' }
    ]}
>
<TabItem value="get_uischema">

Retrieves a UI Schema by `id`

```sql
SELECT
id,
_links,
created,
lastUpdated,
uiSchema
FROM okta.meta.ui_schemas
WHERE id = '{{ id }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_uischemas">

Lists all UI Schemas in your org

```sql
SELECT
id,
_links,
created,
lastUpdated,
uiSchema
FROM okta.meta.ui_schemas
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_uischema"
    values={[
        { label: 'create_uischema', value: 'create_uischema' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_uischema">

Creates an input for an enrollment form

```sql
INSERT INTO okta.meta.ui_schemas (
uiSchema,
subdomain
)
SELECT 
'{{ uiSchema }}',
'{{ subdomain }}'
RETURNING
id,
_links,
created,
lastUpdated,
uiSchema
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: ui_schemas
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the ui_schemas resource.
    - name: uiSchema
      description: |
        Properties of the UI schema
      value:
        buttonLabel: "{{ buttonLabel }}"
        elements:
          - label: "{{ label }}"
            options:
              format: "{{ format }}"
            scope: "{{ scope }}"
            type: "{{ type }}"
        label: "{{ label }}"
        type: "{{ type }}"
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_uischemas"
    values={[
        { label: 'replace_uischemas', value: 'replace_uischemas' }
    ]}
>
<TabItem value="replace_uischemas">

Replaces a UI Schema by `id`

```sql
REPLACE okta.meta.ui_schemas
SET 
uiSchema = '{{ uiSchema }}'
WHERE 
id = '{{ id }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
_links,
created,
lastUpdated,
uiSchema;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_uischemas"
    values={[
        { label: 'delete_uischemas', value: 'delete_uischemas' }
    ]}
>
<TabItem value="delete_uischemas">

Deletes a UI Schema by `id`

```sql
DELETE FROM okta.meta.ui_schemas
WHERE id = '{{ id }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
