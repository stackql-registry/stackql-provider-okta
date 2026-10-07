--- 
title: trusted_origins
hide_title: false
hide_table_of_contents: false
keywords:
  - trusted_origins
  - trustedorigins
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

Creates, updates, deletes, gets or lists a <code>trusted_origins</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="trusted_origins" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.trustedorigins.trusted_origins" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_trusted_origin"
    values={[
        { label: 'get_trusted_origin', value: 'get_trusted_origin' },
        { label: 'list_trusted_origins', value: 'list_trusted_origins' }
    ]}
>
<TabItem value="get_trusted_origin">

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
    <td>Unique identifier for the trusted origin</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Unique name for the trusted origin</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the trusted origin was created</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>The ID of the user who created the trusted origin</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the trusted origin was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdatedBy" /></td>
    <td><code>string</code></td>
    <td>The ID of the user who last updated the trusted origin</td>
</tr>
<tr>
    <td><CopyableCode code="origin" /></td>
    <td><code>string</code></td>
    <td>Unique origin URL for the trusted origin. The supported schemes for this attribute are HTTP, HTTPS, FTP, Ionic 2, and Capacitor.</td>
</tr>
<tr>
    <td><CopyableCode code="scopes" /></td>
    <td><code>array</code></td>
    <td>Array of scope types that this trusted origin is used for</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td> (ACTIVE, INACTIVE)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_trusted_origins">

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
    <td>Unique identifier for the trusted origin</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Unique name for the trusted origin</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the trusted origin was created</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>The ID of the user who created the trusted origin</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the trusted origin was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdatedBy" /></td>
    <td><code>string</code></td>
    <td>The ID of the user who last updated the trusted origin</td>
</tr>
<tr>
    <td><CopyableCode code="origin" /></td>
    <td><code>string</code></td>
    <td>Unique origin URL for the trusted origin. The supported schemes for this attribute are HTTP, HTTPS, FTP, Ionic 2, and Capacitor.</td>
</tr>
<tr>
    <td><CopyableCode code="scopes" /></td>
    <td><code>array</code></td>
    <td>Array of scope types that this trusted origin is used for</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td> (ACTIVE, INACTIVE)</td>
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
    <td><a href="#get_trusted_origin"><CopyableCode code="get_trusted_origin" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-trustedOriginId"><code>trustedOriginId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a trusted origin</td>
</tr>
<tr>
    <td><a href="#list_trusted_origins"><CopyableCode code="list_trusted_origins" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-q"><code>q</code></a>, <a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all trusted origins</td>
</tr>
<tr>
    <td><a href="#create_trusted_origin"><CopyableCode code="create_trusted_origin" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a trusted origin</td>
</tr>
<tr>
    <td><a href="#replace_trusted_origin"><CopyableCode code="replace_trusted_origin" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-trustedOriginId"><code>trustedOriginId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a trusted origin</td>
</tr>
<tr>
    <td><a href="#delete_trusted_origin"><CopyableCode code="delete_trusted_origin" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-trustedOriginId"><code>trustedOriginId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a trusted origin</td>
</tr>
<tr>
    <td><a href="#activate_trusted_origin"><CopyableCode code="activate_trusted_origin" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-trustedOriginId"><code>trustedOriginId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a trusted origin. Sets the `status` to `ACTIVE`.</td>
