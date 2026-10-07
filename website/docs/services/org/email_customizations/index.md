--- 
title: email_customizations
hide_title: false
hide_table_of_contents: false
keywords:
  - email_customizations
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

Creates, updates, deletes, gets or lists an <code>email_customizations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="email_customizations" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.org.email_customizations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#bulk_remove_email_address_bounces"><CopyableCode code="bulk_remove_email_address_bounces" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Removes emails from an email service bounce list.<br /><br />The emails submitted in this operation are removed from the bounce list by an asynchronous job.<br />Any email address that passes validation is accepted for the removal process, even if there are other email addresses in the request that failed validation.<br /><br />&gt; **Note:** If there are validation errors for all email addresses, a `200 OK` HTTP status is still returned.<br /></td>
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

## Lifecycle Methods

<Tabs
    defaultValue="bulk_remove_email_address_bounces"
    values={[
        { label: 'bulk_remove_email_address_bounces', value: 'bulk_remove_email_address_bounces' }
    ]}
>
<TabItem value="bulk_remove_email_address_bounces">

Removes emails from an email service bounce list.<br /><br />The emails submitted in this operation are removed from the bounce list by an asynchronous job.<br />Any email address that passes validation is accepted for the removal process, even if there are other email addresses in the request that failed validation.<br /><br />&gt; **Note:** If there are validation errors for all email addresses, a `200 OK` HTTP status is still returned.<br />

```sql
EXEC okta.org.email_customizations.bulk_remove_email_address_bounces 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"emailAddresses": "{{ emailAddresses }}"
}'
;
```
</TabItem>
</Tabs>
