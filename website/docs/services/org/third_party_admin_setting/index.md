--- 
title: third_party_admin_setting
hide_title: false
hide_table_of_contents: false
keywords:
  - third_party_admin_setting
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

Creates, updates, deletes, gets or lists a <code>third_party_admin_setting</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="third_party_admin_setting" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.org.third_party_admin_setting" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_third_party_admin_setting"
    values={[
        { label: 'get_third_party_admin_setting', value: 'get_third_party_admin_setting' }
    ]}
>
<TabItem value="get_third_party_admin_setting">

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
    <td><CopyableCode code="thirdPartyAdmin" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the third-party admin functionality is enabled</td>
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
    <td><a href="#get_third_party_admin_setting"><CopyableCode code="get_third_party_admin_setting" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the third-party admin setting. See [Configure third-party administrators](https://help.okta.com/okta_help.htm?type=oie&id=csh_admin-third) in the Okta product documentation.</td>
</tr>
<tr>
    <td><a href="#update_third_party_admin_setting"><CopyableCode code="update_third_party_admin_setting" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates the third-party admin setting.<br />This setting allows third-party admins to perform administrative actions in the Admin Console, but they can't do any of the following:<br />  * Receive Okta admin email notifications<br />  * Contact Okta support<br />  * Sign in to the Okta Help Center<br /><br />See [Configure third-party administrators](https://help.okta.com/okta_help.htm?type=oie&id=csh_admin-third) in the Okta product documentation.<br /></td>
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
    defaultValue="get_third_party_admin_setting"
    values={[
        { label: 'get_third_party_admin_setting', value: 'get_third_party_admin_setting' }
    ]}
>
<TabItem value="get_third_party_admin_setting">

Retrieves the third-party admin setting. See [Configure third-party administrators](https://help.okta.com/okta_help.htm?type=oie&id=csh_admin-third) in the Okta product documentation.

```sql
SELECT
thirdPartyAdmin
FROM okta.org.third_party_admin_setting
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_third_party_admin_setting"
    values={[
        { label: 'update_third_party_admin_setting', value: 'update_third_party_admin_setting' }
    ]}
>
<TabItem value="update_third_party_admin_setting">

Updates the third-party admin setting.<br />This setting allows third-party admins to perform administrative actions in the Admin Console, but they can't do any of the following:<br />  * Receive Okta admin email notifications<br />  * Contact Okta support<br />  * Sign in to the Okta Help Center<br /><br />See [Configure third-party administrators](https://help.okta.com/okta_help.htm?type=oie&id=csh_admin-third) in the Okta product documentation.<br />

```sql
UPDATE okta.org.third_party_admin_setting
SET 
thirdPartyAdmin = {{ thirdPartyAdmin }}
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
thirdPartyAdmin;
```
</TabItem>
</Tabs>
