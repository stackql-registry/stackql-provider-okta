--- 
title: device_integrations
hide_title: false
hide_table_of_contents: false
keywords:
  - device_integrations
  - device_integrations
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

Creates, updates, deletes, gets or lists a <code>device_integrations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="device_integrations" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.device_integrations.device_integrations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_device_integration"
    values={[
        { label: 'get_device_integration', value: 'get_device_integration' },
        { label: 'list_device_integrations', value: 'list_device_integrations' }
    ]}
>
<TabItem value="get_device_integration">

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
    <td>The ID of the device integration</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The namespace of the device integration (com.android.zero.trust, com.crowdstrike.zta, com.google.dtc, com.okta.device.osquery, com.okta.deviceidp, com.okta.windowssecuritycenter, com.okta.workspaceone)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>The display name of the device integration</td>
</tr>
<tr>
    <td><CopyableCode code="metadata" /></td>
    <td><code>object</code></td>
    <td>The metadata of the device integration</td>
</tr>
<tr>
    <td><CopyableCode code="platform" /></td>
    <td><code>string</code></td>
    <td> (ANDROID, CHROMEOS, IOS, MACOS, WINDOWS)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the device integration (ACTIVE, DEACTIVATED)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_device_integrations">

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
    <td>The ID of the device integration</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The namespace of the device integration (com.android.zero.trust, com.crowdstrike.zta, com.google.dtc, com.okta.device.osquery, com.okta.deviceidp, com.okta.windowssecuritycenter, com.okta.workspaceone)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>The display name of the device integration</td>
</tr>
<tr>
    <td><CopyableCode code="metadata" /></td>
    <td><code>object</code></td>
    <td>The metadata of the device integration</td>
</tr>
<tr>
    <td><CopyableCode code="platform" /></td>
    <td><code>string</code></td>
    <td> (ANDROID, CHROMEOS, IOS, MACOS, WINDOWS)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the device integration (ACTIVE, DEACTIVATED)</td>
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
    <td><a href="#get_device_integration"><CopyableCode code="get_device_integration" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-deviceIntegrationId"><code>deviceIntegrationId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a device integration by `deviceIntegrationId`</td>
</tr>
<tr>
    <td><a href="#list_device_integrations"><CopyableCode code="list_device_integrations" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all device integrations for your org. Examples include Device Posture Provider, Windows Security Center, Chrome Device Trust, OSQuery, and Android Device Trust.</td>
</tr>
<tr>
    <td><a href="#activate_device_integration"><CopyableCode code="activate_device_integration" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deviceIntegrationId"><code>deviceIntegrationId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a device integration and populates the related configurations by `deviceIntegrationId`</td>
</tr>
<tr>
    <td><a href="#deactivate_device_integration"><CopyableCode code="deactivate_device_integration" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deviceIntegrationId"><code>deviceIntegrationId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates a device integration by `deviceIntegrationId`</td>
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
<tr id="parameter-deviceIntegrationId">
    <td><CopyableCode code="deviceIntegrationId" /></td>
    <td><code>string</code></td>
    <td>The ID of the device integration</td>
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
    defaultValue="get_device_integration"
    values={[
        { label: 'get_device_integration', value: 'get_device_integration' },
        { label: 'list_device_integrations', value: 'list_device_integrations' }
    ]}
>
<TabItem value="get_device_integration">

Retrieves a device integration by `deviceIntegrationId`

```sql
SELECT
id,
name,
_links,
displayName,
metadata,
platform,
status
FROM okta.device_integrations.device_integrations
WHERE deviceIntegrationId = '{{ deviceIntegrationId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_device_integrations">

Lists all device integrations for your org. Examples include Device Posture Provider, Windows Security Center, Chrome Device Trust, OSQuery, and Android Device Trust.

```sql
SELECT
id,
name,
_links,
displayName,
metadata,
platform,
status
FROM okta.device_integrations.device_integrations
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_device_integration"
    values={[
        { label: 'activate_device_integration', value: 'activate_device_integration' },
        { label: 'deactivate_device_integration', value: 'deactivate_device_integration' }
    ]}
>
<TabItem value="activate_device_integration">

Activates a device integration and populates the related configurations by `deviceIntegrationId`

```sql
EXEC okta.device_integrations.device_integrations.activate_device_integration 
@deviceIntegrationId='{{ deviceIntegrationId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_device_integration">

Deactivates a device integration by `deviceIntegrationId`

```sql
EXEC okta.device_integrations.device_integrations.deactivate_device_integration 
@deviceIntegrationId='{{ deviceIntegrationId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
