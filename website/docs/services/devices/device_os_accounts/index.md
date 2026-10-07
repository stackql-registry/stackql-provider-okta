--- 
title: device_os_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - device_os_accounts
  - devices
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

Creates, updates, deletes, gets or lists a <code>device_os_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="device_os_accounts" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.devices.device_os_accounts" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_device_osaccount"
    values={[
        { label: 'get_device_osaccount', value: 'get_device_osaccount' },
        { label: 'list_device_osaccounts', value: 'list_device_osaccounts' }
    ]}
>
<TabItem value="get_device_osaccount">

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
    <td>Unique identifier for the OS account</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resources related to the OS account</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the OS account was created</td>
</tr>
<tr>
    <td><CopyableCode code="deviceId" /></td>
    <td><code>string</code></td>
    <td>Unique identifier of the device this OS account belongs to</td>
</tr>
<tr>
    <td><CopyableCode code="lastSeenAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the OS account was last seen</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the OS account was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="platform" /></td>
    <td><code>string</code></td>
    <td>OS platform for OS accounts (desktop platforms only) (MACOS, WINDOWS)</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="resourceAlternateId" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="resourceDisplayName" /></td>
    <td><code>object</code></td>
    <td>Display name of the OS account</td>
</tr>
<tr>
    <td><CopyableCode code="resourceId" /></td>
    <td><code>string</code></td>
    <td>Alternate key for the `id`</td>
</tr>
<tr>
    <td><CopyableCode code="resourceType" /></td>
    <td><code>string</code></td>
    <td> (default: DOSAccount)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the OS account (ACTIVE, DELETED)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_device_osaccounts">

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
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
    <td><a href="#get_device_osaccount"><CopyableCode code="get_device_osaccount" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-deviceId"><code>deviceId</code></a>, <a href="#parameter-osAccountId"><code>osAccountId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Retrieves an OS account by `osAccountId` for a device</td>
</tr>
<tr>
    <td><a href="#list_device_osaccounts"><CopyableCode code="list_device_osaccounts" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-deviceId"><code>deviceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Lists all OS accounts for a device by `deviceId`</td>
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
<tr id="parameter-deviceId">
    <td><CopyableCode code="deviceId" /></td>
    <td><code>string</code></td>
    <td>`id` of the device</td>
</tr>
<tr id="parameter-osAccountId">
    <td><CopyableCode code="osAccountId" /></td>
    <td><code>string</code></td>
    <td>The unique identifier for the OS account (example: dao3qgkIEKjhNZudR0g4)</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>array</code></td>
    <td>Comma-separated list of related resources to include in the `_embedded` attribute. Supported values are `users` and `account_linked_enrollments`.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_device_osaccount"
    values={[
        { label: 'get_device_osaccount', value: 'get_device_osaccount' },
        { label: 'list_device_osaccounts', value: 'list_device_osaccounts' }
    ]}
>
<TabItem value="get_device_osaccount">

Retrieves an OS account by `osAccountId` for a device

```sql
SELECT
id,
_embedded,
_links,
created,
deviceId,
lastSeenAt,
lastUpdated,
platform,
profile,
resourceAlternateId,
resourceDisplayName,
resourceId,
resourceType,
status
FROM okta.devices.device_os_accounts
WHERE deviceId = '{{ deviceId }}' -- required
AND osAccountId = '{{ osAccountId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}'
;
```
</TabItem>
<TabItem value="list_device_osaccounts">

Lists all OS accounts for a device by `deviceId`

```sql
SELECT
*
FROM okta.devices.device_os_accounts
WHERE deviceId = '{{ deviceId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}'
;
```
</TabItem>
</Tabs>
