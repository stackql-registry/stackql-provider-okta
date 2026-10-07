--- 
title: auto_assign_admin_app_setting
hide_title: false
hide_table_of_contents: false
keywords:
  - auto_assign_admin_app_setting
  - org
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

Creates, updates, deletes, gets or lists an <code>auto_assign_admin_app_setting</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="auto_assign_admin_app_setting" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.org.auto_assign_admin_app_setting" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_auto_assign_admin_app_setting"
    values={[
        { label: 'get_auto_assign_admin_app_setting', value: 'get_auto_assign_admin_app_setting' }
    ]}
>
<TabItem value="get_auto_assign_admin_app_setting">

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
    <td><CopyableCode code="autoAssignAdminAppSetting" /></td>
    <td><code>boolean</code></td>
    <td>Automatically assigns the Okta Admin Console to the user when an admin role is assigned</td>
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
    <td><a href="#get_auto_assign_admin_app_setting"><CopyableCode code="get_auto_assign_admin_app_setting" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the org setting to automatically assign the Okta Admin Console when an admin role is assigned</td>
</tr>
<tr>
    <td><a href="#update_auto_assign_admin_app_setting"><CopyableCode code="update_auto_assign_admin_app_setting" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates the org setting to automatically assign the Okta Admin Console when an admin role is assigned<br /><br />&gt; **Note:** This setting doesn't apply to the `SUPER_ADMIN` role.<br />&gt; When you assign the `SUPER_ADMIN` role to a user, the Admin Console is always assigned to the user regardless of the `autoAssignAdminAppSetting` setting.</td>
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
    defaultValue="get_auto_assign_admin_app_setting"
    values={[
        { label: 'get_auto_assign_admin_app_setting', value: 'get_auto_assign_admin_app_setting' }
    ]}
>
<TabItem value="get_auto_assign_admin_app_setting">

Retrieves the org setting to automatically assign the Okta Admin Console when an admin role is assigned

```sql
SELECT
autoAssignAdminAppSetting
FROM okta.org.auto_assign_admin_app_setting
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_auto_assign_admin_app_setting"
    values={[
        { label: 'update_auto_assign_admin_app_setting', value: 'update_auto_assign_admin_app_setting' }
    ]}
>
<TabItem value="update_auto_assign_admin_app_setting">

Updates the org setting to automatically assign the Okta Admin Console when an admin role is assigned<br /><br />&gt; **Note:** This setting doesn't apply to the `SUPER_ADMIN` role.<br />&gt; When you assign the `SUPER_ADMIN` role to a user, the Admin Console is always assigned to the user regardless of the `autoAssignAdminAppSetting` setting.

```sql
UPDATE okta.org.auto_assign_admin_app_setting
SET 
autoAssignAdminAppSetting = {{ autoAssignAdminAppSetting }}
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
autoAssignAdminAppSetting;
```
</TabItem>
</Tabs>
