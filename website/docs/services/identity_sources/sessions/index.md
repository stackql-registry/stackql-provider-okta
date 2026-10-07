--- 
title: sessions
hide_title: false
hide_table_of_contents: false
keywords:
  - sessions
  - identity_sources
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

Creates, updates, deletes, gets or lists a <code>sessions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="sessions" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.identity_sources.sessions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_identity_source_session"
    values={[
        { label: 'get_identity_source_session', value: 'get_identity_source_session' },
        { label: 'list_identity_source_sessions', value: 'list_identity_source_sessions' }
    ]}
>
<TabItem value="get_identity_source_session">

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
    <td>The ID of the identity source session</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the identity source session was created</td>
</tr>
<tr>
    <td><CopyableCode code="identitySourceId" /></td>
    <td><code>string</code></td>
    <td>The ID of the custom identity source for which the session is created</td>
</tr>
<tr>
    <td><CopyableCode code="importType" /></td>
    <td><code>string</code></td>
    <td>The type of import.  All imports are `INCREMENTAL` imports.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the identity source session was created</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The current status of the identity source session (CLOSED, COMPLETED, CREATED, ERROR, EXPIRED, IN_PROGRESS, TRIGGERED)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_identity_source_sessions">

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
    <td>The ID of the identity source session</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the identity source session was created</td>
</tr>
<tr>
    <td><CopyableCode code="identitySourceId" /></td>
    <td><code>string</code></td>
    <td>The ID of the custom identity source for which the session is created</td>
</tr>
<tr>
    <td><CopyableCode code="importType" /></td>
    <td><code>string</code></td>
    <td>The type of import.  All imports are `INCREMENTAL` imports.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the identity source session was created</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The current status of the identity source session (CLOSED, COMPLETED, CREATED, ERROR, EXPIRED, IN_PROGRESS, TRIGGERED)</td>
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
    <td><a href="#get_identity_source_session"><CopyableCode code="get_identity_source_session" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-sessionId"><code>sessionId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an identity source session for a given identity source ID and session ID</td>
</tr>
<tr>
    <td><a href="#list_identity_source_sessions"><CopyableCode code="list_identity_source_sessions" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all identity source sessions for the given identity source instance</td>
</tr>
<tr>
    <td><a href="#create_identity_source_session"><CopyableCode code="create_identity_source_session" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates an identity source session for the given identity source instance</td>
</tr>
<tr>
    <td><a href="#delete_identity_source_session"><CopyableCode code="delete_identity_source_session" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-sessionId"><code>sessionId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an identity source session for a given identity source ID and session Id</td>
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
<tr id="parameter-identitySourceId">
    <td><CopyableCode code="identitySourceId" /></td>
    <td><code>string</code></td>
    <td>The ID of the identity source for which the session is created (example: 0oa3l6l6WK6h0R0QW0g4)</td>
</tr>
<tr id="parameter-sessionId">
    <td><CopyableCode code="sessionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the identity source session (example: aps1qqonvr2SZv6o70h8)</td>
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
    defaultValue="get_identity_source_session"
    values={[
        { label: 'get_identity_source_session', value: 'get_identity_source_session' },
        { label: 'list_identity_source_sessions', value: 'list_identity_source_sessions' }
    ]}
>
<TabItem value="get_identity_source_session">

Retrieves an identity source session for a given identity source ID and session ID

```sql
SELECT
id,
created,
identitySourceId,
importType,
lastUpdated,
status
FROM okta.identity_sources.sessions
WHERE identitySourceId = '{{ identitySourceId }}' -- required
AND sessionId = '{{ sessionId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_identity_source_sessions">

Lists all identity source sessions for the given identity source instance

```sql
SELECT
id,
created,
identitySourceId,
importType,
lastUpdated,
status
FROM okta.identity_sources.sessions
WHERE identitySourceId = '{{ identitySourceId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_identity_source_session"
    values={[
        { label: 'create_identity_source_session', value: 'create_identity_source_session' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_identity_source_session">

Creates an identity source session for the given identity source instance

```sql
INSERT INTO okta.identity_sources.sessions (
identitySourceId,
subdomain
)
SELECT 
'{{ identitySourceId }}',
'{{ subdomain }}'
RETURNING
id,
created,
identitySourceId,
importType,
lastUpdated,
status
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: sessions
  props:
    - name: identitySourceId
      value: "{{ identitySourceId }}"
      description: Required parameter for the sessions resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the sessions resource.
`}</CodeBlock>

</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_identity_source_session"
    values={[
        { label: 'delete_identity_source_session', value: 'delete_identity_source_session' }
    ]}
>
<TabItem value="delete_identity_source_session">

Deletes an identity source session for a given identity source ID and session Id

```sql
DELETE FROM okta.identity_sources.sessions
WHERE identitySourceId = '{{ identitySourceId }}' --required
AND sessionId = '{{ sessionId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
