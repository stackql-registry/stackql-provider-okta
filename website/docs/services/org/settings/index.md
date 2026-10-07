--- 
title: settings
hide_title: false
hide_table_of_contents: false
keywords:
  - settings
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

Creates, updates, deletes, gets or lists a <code>settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="settings" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.org.settings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_org_settings"
    values={[
        { label: 'get_org_settings', value: 'get_org_settings' }
    ]}
>
<TabItem value="get_org_settings">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Org ID</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the org using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification</td>
</tr>
<tr>
    <td><CopyableCode code="address1" /></td>
    <td><code>string</code></td>
    <td>Primary address of the organization associated with the org</td>
</tr>
<tr>
    <td><CopyableCode code="address2" /></td>
    <td><code>string</code></td>
    <td>Secondary address of the organization associated with the org</td>
</tr>
<tr>
    <td><CopyableCode code="city" /></td>
    <td><code>string</code></td>
    <td>City of the organization associated with the org</td>
</tr>
<tr>
    <td><CopyableCode code="companyName" /></td>
    <td><code>string</code></td>
    <td>Name of org</td>
</tr>
<tr>
    <td><CopyableCode code="country" /></td>
    <td><code>string</code></td>
    <td>County of the organization associated with the org</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>When org was created</td>
</tr>
<tr>
    <td><CopyableCode code="endUserSupportHelpURL" /></td>
    <td><code>string</code></td>
    <td>Support link of org</td>
</tr>
<tr>
    <td><CopyableCode code="expiresAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Expiration of org</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>When org was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="phoneNumber" /></td>
    <td><code>string</code></td>
    <td>Phone number of the organization associated with the org</td>
</tr>
<tr>
    <td><CopyableCode code="postalCode" /></td>
    <td><code>string</code></td>
    <td>Postal code of the organization associated with the org</td>
</tr>
<tr>
    <td><CopyableCode code="state" /></td>
    <td><code>string</code></td>
    <td>State of the organization associated with the org</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of org (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>Subdomain of org</td>
</tr>
<tr>
    <td><CopyableCode code="supportPhoneNumber" /></td>
    <td><code>string</code></td>
    <td>Support help phone of the organization associated with the org</td>
</tr>
<tr>
    <td><CopyableCode code="website" /></td>
    <td><code>string</code></td>
    <td>Website of the organization associated with the org</td>
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
    <td><a href="#get_org_settings"><CopyableCode code="get_org_settings" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the Org General Settings</td>
</tr>
<tr>
    <td><a href="#update_org_settings"><CopyableCode code="update_org_settings" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates partial Org General Settings</td>
</tr>
<tr>
    <td><a href="#replace_org_settings"><CopyableCode code="replace_org_settings" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the Org General Settings for your Okta org</td>
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
    defaultValue="get_org_settings"
    values={[
        { label: 'get_org_settings', value: 'get_org_settings' }
    ]}
>
<TabItem value="get_org_settings">

Retrieves the Org General Settings

```sql
SELECT
id,
_links,
address1,
address2,
city,
companyName,
country,
created,
endUserSupportHelpURL,
expiresAt,
lastUpdated,
phoneNumber,
postalCode,
state,
status,
subdomain,
supportPhoneNumber,
website
FROM okta.org.settings
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_org_settings"
    values={[
        { label: 'update_org_settings', value: 'update_org_settings' }
    ]}
>
<TabItem value="update_org_settings">

Updates partial Org General Settings

```sql
UPDATE okta.org.settings
SET 
address1 = '{{ address1 }}',
address2 = '{{ address2 }}',
city = '{{ city }}',
companyName = '{{ companyName }}',
country = '{{ country }}',
endUserSupportHelpURL = '{{ endUserSupportHelpURL }}',
phoneNumber = '{{ phoneNumber }}',
postalCode = '{{ postalCode }}',
state = '{{ state }}',
supportPhoneNumber = '{{ supportPhoneNumber }}',
website = '{{ website }}'
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
id,
_links,
address1,
address2,
city,
companyName,
country,
created,
endUserSupportHelpURL,
expiresAt,
lastUpdated,
phoneNumber,
postalCode,
state,
status,
subdomain,
supportPhoneNumber,
website;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_org_settings"
    values={[
        { label: 'replace_org_settings', value: 'replace_org_settings' }
    ]}
>
<TabItem value="replace_org_settings">

Replaces the Org General Settings for your Okta org

```sql
REPLACE okta.org.settings
SET 
address1 = '{{ address1 }}',
address2 = '{{ address2 }}',
city = '{{ city }}',
companyName = '{{ companyName }}',
country = '{{ country }}',
endUserSupportHelpURL = '{{ endUserSupportHelpURL }}',
phoneNumber = '{{ phoneNumber }}',
postalCode = '{{ postalCode }}',
state = '{{ state }}',
supportPhoneNumber = '{{ supportPhoneNumber }}',
website = '{{ website }}'
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
id,
_links,
address1,
address2,
city,
companyName,
country,
created,
endUserSupportHelpURL,
expiresAt,
lastUpdated,
phoneNumber,
postalCode,
state,
status,
subdomain,
supportPhoneNumber,
website;
```
</TabItem>
</Tabs>
