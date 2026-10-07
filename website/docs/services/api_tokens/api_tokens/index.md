--- 
title: api_tokens
hide_title: false
hide_table_of_contents: false
keywords:
  - api_tokens
  - api_tokens
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

Creates, updates, deletes, gets or lists an <code>api_tokens</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="api_tokens" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.api_tokens.api_tokens" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_api_token"
    values={[
        { label: 'get_api_token', value: 'get_api_token' },
        { label: 'list_api_tokens', value: 'list_api_tokens' }
    ]}
>
<TabItem value="get_api_token">

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
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_link" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="clientName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="expiresAt" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="network" /></td>
    <td><code>object</code></td>
    <td>The Network Condition of the API Token</td>
</tr>
<tr>
    <td><CopyableCode code="tokenWindow" /></td>
    <td><code>string</code></td>
    <td>A time duration specified as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). (pattern: <code>^P(?:$)(\d+Y)?(\d+M)?(\d+W)?(\d+D)?(T(?:\d)(\d+H)?(\d+M)?(\d+S)?)?$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_api_tokens">

An API token for an Okta User. This token is NOT scoped any further and can be used for any API the user has permissions to call.

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
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_link" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="clientName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="expiresAt" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="network" /></td>
    <td><code>object</code></td>
    <td>The Network Condition of the API Token</td>
</tr>
<tr>
    <td><CopyableCode code="tokenWindow" /></td>
    <td><code>string</code></td>
    <td>A time duration specified as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). (pattern: <code>^P(?:$)(\d+Y)?(\d+M)?(\d+W)?(\d+D)?(T(?:\d)(\d+H)?(\d+M)?(\d+S)?)?$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
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
    <td><a href="#get_api_token"><CopyableCode code="get_api_token" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-apiTokenId"><code>apiTokenId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the metadata for an active API token by `apiTokenId`</td>
</tr>
<tr>
    <td><a href="#list_api_tokens"><CopyableCode code="list_api_tokens" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all the metadata of the active API tokens</td>
</tr>
<tr>
    <td><a href="#upsert_api_token"><CopyableCode code="upsert_api_token" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-apiTokenId"><code>apiTokenId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Upserts an API Token Network Condition by `apiTokenId`</td>
</tr>
<tr>
    <td><a href="#revoke_api_token"><CopyableCode code="revoke_api_token" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-apiTokenId"><code>apiTokenId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Revokes an API token by `apiTokenId`</td>
</tr>
<tr>
    <td><a href="#revoke_current_api_token"><CopyableCode code="revoke_current_api_token" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Revokes the API token provided in the Authorization header</td>
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
<tr id="parameter-apiTokenId">
    <td><CopyableCode code="apiTokenId" /></td>
    <td><code>string</code></td>
    <td>id of the API Token</td>
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
    defaultValue="get_api_token"
    values={[
        { label: 'get_api_token', value: 'get_api_token' },
        { label: 'list_api_tokens', value: 'list_api_tokens' }
    ]}
>
<TabItem value="get_api_token">

Retrieves the metadata for an active API token by `apiTokenId`

```sql
SELECT
id,
name,
_link,
clientName,
created,
expiresAt,
lastUpdated,
network,
tokenWindow,
userId
FROM okta.api_tokens.api_tokens
WHERE apiTokenId = '{{ apiTokenId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_api_tokens">

Lists all the metadata of the active API tokens

```sql
SELECT
id,
name,
_link,
clientName,
created,
expiresAt,
lastUpdated,
network,
tokenWindow,
userId
FROM okta.api_tokens.api_tokens
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="upsert_api_token"
    values={[
        { label: 'upsert_api_token', value: 'upsert_api_token' }
    ]}
>
<TabItem value="upsert_api_token">

Upserts an API Token Network Condition by `apiTokenId`

```sql
REPLACE okta.api_tokens.api_tokens
SET 
name = '{{ name }}',
network = '{{ network }}',
userId = '{{ userId }}'
WHERE 
apiTokenId = '{{ apiTokenId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_link,
clientName,
created,
expiresAt,
lastUpdated,
network,
tokenWindow,
userId;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="revoke_api_token"
    values={[
        { label: 'revoke_api_token', value: 'revoke_api_token' },
        { label: 'revoke_current_api_token', value: 'revoke_current_api_token' }
    ]}
>
<TabItem value="revoke_api_token">

Revokes an API token by `apiTokenId`

```sql
DELETE FROM okta.api_tokens.api_tokens
WHERE apiTokenId = '{{ apiTokenId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="revoke_current_api_token">

Revokes the API token provided in the Authorization header

```sql
DELETE FROM okta.api_tokens.api_tokens
WHERE subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
