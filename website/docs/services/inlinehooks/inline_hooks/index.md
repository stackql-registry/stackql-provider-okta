--- 
title: inline_hooks
hide_title: false
hide_table_of_contents: false
keywords:
  - inline_hooks
  - inlinehooks
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

Creates, updates, deletes, gets or lists an <code>inline_hooks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="inline_hooks" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.inlinehooks.inline_hooks" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_inline_hook"
    values={[
        { label: 'get_inline_hook', value: 'get_inline_hook' },
        { label: 'list_inline_hooks', value: 'list_inline_hooks' }
    ]}
>
<TabItem value="get_inline_hook">

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
    <td>The unique identifier for the inline hook</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The display name of the inline hook</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="channel" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Date of the inline hook creation</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Date of the last inline hook update</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td> (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>One of the inline hook types (com.okta.import.transform, com.okta.oauth2.tokens.transform, com.okta.saml.tokens.transform, com.okta.telephony.provider, com.okta.user.credential.password.import, com.okta.user.pre-registration)</td>
</tr>
<tr>
    <td><CopyableCode code="version" /></td>
    <td><code>string</code></td>
    <td>Version of the inline hook type. The currently supported version is `1.0.0`.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_inline_hooks">

An inline hook object that specifies the details of the inline hook

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
    <td>The unique identifier for the inline hook</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The display name of the inline hook</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="channel" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Date of the inline hook creation</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Date of the last inline hook update</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td> (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>One of the inline hook types (com.okta.import.transform, com.okta.oauth2.tokens.transform, com.okta.saml.tokens.transform, com.okta.telephony.provider, com.okta.user.credential.password.import, com.okta.user.pre-registration)</td>
</tr>
<tr>
    <td><CopyableCode code="version" /></td>
    <td><code>string</code></td>
    <td>Version of the inline hook type. The currently supported version is `1.0.0`.</td>
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
    <td><a href="#get_inline_hook"><CopyableCode code="get_inline_hook" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-inlineHookId"><code>inlineHookId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an inline hook by `inlineHookId`</td>
</tr>
<tr>
    <td><a href="#list_inline_hooks"><CopyableCode code="list_inline_hooks" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-type"><code>type</code></a></td>
    <td>Lists all inline hooks or all inline hooks of a specific type.<br /><br />When listing a specific inline hook, you need to specify its type. The following types are currently supported:<br />  | Type Value                         | Name                                                           |<br />  |------------------------------------|----------------------------------------------------------------|<br />  | `com.okta.import.transform`        | [User import inline hook](https://developer.okta.com/docs/api/openapi/okta-management/management/management/inlinehook/createuserimportinlinehook)       |<br />  | `com.okta.oauth2.tokens.transform` | [Token inline hook](https://developer.okta.com/docs/api/openapi/okta-management/management/management/inlinehook/createtokeninlinehook)               |<br />  | `com.okta.saml.tokens.transform`   | [SAML assertion inline hook](https://developer.okta.com/docs/api/openapi/okta-management/management/management/inlinehook/createsamlassertioninlinehook)       |<br />  | `com.okta.telephony.provider`      | [Telephony inline hook](https://developer.okta.com/docs/api/openapi/okta-management/management/management/inlinehook/createtelephonyinlinehook) |<br />  | `com.okta.user.credential.password.import` | [Password import inline hook](https://developer.okta.com/docs/api/openapi/okta-management/management/management/inlinehook/createpasswordimportinlinehook)|<br />  | `com.okta.user.pre-registration`   | [Registration inline hook](https://developer.okta.com/docs/api/openapi/okta-management/management/management/inlinehook/create-registration-hook) |</td>
</tr>
<tr>
    <td><a href="#create_inline_hook"><CopyableCode code="create_inline_hook" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates an inline hook<br /><br />This endpoint creates an inline hook for your org in an `ACTIVE` status. You need to pass an inline hooks object in the JSON payload of your request.<br />That object represents the set of required information about the inline hook that you're registering, including:<br /><br />* The URI of your external service endpoint<br />* The type of inline hook you're registering<br />* The type of authentication you're registering<br /><br />There are two authentication options that you can configure for your inline hook: HTTP headers and OAuth 2.0 tokens.<br /><br />HTTP headers let you specify a secret API key that you want Okta to pass to your external service endpoint (so that your external service can check for its presence as a security measure).<br /><br />&gt;**Note:** The API key that you set here is unrelated to the Okta API token you must supply when making calls to Okta APIs.<br /><br />You can also optionally specify extra headers that you want Okta to pass to your external service with each call.<br /><br />To configure HTTP header authentication, see parameters for the `config` object.<br /><br />OAuth 2.0 tokens provide enhanced security between Okta and your external service. You can configure these tokens for the following types&mdash;client secret and private key.<br /><br />&gt;**Note:** Your external service's endpoint needs to be a valid HTTPS endpoint. The URI you specify should always begin with `https://`.<br /><br />The total number of inline hooks that you can create in an Okta org is limited to 50, which is a combined total for any combination of inline hook types.</td>
</tr>
<tr>
    <td><a href="#update_inline_hook"><CopyableCode code="update_inline_hook" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-inlineHookId"><code>inlineHookId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates an inline hook by `inlineHookId`</td>
</tr>
<tr>
    <td><a href="#replace_inline_hook"><CopyableCode code="replace_inline_hook" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-inlineHookId"><code>inlineHookId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces an inline hook by `inlineHookId`. The submitted inline hook properties replace the existing properties after passing validation.<br /><br />&gt;**Note:** Some properties are immutable and can't be updated.</td>
</tr>
<tr>
    <td><a href="#delete_inline_hook"><CopyableCode code="delete_inline_hook" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-inlineHookId"><code>inlineHookId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an inline hook by `inlineHookId`. After it's deleted, the inline hook is unrecoverable. As a safety precaution, only inline hooks with a status of `INACTIVE` are eligible for deletion.</td>
</tr>
<tr>
    <td><a href="#execute_inline_hook"><CopyableCode code="execute_inline_hook" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-inlineHookId"><code>inlineHookId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Executes the inline hook that matches the provided `inlineHookId` by using the request body as the input. This inline hook sends the provided<br />data through the `channel` object and returns a response if it matches the correct data contract. Otherwise it returns an error. You need to<br />construct a JSON payload that matches the payloads that Okta would send to your external service for this inline hook type.<br /><br />A timeout of three seconds is enforced on all outbound requests, with one retry in the event of a timeout or an error response from the remote system.<br />If a successful response isn't received after the request, a 400 error is returned with more information about what failed.<br /><br />&gt;**Note:** This execution endpoint isn't tied to any other functionality in Okta, and you should only use it for testing purposes.</td>
</tr>
<tr>
    <td><a href="#activate_inline_hook"><CopyableCode code="activate_inline_hook" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-inlineHookId"><code>inlineHookId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates the inline hook by `inlineHookId`</td>
</tr>
<tr>
    <td><a href="#deactivate_inline_hook"><CopyableCode code="deactivate_inline_hook" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-inlineHookId"><code>inlineHookId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates the inline hook by `inlineHookId`</td>
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
<tr id="parameter-inlineHookId">
    <td><CopyableCode code="inlineHookId" /></td>
    <td><code>string</code></td>
    <td>`id` of the inline hook</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-type">
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>One of the supported inline hook types</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_inline_hook"
    values={[
        { label: 'get_inline_hook', value: 'get_inline_hook' },
        { label: 'list_inline_hooks', value: 'list_inline_hooks' }
    ]}
>
<TabItem value="get_inline_hook">

Retrieves an inline hook by `inlineHookId`

```sql
SELECT
id,
name,
_links,
channel,
created,
lastUpdated,
status,
type,
version
FROM okta.inlinehooks.inline_hooks
WHERE inlineHookId = '{{ inlineHookId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_inline_hooks">

Lists all inline hooks or all inline hooks of a specific type.<br /><br />When listing a specific inline hook, you need to specify its type. The following types are currently supported:<br />  | Type Value                         | Name                                                           |<br />  |------------------------------------|----------------------------------------------------------------|<br />  | `com.okta.import.transform`        | [User import inline hook](https://developer.okta.com/docs/api/openapi/okta-management/management/management/inlinehook/createuserimportinlinehook)       |<br />  | `com.okta.oauth2.tokens.transform` | [Token inline hook](https://developer.okta.com/docs/api/openapi/okta-management/management/management/inlinehook/createtokeninlinehook)               |<br />  | `com.okta.saml.tokens.transform`   | [SAML assertion inline hook](https://developer.okta.com/docs/api/openapi/okta-management/management/management/inlinehook/createsamlassertioninlinehook)       |<br />  | `com.okta.telephony.provider`      | [Telephony inline hook](https://developer.okta.com/docs/api/openapi/okta-management/management/management/inlinehook/createtelephonyinlinehook) |<br />  | `com.okta.user.credential.password.import` | [Password import inline hook](https://developer.okta.com/docs/api/openapi/okta-management/management/management/inlinehook/createpasswordimportinlinehook)|<br />  | `com.okta.user.pre-registration`   | [Registration inline hook](https://developer.okta.com/docs/api/openapi/okta-management/management/management/inlinehook/create-registration-hook) |

```sql
SELECT
id,
name,
_links,
channel,
created,
lastUpdated,
status,
type,
version
FROM okta.inlinehooks.inline_hooks
WHERE subdomain = '{{ subdomain }}' -- required
AND type = '{{ type }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_inline_hook"
    values={[
        { label: 'create_inline_hook', value: 'create_inline_hook' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_inline_hook">

Creates an inline hook<br /><br />This endpoint creates an inline hook for your org in an `ACTIVE` status. You need to pass an inline hooks object in the JSON payload of your request.<br />That object represents the set of required information about the inline hook that you're registering, including:<br /><br />* The URI of your external service endpoint<br />* The type of inline hook you're registering<br />* The type of authentication you're registering<br /><br />There are two authentication options that you can configure for your inline hook: HTTP headers and OAuth 2.0 tokens.<br /><br />HTTP headers let you specify a secret API key that you want Okta to pass to your external service endpoint (so that your external service can check for its presence as a security measure).<br /><br />&gt;**Note:** The API key that you set here is unrelated to the Okta API token you must supply when making calls to Okta APIs.<br /><br />You can also optionally specify extra headers that you want Okta to pass to your external service with each call.<br /><br />To configure HTTP header authentication, see parameters for the `config` object.<br /><br />OAuth 2.0 tokens provide enhanced security between Okta and your external service. You can configure these tokens for the following types&mdash;client secret and private key.<br /><br />&gt;**Note:** Your external service's endpoint needs to be a valid HTTPS endpoint. The URI you specify should always begin with `https://`.<br /><br />The total number of inline hooks that you can create in an Okta org is limited to 50, which is a combined total for any combination of inline hook types.

```sql
INSERT INTO okta.inlinehooks.inline_hooks (
channel,
name,
type,
version,
subdomain
)
SELECT 
'{{ channel }}',
'{{ name }}',
'{{ type }}',
'{{ version }}',
'{{ subdomain }}'
RETURNING
id,
name,
_links,
channel,
created,
lastUpdated,
status,
type,
version
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: inline_hooks
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the inline_hooks resource.
    - name: channel
      value:
        type: "{{ type }}"
        version: "{{ version }}"
    - name: name
      value: "{{ name }}"
      description: |
        The display name of the inline hook
    - name: type
      value: "{{ type }}"
      description: |
        One of the inline hook types
      valid_values: ['com.okta.import.transform', 'com.okta.oauth2.tokens.transform', 'com.okta.saml.tokens.transform', 'com.okta.telephony.provider', 'com.okta.user.credential.password.import', 'com.okta.user.pre-registration']
    - name: version
      value: "{{ version }}"
      description: |
        Version of the inline hook type. The currently supported version is \`1.0.0\`.
`}</CodeBlock>

</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_inline_hook"
    values={[
        { label: 'update_inline_hook', value: 'update_inline_hook' }
    ]}
>
<TabItem value="update_inline_hook">

Updates an inline hook by `inlineHookId`

```sql
UPDATE okta.inlinehooks.inline_hooks
SET 
channel = '{{ channel }}',
name = '{{ name }}',
version = '{{ version }}'
WHERE 
inlineHookId = '{{ inlineHookId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
channel,
created,
lastUpdated,
status,
type,
version;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_inline_hook"
    values={[
        { label: 'replace_inline_hook', value: 'replace_inline_hook' }
    ]}
>
<TabItem value="replace_inline_hook">

Replaces an inline hook by `inlineHookId`. The submitted inline hook properties replace the existing properties after passing validation.<br /><br />&gt;**Note:** Some properties are immutable and can't be updated.

```sql
REPLACE okta.inlinehooks.inline_hooks
SET 
channel = '{{ channel }}',
name = '{{ name }}',
version = '{{ version }}'
WHERE 
inlineHookId = '{{ inlineHookId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
channel,
created,
lastUpdated,
status,
type,
version;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_inline_hook"
    values={[
        { label: 'delete_inline_hook', value: 'delete_inline_hook' }
    ]}
>
<TabItem value="delete_inline_hook">

Deletes an inline hook by `inlineHookId`. After it's deleted, the inline hook is unrecoverable. As a safety precaution, only inline hooks with a status of `INACTIVE` are eligible for deletion.

```sql
DELETE FROM okta.inlinehooks.inline_hooks
WHERE inlineHookId = '{{ inlineHookId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="execute_inline_hook"
    values={[
        { label: 'execute_inline_hook', value: 'execute_inline_hook' },
        { label: 'activate_inline_hook', value: 'activate_inline_hook' },
        { label: 'deactivate_inline_hook', value: 'deactivate_inline_hook' }
    ]}
>
<TabItem value="execute_inline_hook">

Executes the inline hook that matches the provided `inlineHookId` by using the request body as the input. This inline hook sends the provided<br />data through the `channel` object and returns a response if it matches the correct data contract. Otherwise it returns an error. You need to<br />construct a JSON payload that matches the payloads that Okta would send to your external service for this inline hook type.<br /><br />A timeout of three seconds is enforced on all outbound requests, with one retry in the event of a timeout or an error response from the remote system.<br />If a successful response isn't received after the request, a 400 error is returned with more information about what failed.<br /><br />&gt;**Note:** This execution endpoint isn't tied to any other functionality in Okta, and you should only use it for testing purposes.

```sql
EXEC okta.inlinehooks.inline_hooks.execute_inline_hook 
@inlineHookId='{{ inlineHookId }}' --required, 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"cloudEventVersion": "{{ cloudEventVersion }}", 
"contentType": "{{ contentType }}", 
"eventId": "{{ eventId }}", 
"eventTime": "{{ eventTime }}", 
"eventTypeVersion": "{{ eventTypeVersion }}", 
"data": "{{ data }}", 
"eventType": "{{ eventType }}", 
"source": "{{ source }}", 
"requestType": "{{ requestType }}"
}'
;
```
</TabItem>
<TabItem value="activate_inline_hook">

Activates the inline hook by `inlineHookId`

```sql
EXEC okta.inlinehooks.inline_hooks.activate_inline_hook 
@inlineHookId='{{ inlineHookId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_inline_hook">

Deactivates the inline hook by `inlineHookId`

```sql
EXEC okta.inlinehooks.inline_hooks.deactivate_inline_hook 
@inlineHookId='{{ inlineHookId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
