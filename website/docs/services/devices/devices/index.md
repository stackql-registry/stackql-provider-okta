--- 
title: devices
hide_title: false
hide_table_of_contents: false
keywords:
  - devices
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

Creates, updates, deletes, gets or lists a <code>devices</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="devices" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.devices.devices" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_device"
    values={[
        { label: 'get_device', value: 'get_device' },
        { label: 'list_devices', value: 'list_devices' }
    ]}
>
<TabItem value="get_device">

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
    <td>Unique key for the device</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the device was created</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the device record was last updated. Updates occur when Okta collects and saves device signals during authentication, and when the lifecycle state of the device changes.</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="providers" /></td>
    <td><code>array</code></td>
    <td>List of providers for the device when the `expand=providers` query parameter is specified</td>
</tr>
<tr>
    <td><CopyableCode code="resourceAlternateId" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="resourceDisplayName" /></td>
    <td><code>object</code></td>
    <td>Display name of the device</td>
</tr>
<tr>
    <td><CopyableCode code="resourceId" /></td>
    <td><code>string</code></td>
    <td>Alternate key for the `id`</td>
</tr>
<tr>
    <td><CopyableCode code="resourceType" /></td>
    <td><code>string</code></td>
    <td> (default: UDDevice)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The state object of the device (ACTIVE, DEACTIVATED, SUSPENDED, UNSUSPENDED)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_devices">

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
    <td>Unique key for the device</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>List of associated users for the device if the `expand=user` query parameter is specified in the request. Use `expand=userSummary` to get only a summary of each associated user for the device.</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the device was created</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the device record was last updated. Updates occur when Okta collects and saves device signals during authentication, and when the lifecycle state of the device changes.</td>
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
    <td>Display name of the device</td>
</tr>
<tr>
    <td><CopyableCode code="resourceId" /></td>
    <td><code>string</code></td>
    <td>Alternate key for the `id`</td>
</tr>
<tr>
    <td><CopyableCode code="resourceType" /></td>
    <td><code>string</code></td>
    <td> (default: UDDevice)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The state object of the device (ACTIVE, DEACTIVATED, SUSPENDED, UNSUSPENDED)</td>
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
    <td><a href="#get_device"><CopyableCode code="get_device" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-deviceId"><code>deviceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a device by `deviceId`</td>
