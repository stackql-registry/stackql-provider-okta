--- 
title: email_servers
hide_title: false
hide_table_of_contents: false
keywords:
  - email_servers
  - email_servers
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

Creates, updates, deletes, gets or lists an <code>email_servers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="email_servers" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.email_servers.email_servers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_email_server"
    values={[
        { label: 'get_email_server', value: 'get_email_server' },
        { label: 'list_email_servers', value: 'list_email_servers' }
    ]}
>
<TabItem value="get_email_server">

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
    <td>ID of your SMTP server</td>
</tr>
<tr>
    <td><CopyableCode code="alias" /></td>
    <td><code>string</code></td>
    <td>Human-readable name for your SMTP server (example: CustomServer1)</td>
</tr>
<tr>
    <td><CopyableCode code="authType" /></td>
    <td><code>string</code></td>
    <td>&lt;x-lifecycle-container&gt;&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; &lt;x-lifecycle class="oie"&gt;&lt;/x-lifecycle&gt;&lt;/x-lifecycle-container&gt;The authentication type that's used by your SMTP server (BASIC_SMTP_AUTH, OAUTH2_CLIENT_CREDENTIALS, OAUTH2_JWT_BEARER_GRANT)</td>
</tr>
<tr>
    <td><CopyableCode code="enabled" /></td>
    <td><code>boolean</code></td>
    <td>If `true`, all email traffic is routed through your SMTP server</td>
</tr>
<tr>
    <td><CopyableCode code="host" /></td>
    <td><code>string</code></td>
    <td>Hostname or IP address of your SMTP server (example: 192.168.160.1)</td>
</tr>
<tr>
    <td><CopyableCode code="port" /></td>
    <td><code>integer</code></td>
    <td>Port number of your SMTP server</td>
</tr>
<tr>
    <td><CopyableCode code="username" /></td>
    <td><code>string</code></td>
    <td>Username that's used to access your SMTP server (example: some_user@domain.com)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_email_servers">

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
    <td><CopyableCode code="email-servers" /></td>
    <td><code>array</code></td>
    <td>List of enrolled SMTP servers</td>
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
    <td><a href="#get_email_server"><CopyableCode code="get_email_server" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-emailServerId"><code>emailServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the specified custom SMTP server configuration</td>
</tr>
<tr>
    <td><a href="#list_email_servers"><CopyableCode code="list_email_servers" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all the enrolled custom SMTP server configurations</td>
