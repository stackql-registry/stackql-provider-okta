--- 
title: clients
hide_title: false
hide_table_of_contents: false
keywords:
  - clients
  - authorizationservers
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

Creates, updates, deletes, gets or lists a <code>clients</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="clients" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.authorizationservers.clients" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_oauth2_clients_for_authorization_server"
    values={[
        { label: 'list_oauth2_clients_for_authorization_server', value: 'list_oauth2_clients_for_authorization_server' }
    ]}
>
<TabItem value="list_oauth2_clients_for_authorization_server">

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
    <td><CopyableCode code="client_id" /></td>
    <td><code>string</code></td>
    <td>Unique key for the client application. The `client_id` is immutable. (example: 0oabskvc6442nkvQO0h7)</td>
</tr>
<tr>
    <td><CopyableCode code="client_name" /></td>
    <td><code>string</code></td>
    <td>Human-readable string name of the client application (example: My App)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="client_uri" /></td>
    <td><code>string</code></td>
    <td> (example: https://www.example.com)</td>
</tr>
<tr>
    <td><CopyableCode code="logo_uri" /></td>
    <td><code>string</code></td>
    <td>URL string that references a logo for the client consent dialog (not the sign-in dialog) (example: https://www.example.com/logo.png)</td>
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
    <td><a href="#list_oauth2_clients_for_authorization_server"><CopyableCode code="list_oauth2_clients_for_authorization_server" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all client resources for which the specified authorization server has tokens.<br /><br />&gt; **Note:** To list a specific user's client resources for which they have tokens or grants, use the [List all clients endpoint in the User Resources API](https://developer.okta.com/docs/api/openapi/okta-management/management/userresources/listuserclients).</td>
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
<tr id="parameter-authServerId">
    <td><CopyableCode code="authServerId" /></td>
    <td><code>string</code></td>
    <td>`id` of the Authorization Server</td>
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
    defaultValue="list_oauth2_clients_for_authorization_server"
    values={[
        { label: 'list_oauth2_clients_for_authorization_server', value: 'list_oauth2_clients_for_authorization_server' }
    ]}
>
<TabItem value="list_oauth2_clients_for_authorization_server">

Lists all client resources for which the specified authorization server has tokens.<br /><br />&gt; **Note:** To list a specific user's client resources for which they have tokens or grants, use the [List all clients endpoint in the User Resources API](https://developer.okta.com/docs/api/openapi/okta-management/management/userresources/listuserclients).

```sql
SELECT
client_id,
client_name,
_links,
client_uri,
logo_uri
FROM okta.authorizationservers.clients
WHERE authServerId = '{{ authServerId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
