--- 
title: realm_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - realm_assignments
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

Creates, updates, deletes, gets or lists a <code>realm_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="realm_assignments" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.realm_assignments.realm_assignments" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_realm_assignment"
    values={[
        { label: 'get_realm_assignment', value: 'get_realm_assignment' },
        { label: 'list_realm_assignments', value: 'list_realm_assignments' }
    ]}
>
<TabItem value="get_realm_assignment">

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
    <td>Unique ID of the realm assignment</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the realm</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="actions" /></td>
    <td><code>object</code></td>
    <td>Action to apply to a user</td>
</tr>
<tr>
    <td><CopyableCode code="conditions" /></td>
    <td><code>object</code></td>
    <td>Conditions of applying realm assignment</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the realm assignment was created</td>
</tr>
<tr>
    <td><CopyableCode code="domains" /></td>
    <td><code>array</code></td>
    <td>Array of allowed domains. No user in this realm can be created or updated unless they have a username and email from one of these domains.  The following characters aren't allowed in the domain name: `!$%^&()=*+,:;<>'[]|/?\`</td>
</tr>
<tr>
    <td><CopyableCode code="isDefault" /></td>
    <td><code>boolean</code></td>
    <td>Indicates the default realm. Existing users will start out in the default realm and can be moved individually to other realms.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp of when the realm assignment was updated</td>
</tr>
<tr>
    <td><CopyableCode code="priority" /></td>
    <td><code>integer</code></td>
    <td>The priority of the realm assignment. The lower the number, the higher the priority. This helps resolve conflicts between realm assignments. &gt; **Note:** When you create realm assignments in bulk, realm assignment priorities must be unique.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td> (ACTIVE, INACTIVE)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_realm_assignments">

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
    <td>Unique ID of the realm assignment</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the realm</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="actions" /></td>
    <td><code>object</code></td>
    <td>Action to apply to a user</td>
</tr>
<tr>
    <td><CopyableCode code="conditions" /></td>
    <td><code>object</code></td>
    <td>Conditions of applying realm assignment</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the realm assignment was created</td>
</tr>
<tr>
    <td><CopyableCode code="domains" /></td>
    <td><code>array</code></td>
    <td>Array of allowed domains. No user in this realm can be created or updated unless they have a username and email from one of these domains.  The following characters aren't allowed in the domain name: `!$%^&()=*+,:;<>'[]|/?\`</td>
</tr>
<tr>
    <td><CopyableCode code="isDefault" /></td>
    <td><code>boolean</code></td>
    <td>Indicates the default realm. Existing users will start out in the default realm and can be moved individually to other realms.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp of when the realm assignment was updated</td>
</tr>
<tr>
    <td><CopyableCode code="priority" /></td>
    <td><code>integer</code></td>
    <td>The priority of the realm assignment. The lower the number, the higher the priority. This helps resolve conflicts between realm assignments. &gt; **Note:** When you create realm assignments in bulk, realm assignment priorities must be unique.</td>
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
    <td><a href="#get_realm_assignment"><CopyableCode code="get_realm_assignment" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-assignmentId"><code>assignmentId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a realm assignment</td>
</tr>
<tr>
    <td><a href="#list_realm_assignments"><CopyableCode code="list_realm_assignments" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-after"><code>after</code></a></td>
    <td>Lists all realm assignments</td>
</tr>
<tr>
    <td><a href="#create_realm_assignment"><CopyableCode code="create_realm_assignment" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a new realm assignment</td>
</tr>
<tr>
    <td><a href="#replace_realm_assignment"><CopyableCode code="replace_realm_assignment" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-assignmentId"><code>assignmentId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a realm assignment</td>
</tr>
<tr>
    <td><a href="#delete_realm_assignment"><CopyableCode code="delete_realm_assignment" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-assignmentId"><code>assignmentId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a realm assignment</td>
</tr>
<tr>
    <td><a href="#execute_realm_assignment"><CopyableCode code="execute_realm_assignment" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Executes a realm assignment</td>
</tr>
<tr>
    <td><a href="#activate_realm_assignment"><CopyableCode code="activate_realm_assignment" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-assignmentId"><code>assignmentId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a realm assignment</td>
