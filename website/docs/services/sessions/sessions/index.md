--- 
title: sessions
hide_title: false
hide_table_of_contents: false
keywords:
  - sessions
  - sessions
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
<tr><td><b>Id</b></td><td><CopyableCode code="okta.sessions.sessions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_session"
    values={[
        { label: 'get_session', value: 'get_session' }
    ]}
>
<TabItem value="get_session">

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
    <td>A unique key for the session</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="amr" /></td>
    <td><code>array</code></td>
    <td>Authentication method reference</td>
</tr>
<tr>
    <td><CopyableCode code="createdAt" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="expiresAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>A timestamp when the session expires</td>
</tr>
<tr>
    <td><CopyableCode code="idp" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="lastFactorVerification" /></td>
    <td><code>string (date-time)</code></td>
    <td>A timestamp when the user last performed multifactor authentication</td>
</tr>
<tr>
    <td><CopyableCode code="lastPasswordVerification" /></td>
    <td><code>string (date-time)</code></td>
    <td>A timestamp when the user last performed the primary or step-up authentication with a password</td>
</tr>
<tr>
    <td><CopyableCode code="login" /></td>
    <td><code>string</code></td>
    <td>A unique identifier for the user (username)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Current session status (ACTIVE, MFA_ENROLL, MFA_REQUIRED)</td>
</tr>
<tr>
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>A unique key for the user</td>
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
    <td><a href="#get_session"><CopyableCode code="get_session" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-sessionId"><code>sessionId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves information about the session specified by the given session ID</td>
</tr>
<tr>
    <td><a href="#revoke_session"><CopyableCode code="revoke_session" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-sessionId"><code>sessionId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Revokes the specified session</td>
</tr>
<tr>
    <td><a href="#refresh_session"><CopyableCode code="refresh_session" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-sessionId"><code>sessionId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Refreshes an existing session using the `id` for that session. A successful response contains the refreshed session with an updated `expiresAt` timestamp.</td>
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
<tr id="parameter-sessionId">
    <td><CopyableCode code="sessionId" /></td>
    <td><code>string</code></td>
    <td>`id` of the session</td>
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
    defaultValue="get_session"
    values={[
        { label: 'get_session', value: 'get_session' }
    ]}
>
<TabItem value="get_session">

Retrieves information about the session specified by the given session ID

```sql
SELECT
id,
_links,
amr,
createdAt,
expiresAt,
idp,
lastFactorVerification,
lastPasswordVerification,
login,
status,
userId
FROM okta.sessions.sessions
WHERE sessionId = '{{ sessionId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="revoke_session"
    values={[
        { label: 'revoke_session', value: 'revoke_session' }
    ]}
>
<TabItem value="revoke_session">

Revokes the specified session

```sql
DELETE FROM okta.sessions.sessions
WHERE sessionId = '{{ sessionId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="refresh_session"
    values={[
        { label: 'refresh_session', value: 'refresh_session' }
    ]}
>
<TabItem value="refresh_session">

Refreshes an existing session using the `id` for that session. A successful response contains the refreshed session with an updated `expiresAt` timestamp.

```sql
EXEC okta.sessions.sessions.refresh_session 
@sessionId='{{ sessionId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
