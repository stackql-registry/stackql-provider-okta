--- 
title: client_privileges_setting
hide_title: false
hide_table_of_contents: false
keywords:
  - client_privileges_setting
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

Creates, updates, deletes, gets or lists a <code>client_privileges_setting</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="client_privileges_setting" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.org.client_privileges_setting" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_client_privileges_setting"
    values={[
        { label: 'get_client_privileges_setting', value: 'get_client_privileges_setting' }
    ]}
>
<TabItem value="get_client_privileges_setting">

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
    <td><CopyableCode code="clientPrivilegesSetting" /></td>
    <td><code>boolean</code></td>
    <td>If true, assigns the super admin role by default to new public client apps</td>
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
    <td><a href="#get_client_privileges_setting"><CopyableCode code="get_client_privileges_setting" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the org setting to assign the [Super Admin role](https://help.okta.com/okta_help.htm?type=oie&id=ext_superadmin) to new public client apps</td>
</tr>
<tr>
    <td><a href="#assign_client_privileges_setting"><CopyableCode code="assign_client_privileges_setting" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Assigns the [Super Admin role](https://help.okta.com/okta_help.htm?type=oie&id=ext_superadmin) as the default role for new public client apps</td>
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
    defaultValue="get_client_privileges_setting"
    values={[
        { label: 'get_client_privileges_setting', value: 'get_client_privileges_setting' }
    ]}
>
<TabItem value="get_client_privileges_setting">

Retrieves the org setting to assign the [Super Admin role](https://help.okta.com/okta_help.htm?type=oie&id=ext_superadmin) to new public client apps

```sql
SELECT
clientPrivilegesSetting
FROM okta.org.client_privileges_setting
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="assign_client_privileges_setting"
    values={[
        { label: 'assign_client_privileges_setting', value: 'assign_client_privileges_setting' }
    ]}
>
<TabItem value="assign_client_privileges_setting">

Assigns the [Super Admin role](https://help.okta.com/okta_help.htm?type=oie&id=ext_superadmin) as the default role for new public client apps

```sql
REPLACE okta.org.client_privileges_setting
SET 
clientPrivilegesSetting = {{ clientPrivilegesSetting }}
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
clientPrivilegesSetting;
```
</TabItem>
</Tabs>
