--- 
title: preferences
hide_title: false
hide_table_of_contents: false
keywords:
  - preferences
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

Creates, updates, deletes, gets or lists a <code>preferences</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="preferences" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.org.preferences" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_org_preferences"
    values={[
        { label: 'get_org_preferences', value: 'get_org_preferences' }
    ]}
>
<TabItem value="get_org_preferences">

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
    <td><CopyableCode code="showEndUserFooter" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the footer is shown on the End-User Dashboard</td>
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
    <td><a href="#get_org_preferences"><CopyableCode code="get_org_preferences" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves preferences of your Okta org</td>
</tr>
<tr>
    <td><a href="#set_org_hide_okta_uifooter"><CopyableCode code="set_org_hide_okta_uifooter" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Sets the preference to hide the Okta End-User Dashboard footer for all end users of your org</td>
</tr>
<tr>
    <td><a href="#set_org_show_okta_uifooter"><CopyableCode code="set_org_show_okta_uifooter" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Sets the preference to show the Okta UI footer for all end users of your org</td>
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
    defaultValue="get_org_preferences"
    values={[
        { label: 'get_org_preferences', value: 'get_org_preferences' }
    ]}
>
<TabItem value="get_org_preferences">

Retrieves preferences of your Okta org

```sql
SELECT
_links,
showEndUserFooter
FROM okta.org.preferences
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="set_org_hide_okta_uifooter"
    values={[
        { label: 'set_org_hide_okta_uifooter', value: 'set_org_hide_okta_uifooter' },
        { label: 'set_org_show_okta_uifooter', value: 'set_org_show_okta_uifooter' }
    ]}
>
<TabItem value="set_org_hide_okta_uifooter">

Sets the preference to hide the Okta End-User Dashboard footer for all end users of your org

```sql
EXEC okta.org.preferences.set_org_hide_okta_uifooter 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="set_org_show_okta_uifooter">

Sets the preference to show the Okta UI footer for all end users of your org

```sql
EXEC okta.org.preferences.set_org_show_okta_uifooter 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