</tr>
<tr>
    <td><a href="#deactivate_realm_assignment"><CopyableCode code="deactivate_realm_assignment" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-assignmentId"><code>assignmentId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates a realm assignment</td>
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
<tr id="parameter-assignmentId">
    <td><CopyableCode code="assignmentId" /></td>
    <td><code>string</code></td>
    <td>ID of the realm assignment</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>The cursor used for pagination. It represents the priority of the last realm assignment returned in the previous fetch operation.</td>
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
    defaultValue="get_realm_assignment"
    values={[
        { label: 'get_realm_assignment', value: 'get_realm_assignment' },
        { label: 'list_realm_assignments', value: 'list_realm_assignments' }
    ]}
>
<TabItem value="get_realm_assignment">

Retrieves a realm assignment

```sql
SELECT
id,
name,
_links,
actions,
conditions,
created,
domains,
isDefault,
lastUpdated,
priority,
status
FROM okta.realm_assignments.realm_assignments
WHERE assignmentId = '{{ assignmentId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_realm_assignments">

Lists all realm assignments

```sql
SELECT
id,
name,
_links,
actions,
conditions,
created,
domains,
isDefault,
lastUpdated,
priority,
status
FROM okta.realm_assignments.realm_assignments
WHERE subdomain = '{{ subdomain }}' -- required
AND limit = '{{ limit }}'
AND after = '{{ after }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_realm_assignment"
    values={[
        { label: 'create_realm_assignment', value: 'create_realm_assignment' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_realm_assignment">

Creates a new realm assignment

```sql
INSERT INTO okta.realm_assignments.realm_assignments (
actions,
conditions,
name,
priority,
subdomain
)
SELECT 
'{{ actions }}',
'{{ conditions }}',
'{{ name }}',
{{ priority }},
'{{ subdomain }}'
RETURNING
id,
name,
_links,
actions,
conditions,
created,
domains,
isDefault,
lastUpdated,
priority,
status
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: realm_assignments
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the realm_assignments resource.
    - name: actions
      description: |
        Action to apply to a user
      value:
        assignUserToRealm:
          realmId: "{{ realmId }}"
    - name: conditions
      description: |
        Conditions of applying realm assignment
      value:
        expression:
          value: "{{ value }}"
        profileSourceId: "{{ profileSourceId }}"
    - name: name
      value: "{{ name }}"
      description: |
        Name of the realm
    - name: priority
      value: {{ priority }}
      description: |
        The priority of the realm assignment. The lower the number, the higher the priority. This helps resolve conflicts between realm assignments.
        > **Note:** When you create realm assignments in bulk, realm assignment priorities must be unique.
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_realm_assignment"
    values={[
        { label: 'replace_realm_assignment', value: 'replace_realm_assignment' }
    ]}
>
<TabItem value="replace_realm_assignment">

Replaces a realm assignment

```sql
REPLACE okta.realm_assignments.realm_assignments
SET 
actions = '{{ actions }}',
conditions = '{{ conditions }}',
name = '{{ name }}',
priority = {{ priority }}
WHERE 
assignmentId = '{{ assignmentId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
actions,
conditions,
created,
domains,
isDefault,
lastUpdated,
priority,
status;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_realm_assignment"
    values={[
        { label: 'delete_realm_assignment', value: 'delete_realm_assignment' }
    ]}
>
<TabItem value="delete_realm_assignment">

Deletes a realm assignment

```sql
DELETE FROM okta.realm_assignments.realm_assignments
WHERE assignmentId = '{{ assignmentId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="execute_realm_assignment"
    values={[
        { label: 'execute_realm_assignment', value: 'execute_realm_assignment' },
        { label: 'activate_realm_assignment', value: 'activate_realm_assignment' },
        { label: 'deactivate_realm_assignment', value: 'deactivate_realm_assignment' }
    ]}
>
<TabItem value="execute_realm_assignment">

Executes a realm assignment

```sql
EXEC okta.realm_assignments.realm_assignments.execute_realm_assignment 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"assignmentId": "{{ assignmentId }}"
}'
;
```
</TabItem>
<TabItem value="activate_realm_assignment">

Activates a realm assignment

```sql
EXEC okta.realm_assignments.realm_assignments.activate_realm_assignment 
@assignmentId='{{ assignmentId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_realm_assignment">

Deactivates a realm assignment

```sql
EXEC okta.realm_assignments.realm_assignments.deactivate_realm_assignment 
@assignmentId='{{ assignmentId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
