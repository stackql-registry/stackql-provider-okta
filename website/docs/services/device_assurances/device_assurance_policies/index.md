--- 
title: device_assurance_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - device_assurance_policies
  - device_assurances
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

Creates, updates, deletes, gets or lists a <code>device_assurance_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="device_assurance_policies" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.device_assurances.device_assurance_policies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_device_assurance_policy"
    values={[
        { label: 'get_device_assurance_policy', value: 'get_device_assurance_policy' },
        { label: 'list_device_assurance_policies', value: 'list_device_assurance_policies' }
    ]}
>
<TabItem value="get_device_assurance_policy">

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
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Display name of the device assurance policy</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="displayRemediationMode" /></td>
    <td><code>string</code></td>
    <td>Represents the remediation mode of this device assurance policy when users are denied access due to device noncompliance (HIDE, SHOW) (example: SHOW)</td>
</tr>
<tr>
    <td><CopyableCode code="gracePeriod" /></td>
    <td><code>object</code></td>
    <td>Represents the Grace Period configuration for the device assurance policy</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdate" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdatedBy" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="platform" /></td>
    <td><code>string</code></td>
    <td> (ANDROID, CHROMEOS, IOS, MACOS, WINDOWS)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_device_assurance_policies">

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
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Display name of the device assurance policy</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="displayRemediationMode" /></td>
    <td><code>string</code></td>
    <td>Represents the remediation mode of this device assurance policy when users are denied access due to device noncompliance (HIDE, SHOW) (example: SHOW)</td>
</tr>
<tr>
    <td><CopyableCode code="gracePeriod" /></td>
    <td><code>object</code></td>
    <td>Represents the Grace Period configuration for the device assurance policy</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdate" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdatedBy" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="platform" /></td>
    <td><code>string</code></td>
    <td> (ANDROID, CHROMEOS, IOS, MACOS, WINDOWS)</td>
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
    <td><a href="#get_device_assurance_policy"><CopyableCode code="get_device_assurance_policy" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-deviceAssuranceId"><code>deviceAssuranceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a device assurance policy by `deviceAssuranceId`</td>
</tr>
<tr>
    <td><a href="#list_device_assurance_policies"><CopyableCode code="list_device_assurance_policies" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all device assurance policies</td>
</tr>
<tr>
    <td><a href="#create_device_assurance_policy"><CopyableCode code="create_device_assurance_policy" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a new device assurance policy</td>
</tr>
<tr>
    <td><a href="#replace_device_assurance_policy"><CopyableCode code="replace_device_assurance_policy" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-deviceAssuranceId"><code>deviceAssuranceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a device assurance policy by `deviceAssuranceId`</td>
</tr>
<tr>
    <td><a href="#delete_device_assurance_policy"><CopyableCode code="delete_device_assurance_policy" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-deviceAssuranceId"><code>deviceAssuranceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a device assurance policy by `deviceAssuranceId`. If the device assurance policy is currently being used in the org Authentication Policies, the delete will not be allowed.</td>
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
<tr id="parameter-deviceAssuranceId">
    <td><CopyableCode code="deviceAssuranceId" /></td>
    <td><code>string</code></td>
    <td>Id of the device assurance policy</td>
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
    defaultValue="get_device_assurance_policy"
    values={[
        { label: 'get_device_assurance_policy', value: 'get_device_assurance_policy' },
        { label: 'list_device_assurance_policies', value: 'list_device_assurance_policies' }
    ]}
>
<TabItem value="get_device_assurance_policy">

Retrieves a device assurance policy by `deviceAssuranceId`

```sql
SELECT
id,
name,
_links,
createdBy,
createdDate,
displayRemediationMode,
gracePeriod,
lastUpdate,
lastUpdatedBy,
platform
FROM okta.device_assurances.device_assurance_policies
WHERE deviceAssuranceId = '{{ deviceAssuranceId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_device_assurance_policies">

Lists all device assurance policies

```sql
SELECT
id,
name,
_links,
createdBy,
createdDate,
displayRemediationMode,
gracePeriod,
lastUpdate,
lastUpdatedBy,
platform
FROM okta.device_assurances.device_assurance_policies
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_device_assurance_policy"
    values={[
        { label: 'create_device_assurance_policy', value: 'create_device_assurance_policy' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_device_assurance_policy">

Creates a new device assurance policy

```sql
INSERT INTO okta.device_assurances.device_assurance_policies (
displayRemediationMode,
gracePeriod,
name,
platform,
subdomain
)
SELECT 
'{{ displayRemediationMode }}',
'{{ gracePeriod }}',
'{{ name }}',
'{{ platform }}',
'{{ subdomain }}'
RETURNING
id,
name,
_links,
createdBy,
createdDate,
displayRemediationMode,
gracePeriod,
lastUpdate,
lastUpdatedBy,
platform
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: device_assurance_policies
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the device_assurance_policies resource.
    - name: displayRemediationMode
      value: "{{ displayRemediationMode }}"
      description: |
        Represents the remediation mode of this device assurance policy when users are denied access due to device noncompliance
      valid_values: ['HIDE', 'SHOW']
    - name: gracePeriod
      description: |
        Represents the Grace Period configuration for the device assurance policy
      value:
        expiry: "{{ expiry }}"
        type: "{{ type }}"
    - name: name
      value: "{{ name }}"
      description: |
        Display name of the device assurance policy
    - name: platform
      value: "{{ platform }}"
      valid_values: ['ANDROID', 'CHROMEOS', 'IOS', 'MACOS', 'WINDOWS']
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_device_assurance_policy"
    values={[
        { label: 'replace_device_assurance_policy', value: 'replace_device_assurance_policy' }
    ]}
>
<TabItem value="replace_device_assurance_policy">

Replaces a device assurance policy by `deviceAssuranceId`

```sql
REPLACE okta.device_assurances.device_assurance_policies
SET 
displayRemediationMode = '{{ displayRemediationMode }}',
gracePeriod = '{{ gracePeriod }}',
name = '{{ name }}',
platform = '{{ platform }}'
WHERE 
deviceAssuranceId = '{{ deviceAssuranceId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
createdBy,
createdDate,
displayRemediationMode,
gracePeriod,
lastUpdate,
lastUpdatedBy,
platform;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_device_assurance_policy"
    values={[
        { label: 'delete_device_assurance_policy', value: 'delete_device_assurance_policy' }
    ]}
>
<TabItem value="delete_device_assurance_policy">

Deletes a device assurance policy by `deviceAssuranceId`. If the device assurance policy is currently being used in the org Authentication Policies, the delete will not be allowed.

```sql
DELETE FROM okta.device_assurances.device_assurance_policies
WHERE deviceAssuranceId = '{{ deviceAssuranceId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
