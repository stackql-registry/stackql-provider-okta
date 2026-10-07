--- 
title: authenticators
hide_title: false
hide_table_of_contents: false
keywords:
  - authenticators
  - authenticators
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

Creates, updates, deletes, gets or lists an <code>authenticators</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="authenticators" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.authenticators.authenticators" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_authenticator"
    values={[
        { label: 'get_authenticator', value: 'get_authenticator' },
        { label: 'list_authenticators', value: 'list_authenticators' }
    ]}
>
<TabItem value="get_authenticator">

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
    <td>A unique identifier for the authenticator</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Display name of the authenticator</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Link relations for this object</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the authenticator was created</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>The description of the authenticator. This setting is only available for the `webauthn` authenticator type (Passkeys).</td>
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
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the authenticator (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of authenticator (app, email, federated, password, phone, security_key, security_question, tac)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_authenticators">

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
    <td>A unique identifier for the authenticator</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Display name of the authenticator</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Link relations for this object</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the authenticator was created</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>The description of the authenticator. This setting is only available for the `webauthn` authenticator type (Passkeys).</td>
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
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the authenticator (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of authenticator (app, email, federated, password, phone, security_key, security_question, tac)</td>
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
    <td><a href="#get_authenticator"><CopyableCode code="get_authenticator" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-authenticatorId"><code>authenticatorId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an authenticator from your Okta organization by `authenticatorId`</td>
</tr>
<tr>
    <td><a href="#list_authenticators"><CopyableCode code="list_authenticators" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all authenticators</td>
</tr>
<tr>
    <td><a href="#create_authenticator"><CopyableCode code="create_authenticator" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-activate"><code>activate</code></a></td>
    <td>Creates an authenticator</td>
</tr>
<tr>
    <td><a href="#replace_authenticator"><CopyableCode code="replace_authenticator" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-authenticatorId"><code>authenticatorId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the properties for an authenticator identified by `authenticatorId`</td>
</tr>
<tr>
    <td><a href="#activate_authenticator"><CopyableCode code="activate_authenticator" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-authenticatorId"><code>authenticatorId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates an authenticator by `authenticatorId`</td>
</tr>
<tr>
    <td><a href="#deactivate_authenticator"><CopyableCode code="deactivate_authenticator" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-authenticatorId"><code>authenticatorId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates an authenticator by `authenticatorId`</td>
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
<tr id="parameter-authenticatorId">
    <td><CopyableCode code="authenticatorId" /></td>
    <td><code>string</code></td>
    <td>`id` of the authenticator</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-activate">
    <td><CopyableCode code="activate" /></td>
    <td><code>string</code></td>
    <td>Whether to execute the activation lifecycle operation when Okta creates the authenticator</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_authenticator"
    values={[
        { label: 'get_authenticator', value: 'get_authenticator' },
        { label: 'list_authenticators', value: 'list_authenticators' }
    ]}
>
<TabItem value="get_authenticator">

Retrieves an authenticator from your Okta organization by `authenticatorId`

```sql
SELECT
id,
name,
_links,
created,
description,
key,
lastUpdated,
status,
type
FROM okta.authenticators.authenticators
WHERE authenticatorId = '{{ authenticatorId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_authenticators">

Lists all authenticators

```sql
SELECT
id,
name,
_links,
created,
description,
key,
lastUpdated,
status,
type
FROM okta.authenticators.authenticators
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_authenticator"
    values={[
        { label: 'create_authenticator', value: 'create_authenticator' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_authenticator">

Creates an authenticator

```sql
INSERT INTO okta.authenticators.authenticators (
description,
key,
name,
status,
type,
subdomain,
activate
)
SELECT 
'{{ description }}',
'{{ key }}',
'{{ name }}',
'{{ status }}',
'{{ type }}',
'{{ subdomain }}',
'{{ activate }}'
RETURNING
id,
name,
_links,
created,
description,
key,
lastUpdated,
status,
type
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: authenticators
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the authenticators resource.
    - name: description
      value: "{{ description }}"
      description: |
        The description of the authenticator. This setting is only available for the \`webauthn\` authenticator type (Passkeys).
    - name: key
      value: "{{ key }}"
      description: |
        A human-readable string that identifies the authenticator
      valid_values: ['custom_app', 'duo', 'external_idp', 'google_otp', 'okta_email', 'okta_password', 'okta_verify', 'onprem_mfa', 'phone_number', 'security_key', 'security_question', 'smart_card_idp', 'symantec_vip', 'webauthn', 'yubikey_token', 'tac']
    - name: name
      value: "{{ name }}"
      description: |
        Display name of the authenticator
    - name: status
      value: "{{ status }}"
      description: |
        Status of the authenticator
      valid_values: ['ACTIVE', 'INACTIVE']
    - name: type
      value: "{{ type }}"
      description: |
        The type of authenticator
      valid_values: ['app', 'email', 'federated', 'password', 'phone', 'security_key', 'security_question', 'tac']
    - name: activate
      value: "{{ activate }}"
      description: Whether to execute the activation lifecycle operation when Okta creates the authenticator
      description: Whether to execute the activation lifecycle operation when Okta creates the authenticator
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_authenticator"
    values={[
        { label: 'replace_authenticator', value: 'replace_authenticator' }
    ]}
>
<TabItem value="replace_authenticator">

Replaces the properties for an authenticator identified by `authenticatorId`

```sql
REPLACE okta.authenticators.authenticators
SET 
description = '{{ description }}',
key = '{{ key }}',
name = '{{ name }}',
status = '{{ status }}',
type = '{{ type }}'
WHERE 
authenticatorId = '{{ authenticatorId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
created,
description,
key,
lastUpdated,
status,
type;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_authenticator"
    values={[
        { label: 'activate_authenticator', value: 'activate_authenticator' },
        { label: 'deactivate_authenticator', value: 'deactivate_authenticator' }
    ]}
>
<TabItem value="activate_authenticator">

Activates an authenticator by `authenticatorId`

```sql
EXEC okta.authenticators.authenticators.activate_authenticator 
@authenticatorId='{{ authenticatorId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_authenticator">

Deactivates an authenticator by `authenticatorId`

```sql
EXEC okta.authenticators.authenticators.deactivate_authenticator 
@authenticatorId='{{ authenticatorId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
