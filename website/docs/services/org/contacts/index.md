--- 
title: contacts
hide_title: false
hide_table_of_contents: false
keywords:
  - contacts
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

Creates, updates, deletes, gets or lists a <code>contacts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="contacts" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.org.contacts" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_org_contact_user"
    values={[
        { label: 'get_org_contact_user', value: 'get_org_contact_user' }
    ]}
>
<TabItem value="get_org_contact_user">

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
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the contact type user object using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification</td>
</tr>
<tr>
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>Contact user ID</td>
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
    <td><a href="#get_org_contact_user"><CopyableCode code="get_org_contact_user" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-contactType"><code>contactType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the ID and the user resource associated with the specified contact type</td>
</tr>
<tr>
    <td><a href="#replace_org_contact_user"><CopyableCode code="replace_org_contact_user" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-contactType"><code>contactType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the user associated with the specified contact type</td>
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
<tr id="parameter-contactType">
    <td><CopyableCode code="contactType" /></td>
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
    defaultValue="get_org_contact_user"
    values={[
        { label: 'get_org_contact_user', value: 'get_org_contact_user' }
    ]}
>
<TabItem value="get_org_contact_user">

Retrieves the ID and the user resource associated with the specified contact type

```sql
SELECT
_links,
userId
FROM okta.org.contacts
WHERE contactType = '{{ contactType }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_org_contact_user"
    values={[
        { label: 'replace_org_contact_user', value: 'replace_org_contact_user' }
    ]}
>
<TabItem value="replace_org_contact_user">

Replaces the user associated with the specified contact type

```sql
REPLACE okta.org.contacts
SET 
userId = '{{ userId }}'
WHERE 
contactType = '{{ contactType }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
_links,
userId;
```
</TabItem>
</Tabs>
