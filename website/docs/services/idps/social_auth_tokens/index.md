--- 
title: social_auth_tokens
hide_title: false
hide_table_of_contents: false
keywords:
  - social_auth_tokens
  - idps
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

Creates, updates, deletes, gets or lists a <code>social_auth_tokens</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="social_auth_tokens" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.idps.social_auth_tokens" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_social_auth_tokens"
    values={[
        { label: 'list_social_auth_tokens', value: 'list_social_auth_tokens' }
    ]}
>
<TabItem value="list_social_auth_tokens">

The social authentication token object provides the tokens and associated metadata provided by social providers during social authentication.

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
    <td>Unique identifier for the token (example: NXp9GaX1eOA-XVF_H9fn2Q)</td>
</tr>
<tr>
    <td><CopyableCode code="expiresAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object expires (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="scopes" /></td>
    <td><code>array</code></td>
    <td>The scopes that the token is good for</td>
</tr>
<tr>
    <td><CopyableCode code="token" /></td>
    <td><code>string</code></td>
    <td>The raw token (example: JBTWGV22G4ZGKV3N)</td>
</tr>
<tr>
    <td><CopyableCode code="tokenAuthScheme" /></td>
    <td><code>string</code></td>
    <td>The token authentication scheme as defined by the social provider (example: Bearer)</td>
</tr>
<tr>
    <td><CopyableCode code="tokenType" /></td>
    <td><code>string</code></td>
    <td>The type of token defined by the [OAuth Token Exchange Spec](https://tools.ietf.org/html/draft-ietf-oauth-token-exchange-07#section-3) (example: urn:ietf:params:oauth:token-type:access_token)</td>
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
    <td><a href="#list_social_auth_tokens"><CopyableCode code="list_social_auth_tokens" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-idpId"><code>idpId</code></a>, <a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists the tokens minted by the social authentication provider when the user authenticates with Okta via Social Auth.<br /><br />Okta doesn't import all the user information from a social provider. If the app needs information that isn't imported, it can get the user token from this endpoint. Then the app can make an API call to the social provider with the token to request the additional information.</td>
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
<tr id="parameter-idpId">
    <td><CopyableCode code="idpId" /></td>
    <td><code>string</code></td>
    <td>`id` of IdP</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-userId">
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>ID of an existing Okta user</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_social_auth_tokens"
    values={[
        { label: 'list_social_auth_tokens', value: 'list_social_auth_tokens' }
    ]}
>
<TabItem value="list_social_auth_tokens">

Lists the tokens minted by the social authentication provider when the user authenticates with Okta via Social Auth.<br /><br />Okta doesn't import all the user information from a social provider. If the app needs information that isn't imported, it can get the user token from this endpoint. Then the app can make an API call to the social provider with the token to request the additional information.

```sql
SELECT
id,
expiresAt,
scopes,
token,
tokenAuthScheme,
tokenType
FROM okta.idps.social_auth_tokens
WHERE idpId = '{{ idpId }}' -- required
AND userId = '{{ userId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
