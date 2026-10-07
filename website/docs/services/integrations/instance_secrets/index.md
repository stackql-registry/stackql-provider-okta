--- 
title: instance_secrets
hide_title: false
hide_table_of_contents: false
keywords:
  - instance_secrets
  - integrations
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

Creates, updates, deletes, gets or lists an <code>instance_secrets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="instance_secrets" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.integrations.instance_secrets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_api_service_integration_instance_secrets"
    values={[
        { label: 'list_api_service_integration_instance_secrets', value: 'list_api_service_integration_instance_secrets' }
    ]}
>
<TabItem value="list_api_service_integration_instance_secrets">

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
    <td>The ID of the API Service Integration instance Secret (example: ocs2f4zrZbs8nUa7p0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the current status of an application using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="client_secret" /></td>
    <td><code>string</code></td>
    <td>The OAuth 2.0 client secret string. The client secret string is returned in the response of a Secret creation request. In other responses (such as list, activate, or deactivate requests), the client secret is returned as an undisclosed hashed value. (example: DRUFXGF9XbLnS9k-Sla3x3POBiIxDreBCdZuFs5B)</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the API Service Integration instance Secret was created (example: 2023-02-21T20:08:24.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the API Service Integration instance Secret was updated (example: 2023-02-21T20:08:24.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="secret_hash" /></td>
    <td><code>string</code></td>
    <td>OAuth 2.0 client secret string hash (example: yk4SVx4sUWVJVbHt6M-UPA)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the API Service Integration instance Secret (ACTIVE, INACTIVE) (example: ACTIVE)</td>
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
    <td><a href="#list_api_service_integration_instance_secrets"><CopyableCode code="list_api_service_integration_instance_secrets" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-apiServiceId"><code>apiServiceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all client secrets for an API Service Integration instance by `apiServiceId`</td>
</tr>
<tr>
    <td><a href="#create_api_service_integration_instance_secret"><CopyableCode code="create_api_service_integration_instance_secret" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-apiServiceId"><code>apiServiceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates an API Service Integration instance Secret object with a new active client secret. You can create up to two Secret objects. An error is returned if you attempt to create more than two Secret objects.</td>
</tr>
<tr>
    <td><a href="#delete_api_service_integration_instance_secret"><CopyableCode code="delete_api_service_integration_instance_secret" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-apiServiceId"><code>apiServiceId</code></a>, <a href="#parameter-secretId"><code>secretId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an API Service Integration instance Secret by `secretId`. You can only delete an inactive Secret.</td>
</tr>
<tr>
    <td><a href="#activate_api_service_integration_instance_secret"><CopyableCode code="activate_api_service_integration_instance_secret" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-apiServiceId"><code>apiServiceId</code></a>, <a href="#parameter-secretId"><code>secretId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates an API Service Integration instance Secret by `secretId`</td>
</tr>
<tr>
    <td><a href="#deactivate_api_service_integration_instance_secret"><CopyableCode code="deactivate_api_service_integration_instance_secret" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-apiServiceId"><code>apiServiceId</code></a>, <a href="#parameter-secretId"><code>secretId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates an API Service Integration instance Secret by `secretId`</td>
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
<tr id="parameter-apiServiceId">
    <td><CopyableCode code="apiServiceId" /></td>
    <td><code>string</code></td>
    <td>`id` of the API Service Integration instance (example: 000lr2rLjZ6NsGn1P0g3)</td>
</tr>
<tr id="parameter-secretId">
    <td><CopyableCode code="secretId" /></td>
    <td><code>string</code></td>
    <td>`id` of the API Service Integration instance Secret (example: ocs2f4zrZbs8nUa7p0g4)</td>
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
    defaultValue="list_api_service_integration_instance_secrets"
    values={[
        { label: 'list_api_service_integration_instance_secrets', value: 'list_api_service_integration_instance_secrets' }
    ]}
>
<TabItem value="list_api_service_integration_instance_secrets">

Lists all client secrets for an API Service Integration instance by `apiServiceId`

```sql
SELECT
id,
_links,
client_secret,
created,
lastUpdated,
secret_hash,
status
FROM okta.integrations.instance_secrets
WHERE apiServiceId = '{{ apiServiceId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_api_service_integration_instance_secret"
    values={[
        { label: 'create_api_service_integration_instance_secret', value: 'create_api_service_integration_instance_secret' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_api_service_integration_instance_secret">

Creates an API Service Integration instance Secret object with a new active client secret. You can create up to two Secret objects. An error is returned if you attempt to create more than two Secret objects.

```sql
INSERT INTO okta.integrations.instance_secrets (
apiServiceId,
subdomain
)
SELECT 
'{{ apiServiceId }}',
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
- name: instance_secrets
  props:
    - name: apiServiceId
      value: "{{ apiServiceId }}"
      description: Required parameter for the instance_secrets resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the instance_secrets resource.
`}</CodeBlock>

</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_api_service_integration_instance_secret"
    values={[
        { label: 'delete_api_service_integration_instance_secret', value: 'delete_api_service_integration_instance_secret' }
    ]}
>
<TabItem value="delete_api_service_integration_instance_secret">

Deletes an API Service Integration instance Secret by `secretId`. You can only delete an inactive Secret.

```sql
DELETE FROM okta.integrations.instance_secrets
WHERE apiServiceId = '{{ apiServiceId }}' --required
AND secretId = '{{ secretId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_api_service_integration_instance_secret"
    values={[
        { label: 'activate_api_service_integration_instance_secret', value: 'activate_api_service_integration_instance_secret' },
        { label: 'deactivate_api_service_integration_instance_secret', value: 'deactivate_api_service_integration_instance_secret' }
    ]}
>
<TabItem value="activate_api_service_integration_instance_secret">

Activates an API Service Integration instance Secret by `secretId`

```sql
EXEC okta.integrations.instance_secrets.activate_api_service_integration_instance_secret 
@apiServiceId='{{ apiServiceId }}' --required, 
@secretId='{{ secretId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_api_service_integration_instance_secret">

Deactivates an API Service Integration instance Secret by `secretId`

```sql
EXEC okta.integrations.instance_secrets.deactivate_api_service_integration_instance_secret 
@apiServiceId='{{ apiServiceId }}' --required, 
@secretId='{{ secretId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
