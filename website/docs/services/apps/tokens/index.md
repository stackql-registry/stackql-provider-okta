--- 
title: tokens
hide_title: false
hide_table_of_contents: false
keywords:
  - tokens
  - apps
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

Creates, updates, deletes, gets or lists a <code>tokens</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="tokens" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.apps.tokens" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_oauth2_token_for_application"
    values={[
        { label: 'get_oauth2_token_for_application', value: 'get_oauth2_token_for_application' },
        { label: 'list_oauth2_tokens_for_application', value: 'list_oauth2_tokens_for_application' }
    ]}
>
<TabItem value="get_oauth2_token_for_application">

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
<TabItem value="list_oauth2_tokens_for_application">

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
    <td><a href="#get_oauth2_token_for_application"><CopyableCode code="get_oauth2_token_for_application" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-tokenId"><code>tokenId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Retrieves a refresh token for the specified app</td>
</tr>
<tr>
    <td><a href="#list_oauth2_tokens_for_application"><CopyableCode code="list_oauth2_tokens_for_application" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all refresh tokens for an app<br /><br />&gt; **Note:** The results are [paginated]https://developer.okta.com/docs/api#pagination according to the `limit` parameter.<br />&gt; If there are multiple pages of results, the Link header contains a `next` link that you need to use as an opaque value (follow it, don't parse it).<br /></td>
</tr>
<tr>
    <td><a href="#revoke_oauth2_token_for_application"><CopyableCode code="revoke_oauth2_token_for_application" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-tokenId"><code>tokenId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Revokes the specified token for the specified app</td>
</tr>
<tr>
    <td><a href="#revoke_oauth2_tokens_for_application"><CopyableCode code="revoke_oauth2_tokens_for_application" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Revokes all OAuth 2.0 refresh tokens for the specified app. Any access tokens issued with these refresh tokens are also revoked, but access tokens issued without a refresh token aren't affected.</td>
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
<tr id="parameter-appId">
    <td><CopyableCode code="appId" /></td>
    <td><code>string</code></td>
    <td>Application ID</td>
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
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>Specifies the pagination cursor for the next page of results. Treat this as an opaque value obtained through the next link relationship. See [Pagination]https://developer.okta.com/docs/api#pagination.</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>An optional parameter to return scope details in the `_embedded` property. Valid value: `scope`</td>
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
    defaultValue="get_oauth2_token_for_application"
    values={[
        { label: 'get_oauth2_token_for_application', value: 'get_oauth2_token_for_application' },
        { label: 'list_oauth2_tokens_for_application', value: 'list_oauth2_tokens_for_application' }
    ]}
>
<TabItem value="get_oauth2_token_for_application">

Retrieves a refresh token for the specified app

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
FROM okta.apps.tokens
WHERE appId = '{{ appId }}' -- required
AND tokenId = '{{ tokenId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}'
;
```
</TabItem>
<TabItem value="list_oauth2_tokens_for_application">

Lists all refresh tokens for an app<br /><br />&gt; **Note:** The results are [paginated]https://developer.okta.com/docs/api#pagination according to the `limit` parameter.<br />&gt; If there are multiple pages of results, the Link header contains a `next` link that you need to use as an opaque value (follow it, don't parse it).<br />

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
FROM okta.apps.tokens
WHERE appId = '{{ appId }}' -- required
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
    defaultValue="revoke_oauth2_token_for_application"
    values={[
        { label: 'revoke_oauth2_token_for_application', value: 'revoke_oauth2_token_for_application' },
        { label: 'revoke_oauth2_tokens_for_application', value: 'revoke_oauth2_tokens_for_application' }
    ]}
>
<TabItem value="revoke_oauth2_token_for_application">

Revokes the specified token for the specified app

```sql
DELETE FROM okta.apps.tokens
WHERE appId = '{{ appId }}' --required
AND tokenId = '{{ tokenId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="revoke_oauth2_tokens_for_application">

Revokes all OAuth 2.0 refresh tokens for the specified app. Any access tokens issued with these refresh tokens are also revoked, but access tokens issued without a refresh token aren't affected.

```sql
DELETE FROM okta.apps.tokens
WHERE appId = '{{ appId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
