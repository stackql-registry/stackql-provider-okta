--- 
title: communication_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - communication_settings
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

Creates, updates, deletes, gets or lists a <code>communication_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="communication_settings" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.org.communication_settings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_okta_communication_settings"
    values={[
        { label: 'get_okta_communication_settings', value: 'get_okta_communication_settings' }
    ]}
>
<TabItem value="get_okta_communication_settings">

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
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for this object using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification</td>
</tr>
<tr>
    <td><CopyableCode code="optOutEmailUsers" /></td>
    <td><code>boolean</code></td>
    <td>Indicates whether org users receive Okta communication emails</td>
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
    <td><a href="#get_okta_communication_settings"><CopyableCode code="get_okta_communication_settings" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves Okta Communication Settings of your org</td>
</tr>
<tr>
    <td><a href="#opt_in_users_to_okta_communication_emails"><CopyableCode code="opt_in_users_to_okta_communication_emails" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Opts in all users of this org to Okta communication emails</td>
</tr>
<tr>
    <td><a href="#opt_out_users_from_okta_communication_emails"><CopyableCode code="opt_out_users_from_okta_communication_emails" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Opts out all users of this org from Okta communication emails</td>
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
    defaultValue="get_okta_communication_settings"
    values={[
        { label: 'get_okta_communication_settings', value: 'get_okta_communication_settings' }
    ]}
>
<TabItem value="get_okta_communication_settings">

Retrieves Okta Communication Settings of your org

```sql
SELECT
_links,
optOutEmailUsers
FROM okta.org.communication_settings
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="opt_in_users_to_okta_communication_emails"
    values={[
        { label: 'opt_in_users_to_okta_communication_emails', value: 'opt_in_users_to_okta_communication_emails' },
        { label: 'opt_out_users_from_okta_communication_emails', value: 'opt_out_users_from_okta_communication_emails' }
    ]}
>
<TabItem value="opt_in_users_to_okta_communication_emails">

Opts in all users of this org to Okta communication emails

```sql
EXEC okta.org.communication_settings.opt_in_users_to_okta_communication_emails 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="opt_out_users_from_okta_communication_emails">

Opts out all users of this org from Okta communication emails

```sql
EXEC okta.org.communication_settings.opt_out_users_from_okta_communication_emails 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
