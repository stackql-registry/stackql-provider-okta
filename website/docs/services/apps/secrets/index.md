--- 
title: secrets
hide_title: false
hide_table_of_contents: false
keywords:
  - secrets
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

Creates, updates, deletes, gets or lists a <code>secrets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="secrets" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.apps.secrets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_oauth2_client_secret"
    values={[
        { label: 'get_oauth2_client_secret', value: 'get_oauth2_client_secret' },
        { label: 'list_oauth2_client_secrets', value: 'list_oauth2_client_secrets' }
    ]}
>
<TabItem value="get_oauth2_client_secret">

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
    <td>The unique ID of the OAuth 2.0 client secret (example: ocs2f4zrZbs8nUa7p0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the current status of an app using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="client_secret" /></td>
    <td><code>string</code></td>
    <td>The OAuth 2.0 client secret string (example: DRUFXGF9XbLn......a3x3POBiIxDreBCdZuFs5B)</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the OAuth 2.0 client secret was created (example: 2023-02-21T20:08:24.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the OAuth 2.0 client secret was updated (example: 2023-02-21T20:08:24.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="secret_hash" /></td>
    <td><code>string</code></td>
    <td>OAuth 2.0 client secret string hash (example: yk4SVx4sUWVJVbHt6M-UPA)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the OAuth 2.0 client secret (ACTIVE, INACTIVE) (example: ACTIVE, default: ACTIVE)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_oauth2_client_secrets">

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
    <td>The unique ID of the OAuth 2.0 client secret (example: ocs2f4zrZbs8nUa7p0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the current status of an app using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="client_secret" /></td>
    <td><code>string</code></td>
    <td>The OAuth 2.0 client secret string (example: DRUFXGF9XbLn......a3x3POBiIxDreBCdZuFs5B)</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the OAuth 2.0 client secret was created (example: 2023-02-21T20:08:24.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the OAuth 2.0 client secret was updated (example: 2023-02-21T20:08:24.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="secret_hash" /></td>
    <td><code>string</code></td>
    <td>OAuth 2.0 client secret string hash (example: yk4SVx4sUWVJVbHt6M-UPA)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the OAuth 2.0 client secret (ACTIVE, INACTIVE) (example: ACTIVE, default: ACTIVE)</td>
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
    <td><a href="#get_oauth2_client_secret"><CopyableCode code="get_oauth2_client_secret" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-secretId"><code>secretId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an OAuth 2.0 client secrets by `secretId`</td>
</tr>
<tr>
    <td><a href="#list_oauth2_client_secrets"><CopyableCode code="list_oauth2_client_secrets" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all client secrets for an OAuth 2.0 client app</td>
</tr>
<tr>
    <td><a href="#create_oauth2_client_secret"><CopyableCode code="create_oauth2_client_secret" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates an OAuth 2.0 client secret object with a new active client secret. You can create up to two secret objects. An error is returned if you attempt to create more than two secret objects.<br />&gt; **Note:** This API lets you bring your own secret. If [token_endpoint_auth_method](https://developer.okta.com/docs/api/openapi/okta-oauth/oauth/client/createclient#client/createclient/t=request&path=token_endpoint_auth_method) of the app is `client_secret_jwt`, then the minimum length of `client_secret` is 32 characters. If no secret is specified in the request, Okta adds a new system-generated secret.</td>
</tr>
<tr>
    <td><a href="#delete_oauth2_client_secret"><CopyableCode code="delete_oauth2_client_secret" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-secretId"><code>secretId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an OAuth 2.0 client secret by `secretId`. You can only delete an inactive secret.</td>
</tr>
<tr>
    <td><a href="#activate_oauth2_client_secret"><CopyableCode code="activate_oauth2_client_secret" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-secretId"><code>secretId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates an OAuth 2.0 client secret by `secretId`</td>
</tr>
<tr>
    <td><a href="#deactivate_oauth2_client_secret"><CopyableCode code="deactivate_oauth2_client_secret" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-secretId"><code>secretId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates an OAuth 2.0 client secret by `secretId`. You can't deactivate a secret if it's the only secret of the client.</td>
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
<tr id="parameter-secretId">
    <td><CopyableCode code="secretId" /></td>
    <td><code>string</code></td>
    <td>Unique `id` of the OAuth 2.0 client secret (example: ocs2f4zrZbs8nUa7p0g4)</td>
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
    defaultValue="get_oauth2_client_secret"
    values={[
        { label: 'get_oauth2_client_secret', value: 'get_oauth2_client_secret' },
        { label: 'list_oauth2_client_secrets', value: 'list_oauth2_client_secrets' }
    ]}
>
<TabItem value="get_oauth2_client_secret">

Retrieves an OAuth 2.0 client secrets by `secretId`

```sql
SELECT
id,
_links,
client_secret,
created,
lastUpdated,
secret_hash,
status
FROM okta.apps.secrets
WHERE appId = '{{ appId }}' -- required
AND secretId = '{{ secretId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_oauth2_client_secrets">

Lists all client secrets for an OAuth 2.0 client app

```sql
SELECT
id,
_links,
client_secret,
created,
lastUpdated,
secret_hash,
status
FROM okta.apps.secrets
WHERE appId = '{{ appId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_oauth2_client_secret"
    values={[
        { label: 'create_oauth2_client_secret', value: 'create_oauth2_client_secret' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_oauth2_client_secret">

Creates an OAuth 2.0 client secret object with a new active client secret. You can create up to two secret objects. An error is returned if you attempt to create more than two secret objects.<br />&gt; **Note:** This API lets you bring your own secret. If [token_endpoint_auth_method](https://developer.okta.com/docs/api/openapi/okta-oauth/oauth/client/createclient#client/createclient/t=request&path=token_endpoint_auth_method) of the app is `client_secret_jwt`, then the minimum length of `client_secret` is 32 characters. If no secret is specified in the request, Okta adds a new system-generated secret.

```sql
INSERT INTO okta.apps.secrets (
client_secret,
status,
appId,
subdomain
)
SELECT 
'{{ client_secret }}',
'{{ status }}',
'{{ appId }}',
'{{ subdomain }}'
RETURNING
id,
_links,
client_secret,
created,
lastUpdated,
secret_hash,
status
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: secrets
  props:
    - name: appId
      value: "{{ appId }}"
      description: Required parameter for the secrets resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the secrets resource.
    - name: client_secret
      value: "{{ client_secret }}"
      description: |
        The OAuth 2.0 client secret string
    - name: status
      value: "{{ status }}"
      description: |
        Status of the OAuth 2.0 client secret
      valid_values: ['ACTIVE', 'INACTIVE']
`}</CodeBlock>

</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_oauth2_client_secret"
    values={[
        { label: 'delete_oauth2_client_secret', value: 'delete_oauth2_client_secret' }
    ]}
>
<TabItem value="delete_oauth2_client_secret">

Deletes an OAuth 2.0 client secret by `secretId`. You can only delete an inactive secret.

```sql
DELETE FROM okta.apps.secrets
WHERE appId = '{{ appId }}' --required
AND secretId = '{{ secretId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_oauth2_client_secret"
    values={[
        { label: 'activate_oauth2_client_secret', value: 'activate_oauth2_client_secret' },
        { label: 'deactivate_oauth2_client_secret', value: 'deactivate_oauth2_client_secret' }
    ]}
>
<TabItem value="activate_oauth2_client_secret">

Activates an OAuth 2.0 client secret by `secretId`

```sql
EXEC okta.apps.secrets.activate_oauth2_client_secret 
@appId='{{ appId }}' --required, 
@secretId='{{ secretId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_oauth2_client_secret">

Deactivates an OAuth 2.0 client secret by `secretId`. You can't deactivate a secret if it's the only secret of the client.

```sql
EXEC okta.apps.secrets.deactivate_oauth2_client_secret 
@appId='{{ appId }}' --required, 
@secretId='{{ secretId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
