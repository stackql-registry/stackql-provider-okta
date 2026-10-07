--- 
title: email_templates
hide_title: false
hide_table_of_contents: false
keywords:
  - email_templates
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

Creates, updates, deletes, gets or lists an <code>email_templates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="email_templates" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.brands.email_templates" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_email_template"
    values={[
        { label: 'get_email_template', value: 'get_email_template' },
        { label: 'list_email_templates', value: 'list_email_templates' }
    ]}
>
<TabItem value="get_email_template">

Successfully retrieved the email template.

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of this email template</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_email_templates">

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of this email template</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
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
    <td><a href="#get_email_template"><CopyableCode code="get_email_template" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-brandId"><code>brandId</code></a>, <a href="#parameter-templateName"><code>templateName</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Retrieves the details of an email template by name</td>
</tr>
<tr>
    <td><a href="#list_email_templates"><CopyableCode code="list_email_templates" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-brandId"><code>brandId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-expand"><code>expand</code></a></td>
    <td>Lists all supported email templates</td>
</tr>
<tr>
    <td><a href="#send_test_email"><CopyableCode code="send_test_email" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-brandId"><code>brandId</code></a>, <a href="#parameter-templateName"><code>templateName</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-language"><code>language</code></a></td>
    <td>Sends a test email to the current user's primary and secondary email addresses. The email content is selected based on the following priority:<br />1. The email customization for the language specified in the `language` query parameter<br />&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; If Custom languages for Okta Email Templates is enabled and the `language` parameter is an additional language, the test email uses the customization corresponding to the language.<br />2. The email template's default customization<br />3. The email template's default content, translated to the current user's language<br /><br />You can only send customized test emails if you've configured a custom email domain. If you don't have a custom email domain, test emails use the Okta default template and are sent from the Okta email domain.<br /><br />&gt; **Note:** Super admins can view customized email templates with the **Send a test email** request. However, when custom email templates are sent to super admins as part of actual email notification flows, the customizations aren't applied. Instead, the default email template is used. This only applies to super admins.</td>
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
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](https://developer.okta.com/docs/api/#pagination) and [Link header](https://developer.okta.com/docs/api/#link-header).</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>array</code></td>
    <td>Specifies additional metadata to be included in the response</td>
</tr>
<tr id="parameter-language">
    <td><CopyableCode code="language" /></td>
    <td><code>string</code></td>
    <td>The language to use for the email. Defaults to the current user's language if unspecified.</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer</code></td>
    <td>A limit on the number of objects to return</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_email_template"
    values={[
        { label: 'get_email_template', value: 'get_email_template' },
        { label: 'list_email_templates', value: 'list_email_templates' }
    ]}
>
<TabItem value="get_email_template">

Retrieves the details of an email template by name

```sql
SELECT
name,
_embedded,
_links
FROM okta.brands.email_templates
WHERE brandId = '{{ brandId }}' -- required
AND templateName = '{{ templateName }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}'
;
```
</TabItem>
<TabItem value="list_email_templates">

Lists all supported email templates

```sql
SELECT
name,
_embedded,
_links
FROM okta.brands.email_templates
WHERE brandId = '{{ brandId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
AND expand = '{{ expand }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="send_test_email"
    values={[
        { label: 'send_test_email', value: 'send_test_email' }
    ]}
>
<TabItem value="send_test_email">

Sends a test email to the current user's primary and secondary email addresses. The email content is selected based on the following priority:<br />1. The email customization for the language specified in the `language` query parameter<br />&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; If Custom languages for Okta Email Templates is enabled and the `language` parameter is an additional language, the test email uses the customization corresponding to the language.<br />2. The email template's default customization<br />3. The email template's default content, translated to the current user's language<br /><br />You can only send customized test emails if you've configured a custom email domain. If you don't have a custom email domain, test emails use the Okta default template and are sent from the Okta email domain.<br /><br />&gt; **Note:** Super admins can view customized email templates with the **Send a test email** request. However, when custom email templates are sent to super admins as part of actual email notification flows, the customizations aren't applied. Instead, the default email template is used. This only applies to super admins.

```sql
EXEC okta.brands.email_templates.send_test_email 
@brandId='{{ brandId }}' --required, 
@templateName='{{ templateName }}' --required, 
@subdomain='{{ subdomain }}' --required, 
@language='{{ language }}'
;
```
</TabItem>
</Tabs>
