--- 
title: email_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - email_settings
  - brands
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

Creates, updates, deletes, gets or lists an <code>email_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="email_settings" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.brands.email_settings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_email_settings"
    values={[
        { label: 'get_email_settings', value: 'get_email_settings' }
    ]}
>
<TabItem value="get_email_settings">

Successfully retrieved the email template's settings.

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
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="recipients" /></td>
    <td><code>string</code></td>
    <td> (ALL_USERS, ADMINS_ONLY, NO_USERS)</td>
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
    <td><a href="#get_email_settings"><CopyableCode code="get_email_settings" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-brandId"><code>brandId</code></a>, <a href="#parameter-templateName"><code>templateName</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an email template's settings</td>
</tr>
<tr>
    <td><a href="#replace_email_settings"><CopyableCode code="replace_email_settings" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-brandId"><code>brandId</code></a>, <a href="#parameter-templateName"><code>templateName</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-recipients"><code>recipients</code></a></td>
    <td></td>
    <td>Replaces an email template's settings</td>
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
<tr id="parameter-brandId">
    <td><CopyableCode code="brandId" /></td>
    <td><code>string</code></td>
    <td>The ID of the brand</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-templateName">
    <td><CopyableCode code="templateName" /></td>
    <td><code>string</code></td>
    <td>The name of the email template</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_email_settings"
    values={[
        { label: 'get_email_settings', value: 'get_email_settings' }
    ]}
>
<TabItem value="get_email_settings">

Retrieves an email template's settings

```sql
SELECT
_links,
recipients
FROM okta.brands.email_settings
WHERE brandId = '{{ brandId }}' -- required
AND templateName = '{{ templateName }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_email_settings"
    values={[
        { label: 'replace_email_settings', value: 'replace_email_settings' }
    ]}
>
<TabItem value="replace_email_settings">

Replaces an email template's settings

```sql
REPLACE okta.brands.email_settings
SET 
recipients = '{{ recipients }}'
WHERE 
brandId = '{{ brandId }}' --required
AND templateName = '{{ templateName }}' --required
AND subdomain = '{{ subdomain }}' --required
AND recipients = '{{ recipients }}' --required
RETURNING
recipients;
```
</TabItem>
</Tabs>
