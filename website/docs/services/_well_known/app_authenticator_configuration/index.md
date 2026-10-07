--- 
title: app_authenticator_configuration
hide_title: false
hide_table_of_contents: false
keywords:
  - app_authenticator_configuration
  - _well_known
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

Creates, updates, deletes, gets or lists an <code>app_authenticator_configuration</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="app_authenticator_configuration" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta._well_known.app_authenticator_configuration" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_well_known_app_authenticator_configuration"
    values={[
        { label: 'get_well_known_app_authenticator_configuration', value: 'get_well_known_app_authenticator_configuration' }
    ]}
>
<TabItem value="get_well_known_app_authenticator_configuration">

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The authenticator display name</td>
</tr>
<tr>
    <td><CopyableCode code="appAuthenticatorEnrollEndpoint" /></td>
    <td><code>string</code></td>
    <td>The authenticator enrollment endpoint</td>
</tr>
<tr>
    <td><CopyableCode code="authenticatorId" /></td>
    <td><code>string</code></td>
    <td>The unique identifier of the app authenticator</td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the authenticator was created</td>
</tr>
<tr>
    <td><CopyableCode code="key" /></td>
    <td><code>string</code></td>
    <td>A human-readable string that identifies the authenticator (custom_app, duo, external_idp, google_otp, okta_email, okta_password, okta_verify, onprem_mfa, phone_number, security_key, security_question, smart_card_idp, symantec_vip, webauthn, yubikey_token, tac)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the authenticator was last modified</td>
</tr>
<tr>
    <td><CopyableCode code="orgId" /></td>
    <td><code>string</code></td>
    <td>The `id` of the Okta Org</td>
</tr>
<tr>
    <td><CopyableCode code="settings" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="supportedMethods" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of authenticator (app)</td>
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
    <td><a href="#get_well_known_app_authenticator_configuration"><CopyableCode code="get_well_known_app_authenticator_configuration" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-oauthClientId"><code>oauthClientId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the well-known app authenticator configuration. Includes an app authenticator's settings, supported methods, and other details.</td>
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
<tr id="parameter-oauthClientId">
    <td><CopyableCode code="oauthClientId" /></td>
    <td><code>string</code></td>
    <td>Filters app authenticator configurations by `oauthClientId`</td>
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
    defaultValue="get_well_known_app_authenticator_configuration"
    values={[
        { label: 'get_well_known_app_authenticator_configuration', value: 'get_well_known_app_authenticator_configuration' }
    ]}
>
<TabItem value="get_well_known_app_authenticator_configuration">

Retrieves the well-known app authenticator configuration. Includes an app authenticator's settings, supported methods, and other details.

```sql
SELECT
name,
appAuthenticatorEnrollEndpoint,
authenticatorId,
createdDate,
key,
lastUpdated,
orgId,
settings,
supportedMethods,
type
FROM okta._well_known.app_authenticator_configuration
WHERE oauthClientId = '{{ oauthClientId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
