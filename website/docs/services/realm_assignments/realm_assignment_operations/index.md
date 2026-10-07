--- 
title: realm_assignment_operations
hide_title: false
hide_table_of_contents: false
keywords:
  - realm_assignment_operations
  - realm_assignments
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

Creates, updates, deletes, gets or lists a <code>realm_assignment_operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="realm_assignment_operations" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.realm_assignments.realm_assignment_operations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_realm_assignment_operations"
    values={[
        { label: 'list_realm_assignment_operations', value: 'list_realm_assignment_operations' }
    ]}
>
<TabItem value="list_realm_assignment_operations">

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
    <td>ID of the asynchronous operation</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="assignmentOperation" /></td>
    <td><code>object</code></td>
    <td>Definition of the realm assignment operation</td>
</tr>
<tr>
    <td><CopyableCode code="completed" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp of when the operation completed</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp of when the operation was created</td>
</tr>
<tr>
    <td><CopyableCode code="numUserMoved" /></td>
    <td><code>number</code></td>
    <td>Number of users moved</td>
</tr>
<tr>
    <td><CopyableCode code="realmId" /></td>
    <td><code>string</code></td>
    <td>ID of the realm</td>
</tr>
<tr>
    <td><CopyableCode code="realmName" /></td>
    <td><code>string</code></td>
    <td>Name of the realm</td>
</tr>
<tr>
    <td><CopyableCode code="started" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp of when the operation started</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the asynchronous operation (COMPLETED, SCHEDULED, IN_PROGRESS, FAILED)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The operation type</td>
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
    <td><a href="#list_realm_assignment_operations"><CopyableCode code="list_realm_assignment_operations" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-after"><code>after</code></a></td>
    <td>Lists all realm assignment operations. The upper limit is 200 and operations are sorted in descending order from most recent to oldest by ID.</td>
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
    defaultValue="list_realm_assignment_operations"
    values={[
        { label: 'list_realm_assignment_operations', value: 'list_realm_assignment_operations' }
    ]}
>
<TabItem value="list_realm_assignment_operations">

Lists all realm assignment operations. The upper limit is 200 and operations are sorted in descending order from most recent to oldest by ID.

```sql
SELECT
id,
_links,
assignmentOperation,
completed,
created,
numUserMoved,
realmId,
realmName,
started,
status,
type
FROM okta.realm_assignments.realm_assignment_operations
WHERE subdomain = '{{ subdomain }}' -- required
AND limit = '{{ limit }}'
AND after = '{{ after }}'
;
```
</TabItem>
</Tabs>
