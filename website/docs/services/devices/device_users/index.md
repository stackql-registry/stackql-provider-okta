--- 
title: device_users
hide_title: false
hide_table_of_contents: false
keywords:
  - device_users
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

Creates, updates, deletes, gets or lists a <code>device_users</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="device_users" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.devices.device_users" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_device_users"
    values={[
        { label: 'list_device_users', value: 'list_device_users' }
    ]}
>
<TabItem value="list_device_users">

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
    <td><CopyableCode code="created" /></td>
    <td><code>string</code></td>
    <td>Timestamp when device was created</td>
</tr>
<tr>
    <td><CopyableCode code="managementStatus" /></td>
    <td><code>string</code></td>
    <td>The management status of the device (MANAGED, NOT_MANAGED)</td>
</tr>
<tr>
    <td><CopyableCode code="screenLockType" /></td>
    <td><code>string</code></td>
    <td>Screen lock type of the device (NONE, PASSCODE, BIOMETRIC)</td>
</tr>
<tr>
    <td><CopyableCode code="user" /></td>
    <td><code>object</code></td>
    <td></td>
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
    <td><a href="#list_device_users"><CopyableCode code="list_device_users" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-deviceId"><code>deviceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all Users for a device by `deviceId`</td>
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
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_device_users"
    values={[
        { label: 'list_device_users', value: 'list_device_users' }
    ]}
>
<TabItem value="list_device_users">

Lists all Users for a device by `deviceId`

```sql
SELECT
created,
managementStatus,
screenLockType,
user
FROM okta.devices.device_users
WHERE deviceId = '{{ deviceId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