</tr>
<tr>
    <td><a href="#create_email_server"><CopyableCode code="create_email_server" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-alias"><code>alias</code></a>, <a href="#parameter-enabled"><code>enabled</code></a>, <a href="#parameter-host"><code>host</code></a>, <a href="#parameter-port"><code>port</code></a>, <a href="#parameter-username"><code>username</code></a>, <a href="#parameter-authType"><code>authType</code></a></td>
    <td></td>
    <td>Creates a custom email SMTP server configuration for your org.<br /><br />For more information about configuring the OAuth 2.0 authentication methods, see [Custom email providers with OAuth 2.0](https://developer.okta.com/docs/guides/custom-smtp/main/).</td>
</tr>
<tr>
    <td><a href="#update_email_server"><CopyableCode code="update_email_server" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-emailServerId"><code>emailServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-authType"><code>authType</code></a></td>
    <td></td>
    <td>Updates the specified custom SMTP server configuration<br /><br />&gt; **Note:** When you update an SMTP server configuration that uses OAuth 2.0 authentication, the [`authType`](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/EmailServer/) property is required in the request body.</td>
</tr>
<tr>
    <td><a href="#delete_email_server"><CopyableCode code="delete_email_server" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-emailServerId"><code>emailServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes the specified custom SMTP server configuration</td>
</tr>
<tr>
    <td><a href="#test_email_server"><CopyableCode code="test_email_server" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-emailServerId"><code>emailServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-fromAddress"><code>fromAddress</code></a>, <a href="#parameter-toAddress"><code>toAddress</code></a></td>
    <td></td>
    <td>Tests the specified custom SMTP server configuration</td>
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
<tr id="parameter-emailServerId">
    <td><CopyableCode code="emailServerId" /></td>
    <td><code>string</code></td>
    <td></td>
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
    defaultValue="get_email_server"
    values={[
        { label: 'get_email_server', value: 'get_email_server' },
        { label: 'list_email_servers', value: 'list_email_servers' }
    ]}
>
<TabItem value="get_email_server">

Retrieves the specified custom SMTP server configuration

```sql
SELECT
id,
alias,
authType,
enabled,
host,
port,
username
FROM okta.email_servers.email_servers
WHERE emailServerId = '{{ emailServerId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_email_servers">

Lists all the enrolled custom SMTP server configurations

```sql
SELECT
email-servers
FROM okta.email_servers.email_servers
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_email_server"
    values={[
        { label: 'create_email_server', value: 'create_email_server' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_email_server">

Creates a custom email SMTP server configuration for your org.<br /><br />For more information about configuring the OAuth 2.0 authentication methods, see [Custom email providers with OAuth 2.0](https://developer.okta.com/docs/guides/custom-smtp/main/).

```sql
INSERT INTO okta.email_servers.email_servers (
alias,
authType,
enabled,
host,
port,
username,
subdomain
)
SELECT 
'{{ alias }}' /* required */,
'{{ authType }}' /* required */,
{{ enabled }} /* required */,
'{{ host }}' /* required */,
{{ port }} /* required */,
'{{ username }}' /* required */,
'{{ subdomain }}'
RETURNING
id,
alias,
authType,
enabled,
host,
port,
username
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: email_servers
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the email_servers resource.
    - name: alias
      value: "{{ alias }}"
      description: |
        Human-readable name for your SMTP server
    - name: authType
      value: "{{ authType }}"
      description: |
        <x-lifecycle-container><x-lifecycle class="ea"></x-lifecycle> <x-lifecycle class="oie"></x-lifecycle></x-lifecycle-container>The authentication type that's used by your SMTP server
      valid_values: ['BASIC_SMTP_AUTH', 'OAUTH2_CLIENT_CREDENTIALS', 'OAUTH2_JWT_BEARER_GRANT']
    - name: enabled
      value: {{ enabled }}
      description: |
        If \`true\`, all email traffic is routed through your SMTP server
    - name: host
      value: "{{ host }}"
      description: |
        Hostname or IP address of your SMTP server
    - name: port
      value: {{ port }}
      description: |
        Port number of your SMTP server
    - name: username
      value: "{{ username }}"
      description: |
        Username that's used to access your SMTP server
`}</CodeBlock>

</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_email_server"
    values={[
        { label: 'update_email_server', value: 'update_email_server' }
    ]}
>
<TabItem value="update_email_server">

Updates the specified custom SMTP server configuration<br /><br />&gt; **Note:** When you update an SMTP server configuration that uses OAuth 2.0 authentication, the [`authType`](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/EmailServer/) property is required in the request body.

```sql
UPDATE okta.email_servers.email_servers
SET 
alias = '{{ alias }}',
authType = '{{ authType }}',
enabled = {{ enabled }},
host = '{{ host }}',
port = {{ port }},
username = '{{ username }}'
WHERE 
emailServerId = '{{ emailServerId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND authType = '{{ authType }}' --required
RETURNING
id,
alias,
authType,
enabled,
host,
port,
username;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_email_server"
    values={[
        { label: 'delete_email_server', value: 'delete_email_server' }
    ]}
>
<TabItem value="delete_email_server">

Deletes the specified custom SMTP server configuration

```sql
DELETE FROM okta.email_servers.email_servers
WHERE emailServerId = '{{ emailServerId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="test_email_server"
    values={[
        { label: 'test_email_server', value: 'test_email_server' }
    ]}
>
<TabItem value="test_email_server">

Tests the specified custom SMTP server configuration

```sql
EXEC okta.email_servers.email_servers.test_email_server 
@emailServerId='{{ emailServerId }}' --required, 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"fromAddress": "{{ fromAddress }}", 
"toAddress": "{{ toAddress }}"
}'
;
```
</TabItem>
</Tabs>
