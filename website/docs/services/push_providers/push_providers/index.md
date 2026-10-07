--- 
title: push_providers
hide_title: false
hide_table_of_contents: false
keywords:
  - push_providers
  - push_providers
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

Creates, updates, deletes, gets or lists a <code>push_providers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="push_providers" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.push_providers.push_providers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_push_provider"
    values={[
        { label: 'get_push_provider', value: 'get_push_provider' },
        { label: 'list_push_providers', value: 'list_push_providers' }
    ]}
>
<TabItem value="get_push_provider">

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
    <td>Unique key for the Push Provider</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Display name of the push provider</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdatedDate" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the Push Provider was last modified</td>
</tr>
<tr>
    <td><CopyableCode code="providerType" /></td>
    <td><code>string</code></td>
    <td> (APNS, FCM)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_push_providers">

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
    <td>Unique key for the Push Provider</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Display name of the push provider</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdatedDate" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the Push Provider was last modified</td>
</tr>
<tr>
    <td><CopyableCode code="providerType" /></td>
    <td><code>string</code></td>
    <td> (APNS, FCM)</td>
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
    <td><a href="#get_push_provider"><CopyableCode code="get_push_provider" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-pushProviderId"><code>pushProviderId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a push provider by `pushProviderId`</td>
</tr>
<tr>
    <td><a href="#list_push_providers"><CopyableCode code="list_push_providers" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-type"><code>type</code></a></td>
    <td>Lists all push providers</td>
</tr>
<tr>
    <td><a href="#create_push_provider"><CopyableCode code="create_push_provider" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a new push provider. Each Push Provider must have a unique `name`.</td>
</tr>
<tr>
    <td><a href="#replace_push_provider"><CopyableCode code="replace_push_provider" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-pushProviderId"><code>pushProviderId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a push provider by `pushProviderId`</td>
</tr>
<tr>
    <td><a href="#delete_push_provider"><CopyableCode code="delete_push_provider" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-pushProviderId"><code>pushProviderId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a push provider by `pushProviderId`. If the push provider is currently being used in the org by a custom authenticator, the delete will not be allowed.</td>
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
<tr id="parameter-pushProviderId">
    <td><CopyableCode code="pushProviderId" /></td>
    <td><code>string</code></td>
    <td>Id of the push provider</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-type">
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Filters push providers by `providerType`</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_push_provider"
    values={[
        { label: 'get_push_provider', value: 'get_push_provider' },
        { label: 'list_push_providers', value: 'list_push_providers' }
    ]}
>
<TabItem value="get_push_provider">

Retrieves a push provider by `pushProviderId`

```sql
SELECT
id,
name,
_links,
lastUpdatedDate,
providerType
FROM okta.push_providers.push_providers
WHERE pushProviderId = '{{ pushProviderId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_push_providers">

Lists all push providers

```sql
SELECT
id,
name,
_links,
lastUpdatedDate,
providerType
FROM okta.push_providers.push_providers
WHERE subdomain = '{{ subdomain }}' -- required
AND type = '{{ type }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_push_provider"
    values={[
        { label: 'create_push_provider', value: 'create_push_provider' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_push_provider">

Creates a new push provider. Each Push Provider must have a unique `name`.

```sql
INSERT INTO okta.push_providers.push_providers (
name,
providerType,
subdomain
)
SELECT 
'{{ name }}',
'{{ providerType }}',
'{{ subdomain }}'
RETURNING
id,
name,
_links,
lastUpdatedDate,
providerType
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: push_providers
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the push_providers resource.
    - name: name
      value: "{{ name }}"
      description: |
        Display name of the push provider
    - name: providerType
      value: "{{ providerType }}"
      valid_values: ['APNS', 'FCM']
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_push_provider"
    values={[
        { label: 'replace_push_provider', value: 'replace_push_provider' }
    ]}
>
<TabItem value="replace_push_provider">

Replaces a push provider by `pushProviderId`

```sql
REPLACE okta.push_providers.push_providers
SET 
name = '{{ name }}',
providerType = '{{ providerType }}'
WHERE 
pushProviderId = '{{ pushProviderId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
lastUpdatedDate,
providerType;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_push_provider"
    values={[
        { label: 'delete_push_provider', value: 'delete_push_provider' }
    ]}
>
<TabItem value="delete_push_provider">

Deletes a push provider by `pushProviderId`. If the push provider is currently being used in the org by a custom authenticator, the delete will not be allowed.

```sql
DELETE FROM okta.push_providers.push_providers
WHERE pushProviderId = '{{ pushProviderId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
