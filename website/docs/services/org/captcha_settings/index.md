--- 
title: captcha_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - captcha_settings
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

Creates, updates, deletes, gets or lists a <code>captcha_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="captcha_settings" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.org.captcha_settings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_org_captcha_settings"
    values={[
        { label: 'get_org_captcha_settings', value: 'get_org_captcha_settings' }
    ]}
>
<TabItem value="get_org_captcha_settings">

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
    <td>Link relations for the CAPTCHA settings object</td>
</tr>
<tr>
    <td><CopyableCode code="captchaId" /></td>
    <td><code>string</code></td>
    <td>The unique key of the associated CAPTCHA instance</td>
</tr>
<tr>
    <td><CopyableCode code="enabledPages" /></td>
    <td><code>array</code></td>
    <td>An array of pages that have CAPTCHA enabled</td>
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
    <td><a href="#get_org_captcha_settings"><CopyableCode code="get_org_captcha_settings" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the CAPTCHA settings object for your organization<br />&gt; **Note**: If the current organization hasn't configured CAPTCHA Settings, the request returns an empty object.</td>
</tr>
<tr>
    <td><a href="#replaces_org_captcha_settings"><CopyableCode code="replaces_org_captcha_settings" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the CAPTCHA settings object for your organization<br />&gt; **Note**: You can disable CAPTCHA for your organization by setting `captchaId` and `enabledPages` to `null`.</td>
</tr>
<tr>
    <td><a href="#delete_org_captcha_settings"><CopyableCode code="delete_org_captcha_settings" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes the CAPTCHA settings object for your organization</td>
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
    defaultValue="get_org_captcha_settings"
    values={[
        { label: 'get_org_captcha_settings', value: 'get_org_captcha_settings' }
    ]}
>
<TabItem value="get_org_captcha_settings">

Retrieves the CAPTCHA settings object for your organization<br />&gt; **Note**: If the current organization hasn't configured CAPTCHA Settings, the request returns an empty object.

```sql
SELECT
_links,
captchaId,
enabledPages
FROM okta.org.captcha_settings
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replaces_org_captcha_settings"
    values={[
        { label: 'replaces_org_captcha_settings', value: 'replaces_org_captcha_settings' }
    ]}
>
<TabItem value="replaces_org_captcha_settings">

Replaces the CAPTCHA settings object for your organization<br />&gt; **Note**: You can disable CAPTCHA for your organization by setting `captchaId` and `enabledPages` to `null`.

```sql
REPLACE okta.org.captcha_settings
SET 
captchaId = '{{ captchaId }}',
enabledPages = '{{ enabledPages }}'
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
_links,
captchaId,
enabledPages;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_org_captcha_settings"
    values={[
        { label: 'delete_org_captcha_settings', value: 'delete_org_captcha_settings' }
    ]}
>
<TabItem value="delete_org_captcha_settings">

Deletes the CAPTCHA settings object for your organization

```sql
DELETE FROM okta.org.captcha_settings
WHERE subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
