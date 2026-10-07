--- 
title: captcha_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - captcha_instances
  - captchas
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

Creates, updates, deletes, gets or lists a <code>captcha_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="captcha_instances" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.captchas.captcha_instances" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_captcha_instance"
    values={[
        { label: 'get_captcha_instance', value: 'get_captcha_instance' },
        { label: 'list_captcha_instances', value: 'list_captcha_instances' }
    ]}
>
<TabItem value="get_captcha_instance">

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
    <td>The unique key for the CAPTCHA instance</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the CAPTCHA instance</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="secretKey" /></td>
    <td><code>string</code></td>
    <td>The secret key issued from the CAPTCHA provider to perform server-side validation for a CAPTCHA token</td>
</tr>
<tr>
    <td><CopyableCode code="siteKey" /></td>
    <td><code>string</code></td>
    <td>The site key issued from the CAPTCHA provider to render a CAPTCHA on a page</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of CAPTCHA provider (HCAPTCHA, RECAPTCHA_V2)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_captcha_instances">

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
    <td>The unique key for the CAPTCHA instance</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the CAPTCHA instance</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="secretKey" /></td>
    <td><code>string</code></td>
    <td>The secret key issued from the CAPTCHA provider to perform server-side validation for a CAPTCHA token</td>
</tr>
<tr>
    <td><CopyableCode code="siteKey" /></td>
    <td><code>string</code></td>
    <td>The site key issued from the CAPTCHA provider to render a CAPTCHA on a page</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of CAPTCHA provider (HCAPTCHA, RECAPTCHA_V2)</td>
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
    <td><a href="#get_captcha_instance"><CopyableCode code="get_captcha_instance" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-captchaId"><code>captchaId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the properties of a specified CAPTCHA instance</td>
</tr>
<tr>
    <td><a href="#list_captcha_instances"><CopyableCode code="list_captcha_instances" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all CAPTCHA instances with pagination support. A subset of CAPTCHA instances can be returned that match a supported filter expression or query.</td>
</tr>
<tr>
    <td><a href="#create_captcha_instance"><CopyableCode code="create_captcha_instance" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a new CAPTCHA instance. Currently, an org can only configure a single CAPTCHA instance.</td>
</tr>
<tr>
    <td><a href="#update_captcha_instance"><CopyableCode code="update_captcha_instance" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-captchaId"><code>captchaId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Partially updates the properties of a specified CAPTCHA instance</td>
</tr>
<tr>
    <td><a href="#replace_captcha_instance"><CopyableCode code="replace_captcha_instance" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-captchaId"><code>captchaId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the properties for a specified CAPTCHA instance</td>
</tr>
<tr>
    <td><a href="#delete_captcha_instance"><CopyableCode code="delete_captcha_instance" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-captchaId"><code>captchaId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a specified CAPTCHA instance<br />&gt; **Note:** If your CAPTCHA instance is still associated with your org, the request fails. You must first update your Org-wide CAPTCHA settings to remove the CAPTCHA instance.</td>
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
<tr id="parameter-captchaId">
    <td><CopyableCode code="captchaId" /></td>
    <td><code>string</code></td>
    <td>The unique key used to identify your CAPTCHA instance</td>
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
    defaultValue="get_captcha_instance"
    values={[
        { label: 'get_captcha_instance', value: 'get_captcha_instance' },
        { label: 'list_captcha_instances', value: 'list_captcha_instances' }
    ]}
>
<TabItem value="get_captcha_instance">

Retrieves the properties of a specified CAPTCHA instance

```sql
SELECT
id,
name,
_links,
secretKey,
siteKey,
type
FROM okta.captchas.captcha_instances
WHERE captchaId = '{{ captchaId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_captcha_instances">

Lists all CAPTCHA instances with pagination support. A subset of CAPTCHA instances can be returned that match a supported filter expression or query.

```sql
SELECT
id,
name,
_links,
secretKey,
siteKey,
type
FROM okta.captchas.captcha_instances
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_captcha_instance"
    values={[
        { label: 'create_captcha_instance', value: 'create_captcha_instance' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_captcha_instance">

Creates a new CAPTCHA instance. Currently, an org can only configure a single CAPTCHA instance.

```sql
INSERT INTO okta.captchas.captcha_instances (
name,
secretKey,
siteKey,
type,
subdomain
)
SELECT 
'{{ name }}',
'{{ secretKey }}',
'{{ siteKey }}',
'{{ type }}',
'{{ subdomain }}'
RETURNING
id,
name,
_links,
secretKey,
siteKey,
type
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: captcha_instances
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the captcha_instances resource.
    - name: name
      value: "{{ name }}"
      description: |
        The name of the CAPTCHA instance
    - name: secretKey
      value: "{{ secretKey }}"
      description: |
        The secret key issued from the CAPTCHA provider to perform server-side validation for a CAPTCHA token
    - name: siteKey
      value: "{{ siteKey }}"
      description: |
        The site key issued from the CAPTCHA provider to render a CAPTCHA on a page
    - name: type
      value: "{{ type }}"
      description: |
        The type of CAPTCHA provider
      valid_values: ['HCAPTCHA', 'RECAPTCHA_V2']
`}</CodeBlock>

</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_captcha_instance"
    values={[
        { label: 'update_captcha_instance', value: 'update_captcha_instance' }
    ]}
>
<TabItem value="update_captcha_instance">

Partially updates the properties of a specified CAPTCHA instance

```sql
UPDATE okta.captchas.captcha_instances
SET 
name = '{{ name }}',
secretKey = '{{ secretKey }}',
siteKey = '{{ siteKey }}',
type = '{{ type }}'
WHERE 
captchaId = '{{ captchaId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
secretKey,
siteKey,
type;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_captcha_instance"
    values={[
        { label: 'replace_captcha_instance', value: 'replace_captcha_instance' }
    ]}
>
<TabItem value="replace_captcha_instance">

Replaces the properties for a specified CAPTCHA instance

```sql
REPLACE okta.captchas.captcha_instances
SET 
name = '{{ name }}',
secretKey = '{{ secretKey }}',
siteKey = '{{ siteKey }}',
type = '{{ type }}'
WHERE 
captchaId = '{{ captchaId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
secretKey,
siteKey,
type;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_captcha_instance"
    values={[
        { label: 'delete_captcha_instance', value: 'delete_captcha_instance' }
    ]}
>
<TabItem value="delete_captcha_instance">

Deletes a specified CAPTCHA instance<br />&gt; **Note:** If your CAPTCHA instance is still associated with your org, the request fails. You must first update your Org-wide CAPTCHA settings to remove the CAPTCHA instance.

```sql
DELETE FROM okta.captchas.captcha_instances
WHERE captchaId = '{{ captchaId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
