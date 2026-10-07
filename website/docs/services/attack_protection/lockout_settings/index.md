--- 
title: lockout_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - lockout_settings
  - attack_protection
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

Creates, updates, deletes, gets or lists a <code>lockout_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="lockout_settings" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.attack_protection.lockout_settings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_user_lockout_settings"
    values={[
        { label: 'get_user_lockout_settings', value: 'get_user_lockout_settings' }
    ]}
>
<TabItem value="get_user_lockout_settings">

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
    <td><CopyableCode code="preventBruteForceLockoutFromUnknownDevices" /></td>
    <td><code>boolean</code></td>
    <td>Prevents brute-force lockout from unknown devices for the password authenticator.</td>
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
    <td><a href="#get_user_lockout_settings"><CopyableCode code="get_user_lockout_settings" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the User Lockout Settings for an org</td>
</tr>
<tr>
    <td><a href="#replace_user_lockout_settings"><CopyableCode code="replace_user_lockout_settings" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the User Lockout Settings for an org</td>
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
    defaultValue="get_user_lockout_settings"
    values={[
        { label: 'get_user_lockout_settings', value: 'get_user_lockout_settings' }
    ]}
>
<TabItem value="get_user_lockout_settings">

Retrieves the User Lockout Settings for an org

```sql
SELECT
preventBruteForceLockoutFromUnknownDevices
FROM okta.attack_protection.lockout_settings
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_user_lockout_settings"
    values={[
        { label: 'replace_user_lockout_settings', value: 'replace_user_lockout_settings' }
    ]}
>
<TabItem value="replace_user_lockout_settings">

Replaces the User Lockout Settings for an org

```sql
REPLACE okta.attack_protection.lockout_settings
SET 
preventBruteForceLockoutFromUnknownDevices = {{ preventBruteForceLockoutFromUnknownDevices }}
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
preventBruteForceLockoutFromUnknownDevices;
```
</TabItem>
</Tabs>
