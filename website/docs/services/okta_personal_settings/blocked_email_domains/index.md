--- 
title: blocked_email_domains
hide_title: false
hide_table_of_contents: false
keywords:
  - blocked_email_domains
  - okta_personal_settings
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

Creates, updates, deletes, gets or lists a <code>blocked_email_domains</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="blocked_email_domains" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.okta_personal_settings.blocked_email_domains" /></td></tr>
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
    <td><a href="#replace_blocked_email_domains"><CopyableCode code="replace_blocked_email_domains" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the list of blocked email domains which are excluded from app migration</td>
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

## `REPLACE` examples

<Tabs
    defaultValue="replace_blocked_email_domains"
    values={[
        { label: 'replace_blocked_email_domains', value: 'replace_blocked_email_domains' }
    ]}
>
<TabItem value="replace_blocked_email_domains">

Replaces the list of blocked email domains which are excluded from app migration

```sql
REPLACE okta.okta_personal_settings.blocked_email_domains
SET 
domains = '{{ domains }}'
WHERE 
subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
