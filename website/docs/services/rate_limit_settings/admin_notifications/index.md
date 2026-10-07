--- 
title: admin_notifications
hide_title: false
hide_table_of_contents: false
keywords:
  - admin_notifications
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

Creates, updates, deletes, gets or lists an <code>admin_notifications</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="admin_notifications" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.rate_limit_settings.admin_notifications" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_rate_limit_settings_admin_notifications"
    values={[
        { label: 'get_rate_limit_settings_admin_notifications', value: 'get_rate_limit_settings_admin_notifications' }
    ]}
>
<TabItem value="get_rate_limit_settings_admin_notifications">

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
    <td><CopyableCode code="notificationsEnabled" /></td>
    <td><code>boolean</code></td>
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
    <td><a href="#get_rate_limit_settings_admin_notifications"><CopyableCode code="get_rate_limit_settings_admin_notifications" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the currently configured Rate Limit Admin Notification Settings</td>
</tr>
<tr>
    <td><a href="#replace_rate_limit_settings_admin_notifications"><CopyableCode code="replace_rate_limit_settings_admin_notifications" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-notificationsEnabled"><code>notificationsEnabled</code></a></td>
    <td></td>
    <td>Replaces the Rate Limit Admin Notification Settings and returns the configured properties</td>
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
    defaultValue="get_rate_limit_settings_admin_notifications"
    values={[
        { label: 'get_rate_limit_settings_admin_notifications', value: 'get_rate_limit_settings_admin_notifications' }
    ]}
>
<TabItem value="get_rate_limit_settings_admin_notifications">

Retrieves the currently configured Rate Limit Admin Notification Settings

```sql
SELECT
notificationsEnabled
FROM okta.rate_limit_settings.admin_notifications
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_rate_limit_settings_admin_notifications"
    values={[
        { label: 'replace_rate_limit_settings_admin_notifications', value: 'replace_rate_limit_settings_admin_notifications' }
    ]}
>
<TabItem value="replace_rate_limit_settings_admin_notifications">

Replaces the Rate Limit Admin Notification Settings and returns the configured properties

```sql
REPLACE okta.rate_limit_settings.admin_notifications
SET 
notificationsEnabled = {{ notificationsEnabled }}
WHERE 
subdomain = '{{ subdomain }}' --required
AND notificationsEnabled = {{ notificationsEnabled }} --required
RETURNING
notificationsEnabled;
```
</TabItem>
</Tabs>
