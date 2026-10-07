--- 
title: instances
hide_title: false
hide_table_of_contents: false
keywords:
  - instances
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

Creates, updates, deletes, gets or lists an <code>instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="instances" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.integrations.instances" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_api_service_integration_instance"
    values={[
        { label: 'get_api_service_integration_instance', value: 'get_api_service_integration_instance' },
        { label: 'list_api_service_integration_instances', value: 'list_api_service_integration_instances' }
    ]}
>
<TabItem value="get_api_service_integration_instance">

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
    <td>The ID of the API Service Integration instance (example: 0oa72lrepvp4WqEET1d9)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the API service integration that corresponds with the `type` property. This is the full name of the API service integration listed in the Okta Integration Network (OIN) catalog. (example: My App Cloud Identity Engine)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the current status of an application using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="configGuideUrl" /></td>
    <td><code>string</code></td>
    <td>The URL to the API service integration configuration guide (example: https://&#123;docDomain&#125;/my-app-cie/configuration-guide)</td>
</tr>
<tr>
    <td><CopyableCode code="createdAt" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the API Service Integration instance was created (example: 2023-02-21T20:08:24.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>The user ID of the API Service Integration instance creator (example: 00uu3u0ujW1P6AfZC2d5)</td>
</tr>
<tr>
    <td><CopyableCode code="grantedScopes" /></td>
    <td><code>array</code></td>
    <td>The list of Okta management scopes granted to the API Service Integration instance. See [Okta management OAuth 2.0 scopes]https://developer.okta.com/docs/api/oauth2/#okta-admin-management.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>App instance properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the API service integration. This string is an underscore-concatenated, lowercased API service integration name. For example, `my_api_log_integration`. (example: my_app_cie)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_api_service_integration_instances">

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
    <td>The ID of the API Service Integration instance (example: 0oa72lrepvp4WqEET1d9)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the API service integration that corresponds with the `type` property. This is the full name of the API service integration listed in the Okta Integration Network (OIN) catalog. (example: My App Cloud Identity Engine)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the current status of an application using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="configGuideUrl" /></td>
    <td><code>string</code></td>
    <td>The URL to the API service integration configuration guide (example: https://&#123;docDomain&#125;/my-app-cie/configuration-guide)</td>
</tr>
<tr>
    <td><CopyableCode code="createdAt" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the API Service Integration instance was created (example: 2023-02-21T20:08:24.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>The user ID of the API Service Integration instance creator (example: 00uu3u0ujW1P6AfZC2d5)</td>
</tr>
<tr>
    <td><CopyableCode code="grantedScopes" /></td>
    <td><code>array</code></td>
    <td>The list of Okta management scopes granted to the API Service Integration instance. See [Okta management OAuth 2.0 scopes]https://developer.okta.com/docs/api/oauth2/#okta-admin-management.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>App instance properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the API service integration. This string is an underscore-concatenated, lowercased API service integration name. For example, `my_api_log_integration`. (example: my_app_cie)</td>
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
    <td><a href="#get_api_service_integration_instance"><CopyableCode code="get_api_service_integration_instance" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-apiServiceId"><code>apiServiceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an API Service Integration instance by `id`</td>
</tr>
<tr>
    <td><a href="#list_api_service_integration_instances"><CopyableCode code="list_api_service_integration_instances" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a></td>
    <td>Lists all API Service Integration instances with a pagination option</td>
</tr>
<tr>
    <td><a href="#create_api_service_integration_instance"><CopyableCode code="create_api_service_integration_instance" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-type"><code>type</code></a>, <a href="#parameter-grantedScopes"><code>grantedScopes</code></a></td>
    <td></td>
    <td>Creates and authorizes an API Service Integration instance</td>
</tr>
<tr>
    <td><a href="#delete_api_service_integration_instance"><CopyableCode code="delete_api_service_integration_instance" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-apiServiceId"><code>apiServiceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an API Service Integration instance by `id`. This operation also revokes access to scopes that were previously granted to this API Service Integration instance.</td>
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
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](https://developer.okta.com/docs/api/#pagination) and [Link header](https://developer.okta.com/docs/api/#link-header).</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_api_service_integration_instance"
    values={[
        { label: 'get_api_service_integration_instance', value: 'get_api_service_integration_instance' },
        { label: 'list_api_service_integration_instances', value: 'list_api_service_integration_instances' }
    ]}
>
<TabItem value="get_api_service_integration_instance">

Retrieves an API Service Integration instance by `id`

```sql
SELECT
id,
name,
_links,
configGuideUrl,
createdAt,
createdBy,
grantedScopes,
properties,
type
FROM okta.integrations.instances
WHERE apiServiceId = '{{ apiServiceId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_api_service_integration_instances">

Lists all API Service Integration instances with a pagination option

```sql
SELECT
id,
name,
_links,
configGuideUrl,
createdAt,
createdBy,
grantedScopes,
properties,
type
FROM okta.integrations.instances
WHERE subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_api_service_integration_instance"
    values={[
        { label: 'create_api_service_integration_instance', value: 'create_api_service_integration_instance' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_api_service_integration_instance">

Creates and authorizes an API Service Integration instance

```sql
INSERT INTO okta.integrations.instances (
grantedScopes,
properties,
type,
subdomain
)
SELECT 
'{{ grantedScopes }}' /* required */,
'{{ properties }}',
'{{ type }}' /* required */,
'{{ subdomain }}'
RETURNING
id,
name,
_links,
clientSecret,
configGuideUrl,
createdAt,
createdBy,
grantedScopes,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: instances
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the instances resource.
    - name: grantedScopes
      value:
        - "{{ grantedScopes }}"
      description: |
        The list of Okta management scopes granted to the API Service Integration instance. See [Okta management OAuth 2.0 scopes]https://developer.okta.com/docs/api/oauth2/#okta-admin-management.
    - name: properties
      value: "{{ properties }}"
      description: |
        App instance properties
    - name: type
      value: "{{ type }}"
      description: |
        The type of the API service integration. This string is an underscore-concatenated, lowercased API service integration name. For example, \`my_api_log_integration\`.
`}</CodeBlock>

</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_api_service_integration_instance"
    values={[
        { label: 'delete_api_service_integration_instance', value: 'delete_api_service_integration_instance' }
    ]}
>
<TabItem value="delete_api_service_integration_instance">

Deletes an API Service Integration instance by `id`. This operation also revokes access to scopes that were previously granted to this API Service Integration instance.

```sql
DELETE FROM okta.integrations.instances
WHERE apiServiceId = '{{ apiServiceId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
