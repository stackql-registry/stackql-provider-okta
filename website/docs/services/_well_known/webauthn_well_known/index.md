--- 
title: webauthn_well_known
hide_title: false
hide_table_of_contents: false
keywords:
  - webauthn_well_known
  - _well_known
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

Creates, updates, deletes, gets or lists a <code>webauthn_well_known</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="webauthn_well_known" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta._well_known.webauthn_well_known" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_web_authn_well_known_uri"
    values={[
        { label: 'get_web_authn_well_known_uri', value: 'get_web_authn_well_known_uri' }
    ]}
>
<TabItem value="get_web_authn_well_known_uri">

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
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
    <td><a href="#get_web_authn_well_known_uri"><CopyableCode code="get_web_authn_well_known_uri" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the content of the `webauthn` well-known URI</td>
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
    defaultValue="get_web_authn_well_known_uri"
    values={[
        { label: 'get_web_authn_well_known_uri', value: 'get_web_authn_well_known_uri' }
    ]}
>
<TabItem value="get_web_authn_well_known_uri">

Retrieves the content of the `webauthn` well-known URI

```sql
SELECT
*
FROM okta._well_known.webauthn_well_known
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
