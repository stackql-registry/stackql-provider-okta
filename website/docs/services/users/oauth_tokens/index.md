--- 
title: oauth_tokens
hide_title: false
hide_table_of_contents: false
keywords:
  - oauth_tokens
  - users
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

Creates, updates, deletes, gets or lists an <code>oauth_tokens</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="oauth_tokens" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.users.oauth_tokens" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_refresh_token_for_user_and_client"
    values={[
        { label: 'get_refresh_token_for_user_and_client', value: 'get_refresh_token_for_user_and_client' },
        { label: 'list_refresh_tokens_for_user_and_client', value: 'list_refresh_tokens_for_user_and_client' }
    ]}
>
<TabItem value="get_refresh_token_for_user_and_client">

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
    <td>ID of the Token object (example: oar579Mcp7OUsNTlo0g3)</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>The embedded resources related to the object if the `expand` query parameter is specified</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="clientId" /></td>
    <td><code>string</code></td>
    <td>Client ID</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created (example: 2017-03-28T01:11:10.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="expiresAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Expiration time of the OAuth 2.0 Token</td>
</tr>
<tr>
    <td><CopyableCode code="issuer" /></td>
    <td><code>string</code></td>
    <td>The complete URL of the authorization server that issued the Token (example: https://&#123;yourOktaDomain&#125;/oauth2/ausain6z9zIedDCxB0h7)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="scopes" /></td>
    <td><code>array</code></td>
    <td>The scope names attached to the Token</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status (ACTIVE, REVOKED) (example: ACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>The ID of the user associated with the Token (example: 00u5t60iloOHN9pBi0h7)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_refresh_tokens_for_user_and_client">

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
    <td>ID of the Token object (example: oar579Mcp7OUsNTlo0g3)</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>The embedded resources related to the object if the `expand` query parameter is specified</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="clientId" /></td>
    <td><code>string</code></td>
    <td>Client ID</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created (example: 2017-03-28T01:11:10.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="expiresAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Expiration time of the OAuth 2.0 Token</td>
</tr>
<tr>
    <td><CopyableCode code="issuer" /></td>
    <td><code>string</code></td>
    <td>The complete URL of the authorization server that issued the Token (example: https://&#123;yourOktaDomain&#125;/oauth2/ausain6z9zIedDCxB0h7)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="scopes" /></td>
    <td><code>array</code></td>
    <td>The scope names attached to the Token</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status (ACTIVE, REVOKED) (example: ACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>The ID of the user associated with the Token (example: 00u5t60iloOHN9pBi0h7)</td>
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
    <td><a href="#get_refresh_token_for_user_and_client"><CopyableCode code="get_refresh_token_for_user_and_client" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-clientId"><code>clientId</code></a>, <a href="#parameter-tokenId"><code>tokenId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Retrieves a refresh token issued for the specified user and client</td>
</tr>
<tr>
    <td><a href="#list_refresh_tokens_for_user_and_client"><CopyableCode code="list_refresh_tokens_for_user_and_client" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-clientId"><code>clientId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all refresh tokens issued for the specified user and client</td>
</tr>
<tr>
    <td><a href="#revoke_token_for_user_and_client"><CopyableCode code="revoke_token_for_user_and_client" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-clientId"><code>clientId</code></a>, <a href="#parameter-tokenId"><code>tokenId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Revokes the specified refresh and access tokens</td>
</tr>
<tr>
    <td><a href="#revoke_tokens_for_user_and_client"><CopyableCode code="revoke_tokens_for_user_and_client" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-clientId"><code>clientId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Revokes all refresh tokens issued for the specified user and client</td>
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
<tr id="parameter-clientId">
    <td><CopyableCode code="clientId" /></td>
    <td><code>string</code></td>
    <td>`client_id` of the app</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-tokenId">
    <td><CopyableCode code="tokenId" /></td>
    <td><code>string</code></td>
    <td>`id` of Token</td>
</tr>
<tr id="parameter-userId">
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>ID of an existing Okta user</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](https://developer.okta.com/docs/api/#pagination).</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>Valid value: `scope`. If specified, scope details are included in the `_embedded` attribute.</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of tokens to return</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_refresh_token_for_user_and_client"
    values={[
        { label: 'get_refresh_token_for_user_and_client', value: 'get_refresh_token_for_user_and_client' },
        { label: 'list_refresh_tokens_for_user_and_client', value: 'list_refresh_tokens_for_user_and_client' }
    ]}
>
<TabItem value="get_refresh_token_for_user_and_client">

Retrieves a refresh token issued for the specified user and client

```sql
SELECT
id,
_embedded,
_links,
clientId,
created,
expiresAt,
issuer,
lastUpdated,
scopes,
status,
userId
FROM okta.users.oauth_tokens
WHERE userId = '{{ userId }}' -- required
AND clientId = '{{ clientId }}' -- required
AND tokenId = '{{ tokenId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}'
;
```
</TabItem>
<TabItem value="list_refresh_tokens_for_user_and_client">

Lists all refresh tokens issued for the specified user and client

```sql
SELECT
id,
_embedded,
_links,
clientId,
created,
expiresAt,
issuer,
lastUpdated,
scopes,
status,
userId
FROM okta.users.oauth_tokens
WHERE userId = '{{ userId }}' -- required
AND clientId = '{{ clientId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}'
AND after = '{{ after }}'
AND limit = '{{ limit }}'
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="revoke_token_for_user_and_client"
    values={[
        { label: 'revoke_token_for_user_and_client', value: 'revoke_token_for_user_and_client' },
        { label: 'revoke_tokens_for_user_and_client', value: 'revoke_tokens_for_user_and_client' }
    ]}
>
<TabItem value="revoke_token_for_user_and_client">

Revokes the specified refresh and access tokens

```sql
DELETE FROM okta.users.oauth_tokens
WHERE userId = '{{ userId }}' --required
AND clientId = '{{ clientId }}' --required
AND tokenId = '{{ tokenId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="revoke_tokens_for_user_and_client">

Revokes all refresh tokens issued for the specified user and client

```sql
DELETE FROM okta.users.oauth_tokens
WHERE userId = '{{ userId }}' --required
AND clientId = '{{ clientId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
