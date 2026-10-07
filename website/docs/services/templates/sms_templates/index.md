--- 
title: sms_templates
hide_title: false
hide_table_of_contents: false
keywords:
  - sms_templates
  - templates
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

Creates, updates, deletes, gets or lists a <code>sms_templates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="sms_templates" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.templates.sms_templates" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_sms_template"
    values={[
        { label: 'get_sms_template', value: 'get_sms_template' },
        { label: 'list_sms_templates', value: 'list_sms_templates' }
    ]}
>
<TabItem value="get_sms_template">

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
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Human-readable name of the Template</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="template" /></td>
    <td><code>string</code></td>
    <td>Text of the Template, including any [macros](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Template/)</td>
</tr>
<tr>
    <td><CopyableCode code="translations" /></td>
    <td><code>string</code></td>
    <td>- Template translations are optionally provided when you want to localize the SMS messages. Translations are provided as an object that contains `key:value` pairs: the language and the translated Template text. The key portion is a two-letter country code that conforms to [ISO 639-1](https://www.loc.gov/standards/iso639-2/php/code_list.php). The value is the translated SMS Template. - Just like with regular SMS Templates, the length of the SMS message can't exceed 160 characters.  (opaque JSON object)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the Template (SMS_VERIFY_CODE)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_sms_templates">

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
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Human-readable name of the Template</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="template" /></td>
    <td><code>string</code></td>
    <td>Text of the Template, including any [macros](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Template/)</td>
</tr>
<tr>
    <td><CopyableCode code="translations" /></td>
    <td><code>string</code></td>
    <td>- Template translations are optionally provided when you want to localize the SMS messages. Translations are provided as an object that contains `key:value` pairs: the language and the translated Template text. The key portion is a two-letter country code that conforms to [ISO 639-1](https://www.loc.gov/standards/iso639-2/php/code_list.php). The value is the translated SMS Template. - Just like with regular SMS Templates, the length of the SMS message can't exceed 160 characters.  (opaque JSON object)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the Template (SMS_VERIFY_CODE)</td>
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
    <td><a href="#get_sms_template"><CopyableCode code="get_sms_template" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-templateId"><code>templateId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a specific template by `id`</td>
</tr>
<tr>
    <td><a href="#list_sms_templates"><CopyableCode code="list_sms_templates" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-templateType"><code>templateType</code></a></td>
    <td>Lists all custom SMS templates. A subset of templates can be returned that match a template type.</td>
</tr>
<tr>
    <td><a href="#create_sms_template"><CopyableCode code="create_sms_template" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a new custom SMS template</td>
</tr>
<tr>
    <td><a href="#update_sms_template"><CopyableCode code="update_sms_template" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-templateId"><code>templateId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates only some of the SMS Template properties:<br />  * All properties within the custom SMS Template that have values are updated.<br />  * Any translation that doesn't exist is added.<br />  * Any translation with a null or empty value is removed.<br />  * Any translation with non-empty/null value is updated.<br /></td>
</tr>
<tr>
    <td><a href="#replace_sms_template"><CopyableCode code="replace_sms_template" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-templateId"><code>templateId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the SMS Template<br />&gt; **Notes:** You can't update the default SMS Template.<br /></td>
</tr>
<tr>
    <td><a href="#delete_sms_template"><CopyableCode code="delete_sms_template" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-templateId"><code>templateId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an SMS template</td>
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
<tr id="parameter-templateId">
    <td><CopyableCode code="templateId" /></td>
    <td><code>string</code></td>
    <td>`id` of the Template</td>
</tr>
<tr id="parameter-templateType">
    <td><CopyableCode code="templateType" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_sms_template"
    values={[
        { label: 'get_sms_template', value: 'get_sms_template' },
        { label: 'list_sms_templates', value: 'list_sms_templates' }
    ]}
>
<TabItem value="get_sms_template">

Retrieves a specific template by `id`

```sql
SELECT
id,
name,
created,
lastUpdated,
template,
translations,
type
FROM okta.templates.sms_templates
WHERE templateId = '{{ templateId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_sms_templates">

Lists all custom SMS templates. A subset of templates can be returned that match a template type.

```sql
SELECT
id,
name,
created,
lastUpdated,
template,
translations,
type
FROM okta.templates.sms_templates
WHERE subdomain = '{{ subdomain }}' -- required
AND templateType = '{{ templateType }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_sms_template"
    values={[
        { label: 'create_sms_template', value: 'create_sms_template' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_sms_template">

Creates a new custom SMS template

```sql
INSERT INTO okta.templates.sms_templates (
name,
template,
translations,
type,
subdomain
)
SELECT 
'{{ name }}',
'{{ template }}',
'{{ translations }}',
'{{ type }}',
'{{ subdomain }}'
RETURNING
id,
name,
created,
lastUpdated,
template,
translations,
type
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: sms_templates
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the sms_templates resource.
    - name: name
      value: "{{ name }}"
      description: |
        Human-readable name of the Template
    - name: template
      value: "{{ template }}"
      description: |
        Text of the Template, including any [macros](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Template/)
    - name: translations
      value: "{{ translations }}"
      description: |
        - Template translations are optionally provided when you want to localize the SMS messages. Translations are provided as an object that contains \`key:value\` pairs: the language and the translated Template text. The key portion is a two-letter country code that conforms to [ISO 639-1](https://www.loc.gov/standards/iso639-2/php/code_list.php). The value is the translated SMS Template.
        - Just like with regular SMS Templates, the length of the SMS message can't exceed 160 characters.
        (opaque JSON object)
    - name: type
      value: "{{ type }}"
      description: |
        Type of the Template
      valid_values: ['SMS_VERIFY_CODE']
`}</CodeBlock>

</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_sms_template"
    values={[
        { label: 'update_sms_template', value: 'update_sms_template' }
    ]}
>
<TabItem value="update_sms_template">

Updates only some of the SMS Template properties:<br />  * All properties within the custom SMS Template that have values are updated.<br />  * Any translation that doesn't exist is added.<br />  * Any translation with a null or empty value is removed.<br />  * Any translation with non-empty/null value is updated.<br />

```sql
UPDATE okta.templates.sms_templates
SET 
name = '{{ name }}',
template = '{{ template }}',
translations = '{{ translations }}',
type = '{{ type }}'
WHERE 
templateId = '{{ templateId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
created,
lastUpdated,
template,
translations,
type;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_sms_template"
    values={[
        { label: 'replace_sms_template', value: 'replace_sms_template' }
    ]}
>
<TabItem value="replace_sms_template">

Replaces the SMS Template<br />&gt; **Notes:** You can't update the default SMS Template.<br />

```sql
REPLACE okta.templates.sms_templates
SET 
name = '{{ name }}',
template = '{{ template }}',
translations = '{{ translations }}',
type = '{{ type }}'
WHERE 
templateId = '{{ templateId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
created,
lastUpdated,
template,
translations,
type;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_sms_template"
    values={[
        { label: 'delete_sms_template', value: 'delete_sms_template' }
    ]}
>
<TabItem value="delete_sms_template">

Deletes an SMS template

```sql
DELETE FROM okta.templates.sms_templates
WHERE templateId = '{{ templateId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
