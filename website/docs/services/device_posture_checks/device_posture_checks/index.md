--- 
title: device_posture_checks
hide_title: false
hide_table_of_contents: false
keywords:
  - device_posture_checks
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

Creates, updates, deletes, gets or lists a <code>device_posture_checks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="device_posture_checks" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.device_posture_checks.device_posture_checks" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_device_posture_check"
    values={[
        { label: 'get_device_posture_check', value: 'get_device_posture_check' },
        { label: 'list_device_posture_checks', value: 'list_device_posture_checks' }
    ]}
>
<TabItem value="get_device_posture_check">

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
<TabItem value="list_device_posture_checks">

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
    <td><a href="#get_device_posture_check"><CopyableCode code="get_device_posture_check" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-postureCheckId"><code>postureCheckId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a device posture check by `postureCheckId`</td>
</tr>
<tr>
    <td><a href="#list_device_posture_checks"><CopyableCode code="list_device_posture_checks" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all device posture checks</td>
</tr>
<tr>
    <td><a href="#create_device_posture_check"><CopyableCode code="create_device_posture_check" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a device posture check</td>
</tr>
<tr>
    <td><a href="#replace_device_posture_check"><CopyableCode code="replace_device_posture_check" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-postureCheckId"><code>postureCheckId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a device posture check by `postureCheckId`</td>
</tr>
<tr>
    <td><a href="#delete_device_posture_check"><CopyableCode code="delete_device_posture_check" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-postureCheckId"><code>postureCheckId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a device posture check by `postureCheckId`. You can't delete the device posture check if it's used in a device assurance policy.</td>
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
<tr id="parameter-postureCheckId">
    <td><CopyableCode code="postureCheckId" /></td>
    <td><code>string</code></td>
    <td>ID of the device posture check</td>
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
    defaultValue="get_device_posture_check"
    values={[
        { label: 'get_device_posture_check', value: 'get_device_posture_check' },
        { label: 'list_device_posture_checks', value: 'list_device_posture_checks' }
    ]}
>
<TabItem value="get_device_posture_check">

Retrieves a device posture check by `postureCheckId`

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
FROM okta.device_posture_checks.device_posture_checks
WHERE postureCheckId = '{{ postureCheckId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_device_posture_checks">

Lists all device posture checks

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
FROM okta.device_posture_checks.device_posture_checks
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_device_posture_check"
    values={[
        { label: 'create_device_posture_check', value: 'create_device_posture_check' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_device_posture_check">

Creates a device posture check

```sql
INSERT INTO okta.device_posture_checks.device_posture_checks (
description,
mappingType,
name,
platform,
query,
remediationSettings,
type,
variableName,
subdomain
)
SELECT 
'{{ description }}',
'{{ mappingType }}',
'{{ name }}',
'{{ platform }}',
'{{ query }}',
'{{ remediationSettings }}',
'{{ type }}',
'{{ variableName }}',
'{{ subdomain }}'
RETURNING
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
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: device_posture_checks
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the device_posture_checks resource.
    - name: description
      value: "{{ description }}"
      description: |
        Description of the device posture check
    - name: mappingType
      value: "{{ mappingType }}"
      description: |
        Represents how the device posture check is rendered in device assurance policies
      valid_values: ['CHECKBOX', 'TEXTBOX']
    - name: name
      value: "{{ name }}"
      description: |
        Display name of the device posture check
    - name: platform
      value: "{{ platform }}"
      valid_values: ['MACOS', 'WINDOWS']
    - name: query
      value: "{{ query }}"
      description: |
        OSQuery for the device posture check
    - name: remediationSettings
      description: |
        Represents the remediation instructions shown to the end user when the device posture check fails
      value:
        link:
          defaultUrl: "{{ defaultUrl }}"
          customUrl: "{{ customUrl }}"
        message:
          defaultI18nKey: "{{ defaultI18nKey }}"
          customText: "{{ customText }}"
    - name: type
      value: "{{ type }}"
      valid_values: ['BUILTIN', 'CUSTOM']
    - name: variableName
      value: "{{ variableName }}"
      description: |
        Unique name of the device posture check
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_device_posture_check"
    values={[
        { label: 'replace_device_posture_check', value: 'replace_device_posture_check' }
    ]}
>
<TabItem value="replace_device_posture_check">

Replaces a device posture check by `postureCheckId`

```sql
REPLACE okta.device_posture_checks.device_posture_checks
SET 
description = '{{ description }}',
mappingType = '{{ mappingType }}',
name = '{{ name }}',
platform = '{{ platform }}',
query = '{{ query }}',
remediationSettings = '{{ remediationSettings }}',
type = '{{ type }}',
variableName = '{{ variableName }}'
WHERE 
postureCheckId = '{{ postureCheckId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
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
variableName;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_device_posture_check"
    values={[
        { label: 'delete_device_posture_check', value: 'delete_device_posture_check' }
    ]}
>
<TabItem value="delete_device_posture_check">

Deletes a device posture check by `postureCheckId`. You can't delete the device posture check if it's used in a device assurance policy.

```sql
DELETE FROM okta.device_posture_checks.device_posture_checks
WHERE postureCheckId = '{{ postureCheckId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
