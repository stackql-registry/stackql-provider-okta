--- 
title: first_party_app_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - first_party_app_settings
  - first_party_app_settings
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

Creates, updates, deletes, gets or lists a <code>first_party_app_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="first_party_app_settings" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.first_party_app_settings.first_party_app_settings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_first_party_app_settings"
    values={[
        { label: 'get_first_party_app_settings', value: 'get_first_party_app_settings' }
    ]}
>
<TabItem value="get_first_party_app_settings">

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
    <td><CopyableCode code="sessionIdleTimeoutMinutes" /></td>
    <td><code>integer</code></td>
    <td>The maximum idle time before the Okta Admin Console session expires. Must be no more than 12 hours.</td>
</tr>
<tr>
    <td><CopyableCode code="sessionMaxLifetimeMinutes" /></td>
    <td><code>integer</code></td>
    <td>The absolute maximum session lifetime of the Okta Admin Console. Must be no more than 7 days.</td>
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
    <td><a href="#get_first_party_app_settings"><CopyableCode code="get_first_party_app_settings" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the settings for an Okta app (also known as an Okta first-party app)</td>
</tr>
<tr>
    <td><a href="#replace_first_party_app_settings"><CopyableCode code="replace_first_party_app_settings" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the settings for an Okta app (also known as an Okta first-party app)</td>
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
<tr id="parameter-appName">
    <td><CopyableCode code="appName" /></td>
    <td><code>string</code></td>
    <td>The key name for the Okta app.<br /> Supported apps:   * Okta Admin Console (`admin-console`) </td>
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
    defaultValue="get_first_party_app_settings"
    values={[
        { label: 'get_first_party_app_settings', value: 'get_first_party_app_settings' }
    ]}
>
<TabItem value="get_first_party_app_settings">

Retrieves the settings for an Okta app (also known as an Okta first-party app)

```sql
SELECT
sessionIdleTimeoutMinutes,
sessionMaxLifetimeMinutes
FROM okta.first_party_app_settings.first_party_app_settings
WHERE appName = '{{ appName }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_first_party_app_settings"
    values={[
        { label: 'replace_first_party_app_settings', value: 'replace_first_party_app_settings' }
    ]}
>
<TabItem value="replace_first_party_app_settings">

Replaces the settings for an Okta app (also known as an Okta first-party app)

```sql
REPLACE okta.first_party_app_settings.first_party_app_settings
SET 
sessionIdleTimeoutMinutes = {{ sessionIdleTimeoutMinutes }},
sessionMaxLifetimeMinutes = {{ sessionMaxLifetimeMinutes }}
WHERE 
appName = '{{ appName }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
sessionIdleTimeoutMinutes,
sessionMaxLifetimeMinutes;
```
</TabItem>
</Tabs>