</tr>
<tr>
    <td><a href="#list_devices"><CopyableCode code="list_devices" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-search"><code>search</code></a>, <a href="#parameter-expand"><code>expand</code></a></td>
    <td>Lists all devices with pagination support.<br /><br />&gt;**Note:** To list all devices enrolled by a user, use the [List all devices endpoint in the User Resources API](https://developer.okta.com/docs/api/openapi/okta-management/management/userresources/listuserdevices).<br /><br />You can return a subset of devices that match a supported search criteria using the `search` query parameter.<br />Searches for devices based on the properties specified in the `search` parameter conforming SCIM filter specifications (case-insensitive). This data is eventually consistent. The API returns different results depending on specified queries in the request. Empty list is returned if no objects match `search` request.<br /><br />&gt; **Note:** The `search` parameter results are sourced from an eventually consistent datasource and may not reflect the latest information.<br /><br />Don't use search results directly for record updates, as the data might be stale and therefore overwrite newer data, resulting in data loss.<br /><br />Use an `id` lookup for records that you update to ensure your results contain the latest data.<br /><br />This operation requires [URL encoding](https://www.w3.org/TR/html4/interact/forms.html#h-17.13.4.1). For example, `search=profile.displayName eq "Bob"` is encoded as `search=profile.displayName%20eq%20%22Bob%22`.</td>
</tr>
<tr>
    <td><a href="#delete_device"><CopyableCode code="delete_device" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-deviceId"><code>deviceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes (permanently) a device by `deviceId` if it has a status of `DEACTIVATED`. You can transition the device to `DEACTIVATED` status using the [Deactivate a Device](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/device/other/deactivatedevice) endpoint.<br />This request is destructive and deletes all of the profile data related to the device. Once deleted, device data can't be recovered. However, reenrollment creates a new device record.<br />&gt; **Note:** Attempts to delete a device that isn't in a `DEACTIVATED` state raise an error.</td>
</tr>
<tr>
    <td><a href="#activate_device"><CopyableCode code="activate_device" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deviceId"><code>deviceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a device by setting its status to `ACTIVE` by `deviceId`.<br />Activated devices are used to create and delete device user links.</td>
</tr>
<tr>
    <td><a href="#deactivate_device"><CopyableCode code="deactivate_device" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deviceId"><code>deviceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates a device by setting its status to `DEACTIVATED` by `deviceId`.<br />Deactivation causes a device to lose all device user links. Set the device status to `DEACTIVATED` before deleting it.<br />&gt; **Note:** When deactivating a Device, keep in mind the following:<br />  - Device deactivation is a destructive operation for device factors and client certificates. Device reenrollment using Okta Verify allows end users to set up new factors on the device.<br />  - Device deletion removes the device record from Okta. Reenrollment creates a new device record.</td>
</tr>
<tr>
    <td><a href="#suspend_device"><CopyableCode code="suspend_device" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deviceId"><code>deviceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Suspends a device by setting its status to `SUSPENDED`.<br />Use suspended devices to create and delete device user links. You can only unsuspend or deactivate suspended devices.<br />&gt; **Note:** `SUSPENDED` status is meant to be temporary, so it isn't destructive.</td>
</tr>
<tr>
    <td><a href="#unsuspend_device"><CopyableCode code="unsuspend_device" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deviceId"><code>deviceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unsuspends a device by returning its `status` to `ACTIVE`.<br />&gt;**Note:** Only devices with a `SUSPENDED` status can be unsuspended.</td>
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
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>Includes associated user details and management status for the device in the `_embedded` attribute</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer</code></td>
    <td>A limit on the number of objects to return (recommend `20`)</td>
</tr>
<tr id="parameter-search">
    <td><CopyableCode code="search" /></td>
    <td><code>string</code></td>
    <td>A SCIM filter expression that filters the results. Searches include all device `profile` properties and the device `id`, `status`, and `lastUpdated` properties.  Searches for devices can be filtered by the contains (`co`) operator. You can only use `co` with these select device profile attributes: `profile.displayName`, `profile.serialNumber`, `profile.imei`, `profile.meid`, `profile.udid`, and `profile.sid`. See [Operators](https://developer.okta.com/docs/api/#operators).</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_device"
    values={[
        { label: 'get_device', value: 'get_device' },
        { label: 'list_devices', value: 'list_devices' }
    ]}
>
<TabItem value="get_device">

Retrieves a device by `deviceId`

```sql
SELECT
id,
_links,
created,
lastUpdated,
profile,
providers,
resourceAlternateId,
resourceDisplayName,
resourceId,
resourceType,
status
FROM okta.devices.devices
WHERE deviceId = '{{ deviceId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_devices">

Lists all devices with pagination support.<br /><br />&gt;**Note:** To list all devices enrolled by a user, use the [List all devices endpoint in the User Resources API](https://developer.okta.com/docs/api/openapi/okta-management/management/userresources/listuserdevices).<br /><br />You can return a subset of devices that match a supported search criteria using the `search` query parameter.<br />Searches for devices based on the properties specified in the `search` parameter conforming SCIM filter specifications (case-insensitive). This data is eventually consistent. The API returns different results depending on specified queries in the request. Empty list is returned if no objects match `search` request.<br /><br />&gt; **Note:** The `search` parameter results are sourced from an eventually consistent datasource and may not reflect the latest information.<br /><br />Don't use search results directly for record updates, as the data might be stale and therefore overwrite newer data, resulting in data loss.<br /><br />Use an `id` lookup for records that you update to ensure your results contain the latest data.<br /><br />This operation requires [URL encoding](https://www.w3.org/TR/html4/interact/forms.html#h-17.13.4.1). For example, `search=profile.displayName eq "Bob"` is encoded as `search=profile.displayName%20eq%20%22Bob%22`.

```sql
SELECT
id,
_embedded,
_links,
created,
lastUpdated,
profile,
resourceAlternateId,
resourceDisplayName,
resourceId,
resourceType,
status
FROM okta.devices.devices
WHERE subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
AND search = '{{ search }}'
AND expand = '{{ expand }}'
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_device"
    values={[
        { label: 'delete_device', value: 'delete_device' }
    ]}
>
<TabItem value="delete_device">

Deletes (permanently) a device by `deviceId` if it has a status of `DEACTIVATED`. You can transition the device to `DEACTIVATED` status using the [Deactivate a Device](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/device/other/deactivatedevice) endpoint.<br />This request is destructive and deletes all of the profile data related to the device. Once deleted, device data can't be recovered. However, reenrollment creates a new device record.<br />&gt; **Note:** Attempts to delete a device that isn't in a `DEACTIVATED` state raise an error.

```sql
DELETE FROM okta.devices.devices
WHERE deviceId = '{{ deviceId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_device"
    values={[
        { label: 'activate_device', value: 'activate_device' },
        { label: 'deactivate_device', value: 'deactivate_device' },
        { label: 'suspend_device', value: 'suspend_device' },
        { label: 'unsuspend_device', value: 'unsuspend_device' }
    ]}
>
<TabItem value="activate_device">

Activates a device by setting its status to `ACTIVE` by `deviceId`.<br />Activated devices are used to create and delete device user links.

```sql
EXEC okta.devices.devices.activate_device 
@deviceId='{{ deviceId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_device">

Deactivates a device by setting its status to `DEACTIVATED` by `deviceId`.<br />Deactivation causes a device to lose all device user links. Set the device status to `DEACTIVATED` before deleting it.<br />&gt; **Note:** When deactivating a Device, keep in mind the following:<br />  - Device deactivation is a destructive operation for device factors and client certificates. Device reenrollment using Okta Verify allows end users to set up new factors on the device.<br />  - Device deletion removes the device record from Okta. Reenrollment creates a new device record.

```sql
EXEC okta.devices.devices.deactivate_device 
@deviceId='{{ deviceId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="suspend_device">

Suspends a device by setting its status to `SUSPENDED`.<br />Use suspended devices to create and delete device user links. You can only unsuspend or deactivate suspended devices.<br />&gt; **Note:** `SUSPENDED` status is meant to be temporary, so it isn't destructive.

```sql
EXEC okta.devices.devices.suspend_device 
@deviceId='{{ deviceId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="unsuspend_device">

Unsuspends a device by returning its `status` to `ACTIVE`.<br />&gt;**Note:** Only devices with a `SUSPENDED` status can be unsuspended.

```sql
EXEC okta.devices.devices.unsuspend_device 
@deviceId='{{ deviceId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
