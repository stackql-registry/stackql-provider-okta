--- 
title: support_cases
hide_title: false
hide_table_of_contents: false
keywords:
  - support_cases
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

Creates, updates, deletes, gets or lists a <code>support_cases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="support_cases" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.org.support_cases" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_okta_support_cases"
    values={[
        { label: 'list_okta_support_cases', value: 'list_okta_support_cases' }
    ]}
>
<TabItem value="list_okta_support_cases">

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
    <td><CopyableCode code="supportCases" /></td>
    <td><code>array</code></td>
    <td></td>
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
    <td><a href="#list_okta_support_cases"><CopyableCode code="list_okta_support_cases" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all Okta Support cases that the requesting principal has permission to view</td>
</tr>
<tr>
    <td><a href="#update_okta_support_case"><CopyableCode code="update_okta_support_case" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-caseNumber"><code>caseNumber</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates access to the org for an Okta Support case:<br /><br />* You can enable, disable, or extend access to your org for an Okta Support case.<br /><br />* You can approve Okta Support access to your org for self-assigned cases. A self-assigned case is created and assigned by the same Okta Support user.</td>
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
<tr id="parameter-caseNumber">
    <td><CopyableCode code="caseNumber" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_okta_support_cases"
    values={[
        { label: 'list_okta_support_cases', value: 'list_okta_support_cases' }
    ]}
>
<TabItem value="list_okta_support_cases">

Lists all Okta Support cases that the requesting principal has permission to view

```sql
SELECT
supportCases
FROM okta.org.support_cases
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_okta_support_case"
    values={[
        { label: 'update_okta_support_case', value: 'update_okta_support_case' }
    ]}
>
<TabItem value="update_okta_support_case">

Updates access to the org for an Okta Support case:<br /><br />* You can enable, disable, or extend access to your org for an Okta Support case.<br /><br />* You can approve Okta Support access to your org for self-assigned cases. A self-assigned case is created and assigned by the same Okta Support user.

```sql
UPDATE okta.org.support_cases
SET 
impersonation = '{{ impersonation }}',
selfAssigned = '{{ selfAssigned }}'
WHERE 
caseNumber = '{{ caseNumber }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
caseNumber,
impersonation,
selfAssigned,
subject;
```
</TabItem>
</Tabs>
