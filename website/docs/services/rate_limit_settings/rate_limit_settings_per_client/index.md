--- 
title: rate_limit_settings_per_client
hide_title: false
hide_table_of_contents: false
keywords:
  - rate_limit_settings_per_client
  - rate_limit_settings
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

Creates, updates, deletes, gets or lists a <code>rate_limit_settings_per_client</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="rate_limit_settings_per_client" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.rate_limit_settings.rate_limit_settings_per_client" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_rate_limit_settings_per_client"
    values={[
        { label: 'get_rate_limit_settings_per_client', value: 'get_rate_limit_settings_per_client' }
    ]}
>
<TabItem value="get_rate_limit_settings_per_client">

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
    <td><CopyableCode code="defaultMode" /></td>
    <td><code>string</code></td>
    <td>The default PerClientRateLimitMode that applies to any use case in the absence of a more specific override (DISABLE, ENFORCE, PREVIEW)</td>
</tr>
<tr>
    <td><CopyableCode code="useCaseModeOverrides" /></td>
    <td><code>object</code></td>
    <td>A map of Per-Client Rate Limit Use Case to the applicable PerClientRateLimitMode. Overrides the `defaultMode` property for the specified use cases.</td>
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
    <td><a href="#get_rate_limit_settings_per_client"><CopyableCode code="get_rate_limit_settings_per_client" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the currently configured Per-Client Rate Limit Settings</td>
</tr>
<tr>
    <td><a href="#replace_rate_limit_settings_per_client"><CopyableCode code="replace_rate_limit_settings_per_client" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-defaultMode"><code>defaultMode</code></a></td>
    <td></td>
    <td>Replaces the Per-Client Rate Limit Settings and returns the configured properties</td>
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
    defaultValue="get_rate_limit_settings_per_client"
    values={[
        { label: 'get_rate_limit_settings_per_client', value: 'get_rate_limit_settings_per_client' }
    ]}
>
<TabItem value="get_rate_limit_settings_per_client">

Retrieves the currently configured Per-Client Rate Limit Settings

```sql
SELECT
defaultMode,
useCaseModeOverrides
FROM okta.rate_limit_settings.rate_limit_settings_per_client
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_rate_limit_settings_per_client"
    values={[
        { label: 'replace_rate_limit_settings_per_client', value: 'replace_rate_limit_settings_per_client' }
    ]}
>
<TabItem value="replace_rate_limit_settings_per_client">

Replaces the Per-Client Rate Limit Settings and returns the configured properties

```sql
REPLACE okta.rate_limit_settings.rate_limit_settings_per_client
SET 
defaultMode = '{{ defaultMode }}',
useCaseModeOverrides = '{{ useCaseModeOverrides }}'
WHERE 
subdomain = '{{ subdomain }}' --required
AND defaultMode = '{{ defaultMode }}' --required
RETURNING
defaultMode,
useCaseModeOverrides;
```
</TabItem>
</Tabs>
