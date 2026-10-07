--- 
title: support_aerial_consent
hide_title: false
hide_table_of_contents: false
keywords:
  - support_aerial_consent
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

Creates, updates, deletes, gets or lists a <code>support_aerial_consent</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="support_aerial_consent" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.org.support_aerial_consent" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_aerial_consent"
    values={[
        { label: 'get_aerial_consent', value: 'get_aerial_consent' }
    ]}
>
<TabItem value="get_aerial_consent">

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
    <td><CopyableCode code="accountId" /></td>
    <td><code>string</code></td>
    <td>The unique ID of the Aerial account</td>
</tr>
<tr>
    <td><CopyableCode code="grantedBy" /></td>
    <td><code>string</code></td>
    <td>Principal ID of the user who granted the permission (example: 00u23ej02I2RLFxS5406)</td>
</tr>
<tr>
    <td><CopyableCode code="grantedDate" /></td>
    <td><code>string</code></td>
    <td>Date when grant was created (example: 2024-07-24T16:01:13.000Z)</td>
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
    <td><a href="#get_aerial_consent"><CopyableCode code="get_aerial_consent" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the Okta Aerial consent grant details for your Org. Returns a 404 Not Found error if no consent has been granted.</td>
</tr>
<tr>
    <td><a href="#grant_aerial_consent"><CopyableCode code="grant_aerial_consent" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-accountId"><code>accountId</code></a></td>
    <td></td>
    <td>Grants an Okta Aerial account consent to manage your org. If the org is a child org, consent is taken from the parent org. Grant calls directly to the child are not allowed.</td>
</tr>
<tr>
    <td><a href="#revoke_aerial_consent"><CopyableCode code="revoke_aerial_consent" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Revokes access of an Okta Aerial account to your Org. The revoke operation will fail if the org has already been added to an Aerial account.</td>
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
    defaultValue="get_aerial_consent"
    values={[
        { label: 'get_aerial_consent', value: 'get_aerial_consent' }
    ]}
>
<TabItem value="get_aerial_consent">

Retrieves the Okta Aerial consent grant details for your Org. Returns a 404 Not Found error if no consent has been granted.

```sql
SELECT
_links,
accountId,
grantedBy,
grantedDate
FROM okta.org.support_aerial_consent
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="grant_aerial_consent"
    values={[
        { label: 'grant_aerial_consent', value: 'grant_aerial_consent' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="grant_aerial_consent">

Grants an Okta Aerial account consent to manage your org. If the org is a child org, consent is taken from the parent org. Grant calls directly to the child are not allowed.

```sql
INSERT INTO okta.org.support_aerial_consent (
accountId,
subdomain
)
SELECT 
'{{ accountId }}' /* required */,
'{{ subdomain }}'
RETURNING
_links,
accountId,
grantedBy,
grantedDate
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: support_aerial_consent
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the support_aerial_consent resource.
    - name: accountId
      value: "{{ accountId }}"
      description: |
        The unique ID of the Aerial account
`}</CodeBlock>

</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="revoke_aerial_consent"
    values={[
        { label: 'revoke_aerial_consent', value: 'revoke_aerial_consent' }
    ]}
>
<TabItem value="revoke_aerial_consent">

Revokes access of an Okta Aerial account to your Org. The revoke operation will fail if the org has already been added to an Aerial account.

```sql
DELETE FROM okta.org.support_aerial_consent
WHERE subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
