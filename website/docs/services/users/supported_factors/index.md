--- 
title: supported_factors
hide_title: false
hide_table_of_contents: false
keywords:
  - supported_factors
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

Creates, updates, deletes, gets or lists a <code>supported_factors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="supported_factors" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.users.supported_factors" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_supported_factors"
    values={[
        { label: 'list_supported_factors', value: 'list_supported_factors' }
    ]}
>
<TabItem value="list_supported_factors">

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
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resources related to the factor</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="enrollment" /></td>
    <td><code>string</code></td>
    <td>Indicates if the factor is required for the specified user (OPTIONAL, REQUIRED) (example: OPTIONAL)</td>
</tr>
<tr>
    <td><CopyableCode code="factorType" /></td>
    <td><code>string</code></td>
    <td>Type of factor (call, email, push, question, signed_nonce, sms, token, token:hardware, token:hotp, token:software:totp, u2f, web, webauthn)</td>
</tr>
<tr>
    <td><CopyableCode code="provider" /></td>
    <td><code>string</code></td>
    <td> (CUSTOM, DUO, FIDO, GOOGLE, OKTA, RSA, SYMANTEC, YUBICO)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the factor (ACTIVE, DISABLED, ENROLLED, EXPIRED, INACTIVE, NOT_SETUP, PENDING_ACTIVATION) (example: ACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="vendorName" /></td>
    <td><code>string</code></td>
    <td>Name of the factor vendor. This is usually the same as the provider except for On-Prem MFA, which depends on admin settings. (example: OKTA)</td>
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
    <td><a href="#list_supported_factors"><CopyableCode code="list_supported_factors" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all the supported factors that can be enrolled for the specified user that are included in the highest priority [authenticator enrollment policy](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/policy/) that applies to the user.<br /><br />Only factors that are `REQUIRED` or `OPTIONAL` in the highest priority authenticator enrollment policy can be returned.<br /><br />&gt; **Note:** When admins use this endpoint for other users, the authenticator enrollment policy that's evaluated can vary depending on how client-specific conditions are configured in the rules of an authenticator enrollment policy. The client-specific conditions of the admin's client are used during policy evaluation instead of the client-specific conditions of the user. This can affect which authenticator enrollment policy is evaluated and which factors are returned.<br />&gt;<br />&gt; For example, an admin in Europe lists all supported factors for a user in North America. The network zone of the admin's client (in Europe) is used during policy evaluation instead of the network zone of the user (in North America).</td>
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
<tr id="parameter-userId">
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>ID of an existing Okta user</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_supported_factors"
    values={[
        { label: 'list_supported_factors', value: 'list_supported_factors' }
    ]}
>
<TabItem value="list_supported_factors">

Lists all the supported factors that can be enrolled for the specified user that are included in the highest priority [authenticator enrollment policy](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/policy/) that applies to the user.<br /><br />Only factors that are `REQUIRED` or `OPTIONAL` in the highest priority authenticator enrollment policy can be returned.<br /><br />&gt; **Note:** When admins use this endpoint for other users, the authenticator enrollment policy that's evaluated can vary depending on how client-specific conditions are configured in the rules of an authenticator enrollment policy. The client-specific conditions of the admin's client are used during policy evaluation instead of the client-specific conditions of the user. This can affect which authenticator enrollment policy is evaluated and which factors are returned.<br />&gt;<br />&gt; For example, an admin in Europe lists all supported factors for a user in North America. The network zone of the admin's client (in Europe) is used during policy evaluation instead of the network zone of the user (in North America).

```sql
SELECT
_embedded,
_links,
enrollment,
factorType,
provider,
status,
vendorName
FROM okta.users.supported_factors
WHERE userId = '{{ userId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
