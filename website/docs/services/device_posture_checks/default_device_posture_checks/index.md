--- 
title: default_device_posture_checks
hide_title: false
hide_table_of_contents: false
keywords:
  - default_device_posture_checks
  - device_posture_checks
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

Creates, updates, deletes, gets or lists a <code>default_device_posture_checks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="default_device_posture_checks" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.device_posture_checks.default_device_posture_checks" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_default_device_posture_checks"
    values={[
        { label: 'list_default_device_posture_checks', value: 'list_default_device_posture_checks' }
    ]}
>
<TabItem value="list_default_device_posture_checks">

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
    <td>The ID of the device posture check (example: dch3m8o4rWhwReDeM1c5)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Display name of the device posture check (example: Device posture check macOS)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>User who created the device posture check (example: 00u217pyf72CdUrBt1c5)</td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string</code></td>
    <td>Time the device posture check was created (example: 2019-10-02T18:03:07.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the device posture check (example: Query macOS devices to check if firewall is enabled)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdate" /></td>
    <td><code>string</code></td>
    <td>Time the device posture check was updated (example: 2019-10-02T18:03:07.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdatedBy" /></td>
    <td><code>string</code></td>
    <td>User who updated the device posture check (example: 00u217pyf72CdUrBt1c5)</td>
</tr>
<tr>
    <td><CopyableCode code="mappingType" /></td>
    <td><code>string</code></td>
    <td>Represents how the device posture check is rendered in device assurance policies (CHECKBOX, TEXTBOX)</td>
</tr>
<tr>
    <td><CopyableCode code="platform" /></td>
    <td><code>string</code></td>
    <td> (MACOS, WINDOWS)</td>
</tr>
<tr>
    <td><CopyableCode code="query" /></td>
    <td><code>string</code></td>
    <td>OSQuery for the device posture check (example: SELECT CASE WHEN global_state = 0 THEN 0 ELSE 1 END AS firewall_enabled FROM  alf;)</td>
</tr>
<tr>
    <td><CopyableCode code="remediationSettings" /></td>
    <td><code>object</code></td>
    <td>Represents the remediation instructions shown to the end user when the device posture check fails</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td> (BUILTIN, CUSTOM)</td>
</tr>
<tr>
    <td><CopyableCode code="variableName" /></td>
    <td><code>string</code></td>
    <td>Unique name of the device posture check (example: macOSFirewall)</td>
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
    <td><a href="#list_default_device_posture_checks"><CopyableCode code="list_default_device_posture_checks" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all default device posture checks. Default device posture checks are defined by Okta. Their type will always be `BUILTIN`.</td>
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
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_default_device_posture_checks"
    values={[
        { label: 'list_default_device_posture_checks', value: 'list_default_device_posture_checks' }
    ]}
>
<TabItem value="list_default_device_posture_checks">

Lists all default device posture checks. Default device posture checks are defined by Okta. Their type will always be `BUILTIN`.

```sql
SELECT
id,
name,
_links,
createdBy,
createdDate,
description,
lastUpdate,
lastUpdatedBy,
mappingType,
platform,
query,
remediationSettings,
type,
variableName
FROM okta.device_posture_checks.default_device_posture_checks
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
