--- 
title: hook_keys
hide_title: false
hide_table_of_contents: false
keywords:
  - hook_keys
  - hook_keys
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

Creates, updates, deletes, gets or lists a <code>hook_keys</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="hook_keys" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.hook_keys.hook_keys" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_hook_key"
    values={[
        { label: 'get_hook_key', value: 'get_hook_key' },
        { label: 'list_hook_keys', value: 'list_hook_keys' }
    ]}
>
<TabItem value="get_hook_key">

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
    <td>The unique identifier for the key</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Display name of the key</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the key was created</td>
</tr>
<tr>
    <td><CopyableCode code="isUsed" /></td>
    <td><code>string (boolean)</code></td>
    <td>Whether this key is currently in use by other applications</td>
</tr>
<tr>
    <td><CopyableCode code="keyId" /></td>
    <td><code>string</code></td>
    <td>The alias of the public key</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the key was updated</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_hook_keys">

The `id` property in the response as `id` serves as the unique ID for the key, which you can specify when invoking other CRUD operations. <br /><br />The `keyId` provided in the response is the alias of the public key that you can use to get details of the public key data in a separate call.

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
    <td>The unique identifier for the key</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Display name of the key</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the key was created</td>
</tr>
<tr>
    <td><CopyableCode code="isUsed" /></td>
    <td><code>string (boolean)</code></td>
    <td>Whether this key is currently in use by other applications</td>
</tr>
<tr>
    <td><CopyableCode code="keyId" /></td>
    <td><code>string</code></td>
    <td>The alias of the public key</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the key was updated</td>
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
    <td><a href="#get_hook_key"><CopyableCode code="get_hook_key" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-id"><code>id</code></a></td>
    <td>Retrieves the public portion of the Key object using the `id` parameter<br /><br />&gt;**Note:** The `?expand=publickey` query parameter optionally returns the full object including the details of the public key in the response body's `_embedded` property.</td>
</tr>
<tr>
    <td><a href="#list_hook_keys"><CopyableCode code="list_hook_keys" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all keys</td>
</tr>
<tr>
    <td><a href="#create_hook_key"><CopyableCode code="create_hook_key" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a key for use with other parts of the application, such as inline hooks<br /><br />&gt; **Note:**  Use the key name to access this key for inline hook operations.<br /><br />The total number of keys that you can create in an Okta org is limited to 50.<br /><br /> The response is a [Key object](https://developer.okta.com/docs/reference/api/hook-keys/#key-object) that represents the<br /> key that you create. The `id` property in the response serves as the unique ID for the key, which you can specify when<br /> invoking other CRUD operations. The `keyId` provided in the response is the alias of the public key that you can use to get<br /> details of the public key data in a separate call.<br /><br />&gt; **Note:** The keyId is the alias of the public key that you can use to retrieve the public key.</td>
</tr>
<tr>
    <td><a href="#replace_hook_key"><CopyableCode code="replace_hook_key" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a key by `id`<br /><br />This request replaces existing properties after passing validation.<br /><br />&gt; **Note:** The only parameter that you can update is the name of the key, which must be unique at all times.</td>
</tr>
<tr>
    <td><a href="#delete_hook_key"><CopyableCode code="delete_hook_key" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a key by `id`. After being deleted, the key is unrecoverable.<br /><br />As a safety precaution, only keys that aren't being used are eligible for deletion.<br /></td>
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
<tr id="parameter-id">
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>ID of the Hook Key</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-id">
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>A valid key ID</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_hook_key"
    values={[
        { label: 'get_hook_key', value: 'get_hook_key' },
        { label: 'list_hook_keys', value: 'list_hook_keys' }
    ]}
>
<TabItem value="get_hook_key">

Retrieves the public portion of the Key object using the `id` parameter<br /><br />&gt;**Note:** The `?expand=publickey` query parameter optionally returns the full object including the details of the public key in the response body's `_embedded` property.

```sql
SELECT
id,
name,
created,
isUsed,
keyId,
lastUpdated
FROM okta.hook_keys.hook_keys
WHERE subdomain = '{{ subdomain }}' -- required
AND id = '{{ id }}'
;
```
</TabItem>
<TabItem value="list_hook_keys">

Lists all keys

```sql
SELECT
id,
name,
created,
isUsed,
keyId,
lastUpdated
FROM okta.hook_keys.hook_keys
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_hook_key"
    values={[
        { label: 'create_hook_key', value: 'create_hook_key' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_hook_key">

Creates a key for use with other parts of the application, such as inline hooks<br /><br />&gt; **Note:**  Use the key name to access this key for inline hook operations.<br /><br />The total number of keys that you can create in an Okta org is limited to 50.<br /><br /> The response is a [Key object](https://developer.okta.com/docs/reference/api/hook-keys/#key-object) that represents the<br /> key that you create. The `id` property in the response serves as the unique ID for the key, which you can specify when<br /> invoking other CRUD operations. The `keyId` provided in the response is the alias of the public key that you can use to get<br /> details of the public key data in a separate call.<br /><br />&gt; **Note:** The keyId is the alias of the public key that you can use to retrieve the public key.

```sql
INSERT INTO okta.hook_keys.hook_keys (
name,
subdomain
)
SELECT 
'{{ name }}',
'{{ subdomain }}'
RETURNING
id,
name,
_embedded,
created,
isUsed,
keyId,
lastUpdated
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: hook_keys
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the hook_keys resource.
    - name: name
      value: "{{ name }}"
      description: |
        Display name for the key
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_hook_key"
    values={[
        { label: 'replace_hook_key', value: 'replace_hook_key' }
    ]}
>
<TabItem value="replace_hook_key">

Replaces a key by `id`<br /><br />This request replaces existing properties after passing validation.<br /><br />&gt; **Note:** The only parameter that you can update is the name of the key, which must be unique at all times.

```sql
REPLACE okta.hook_keys.hook_keys
SET 
name = '{{ name }}'
WHERE 
id = '{{ id }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_embedded,
created,
isUsed,
keyId,
lastUpdated;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_hook_key"
    values={[
        { label: 'delete_hook_key', value: 'delete_hook_key' }
    ]}
>
<TabItem value="delete_hook_key">

Deletes a key by `id`. After being deleted, the key is unrecoverable.<br /><br />As a safety precaution, only keys that aren't being used are eligible for deletion.<br />

```sql
DELETE FROM okta.hook_keys.hook_keys
WHERE id = '{{ id }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