</tr>
<tr>
    <td><a href="#deactivate_trusted_origin"><CopyableCode code="deactivate_trusted_origin" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-trustedOriginId"><code>trustedOriginId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates a trusted origin. Sets the `status` to `INACTIVE`.</td>
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
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-trustedOriginId">
    <td><CopyableCode code="trustedOriginId" /></td>
    <td><code>string</code></td>
    <td>`id` of the trusted origin</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>After cursor provided by a prior request</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>[Filter](https://developer.okta.com/docs/api/#filter) trusted origins with a supported expression for a subset of properties. You can filter on the following properties: `name`, `origin`, `status`, and `type` (type of scopes). </td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of results</td>
</tr>
<tr id="parameter-q">
    <td><CopyableCode code="q" /></td>
    <td><code>string</code></td>
    <td>A search string that prefix matches against the `name` and `origin`</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_trusted_origin"
    values={[
        { label: 'get_trusted_origin', value: 'get_trusted_origin' },
        { label: 'list_trusted_origins', value: 'list_trusted_origins' }
    ]}
>
<TabItem value="get_trusted_origin">

Retrieves a trusted origin

```sql
SELECT
id,
name,
_links,
created,
createdBy,
lastUpdated,
lastUpdatedBy,
origin,
scopes,
status
FROM okta.trustedorigins.trusted_origins
WHERE trustedOriginId = '{{ trustedOriginId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_trusted_origins">

Lists all trusted origins

```sql
SELECT
id,
name,
_links,
created,
createdBy,
lastUpdated,
lastUpdatedBy,
origin,
scopes,
status
FROM okta.trustedorigins.trusted_origins
WHERE subdomain = '{{ subdomain }}' -- required
AND q = '{{ q }}'
AND filter = '{{ filter }}'
AND after = '{{ after }}'
AND limit = '{{ limit }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_trusted_origin"
    values={[
        { label: 'create_trusted_origin', value: 'create_trusted_origin' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_trusted_origin">

Creates a trusted origin

```sql
INSERT INTO okta.trustedorigins.trusted_origins (
name,
origin,
scopes,
subdomain
)
SELECT 
'{{ name }}',
'{{ origin }}',
'{{ scopes }}',
'{{ subdomain }}'
RETURNING
id,
name,
_links,
created,
createdBy,
lastUpdated,
lastUpdatedBy,
origin,
scopes,
status
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: trusted_origins
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the trusted_origins resource.
    - name: name
      value: "{{ name }}"
      description: |
        Unique name for the trusted origin
    - name: origin
      value: "{{ origin }}"
      description: |
        Unique origin URL for the trusted origin. The supported schemes for this attribute are HTTP, HTTPS, FTP, Ionic 2, and Capacitor.
    - name: scopes
      description: |
        Array of scope types that this trusted origin is used for
      value:
        - allowedOktaApps: "{{ allowedOktaApps }}"
          type: "{{ type }}"
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_trusted_origin"
    values={[
        { label: 'replace_trusted_origin', value: 'replace_trusted_origin' }
    ]}
>
<TabItem value="replace_trusted_origin">

Replaces a trusted origin

```sql
REPLACE okta.trustedorigins.trusted_origins
SET 
createdBy = '{{ createdBy }}',
lastUpdatedBy = '{{ lastUpdatedBy }}',
name = '{{ name }}',
origin = '{{ origin }}',
scopes = '{{ scopes }}',
status = '{{ status }}'
WHERE 
trustedOriginId = '{{ trustedOriginId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
created,
createdBy,
lastUpdated,
lastUpdatedBy,
origin,
scopes,
status;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_trusted_origin"
    values={[
        { label: 'delete_trusted_origin', value: 'delete_trusted_origin' }
    ]}
>
<TabItem value="delete_trusted_origin">

Deletes a trusted origin

```sql
DELETE FROM okta.trustedorigins.trusted_origins
WHERE trustedOriginId = '{{ trustedOriginId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_trusted_origin"
    values={[
        { label: 'activate_trusted_origin', value: 'activate_trusted_origin' },
        { label: 'deactivate_trusted_origin', value: 'deactivate_trusted_origin' }
    ]}
>
<TabItem value="activate_trusted_origin">

Activates a trusted origin. Sets the `status` to `ACTIVE`.

```sql
EXEC okta.trustedorigins.trusted_origins.activate_trusted_origin 
@trustedOriginId='{{ trustedOriginId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_trusted_origin">

Deactivates a trusted origin. Sets the `status` to `INACTIVE`.

```sql
EXEC okta.trustedorigins.trusted_origins.deactivate_trusted_origin 
@trustedOriginId='{{ trustedOriginId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
