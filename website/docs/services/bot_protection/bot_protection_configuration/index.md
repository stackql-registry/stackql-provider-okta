--- 
title: bot_protection_configuration
hide_title: false
hide_table_of_contents: false
keywords:
  - bot_protection_configuration
  - bot_protection
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

Creates, updates, deletes, gets or lists a <code>bot_protection_configuration</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="bot_protection_configuration" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.bot_protection.bot_protection_configuration" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_bot_protection_configuration"
    values={[
        { label: 'get_bot_protection_configuration', value: 'get_bot_protection_configuration' }
    ]}
>
<TabItem value="get_bot_protection_configuration">

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
    <td><CopyableCode code="enforcementType" /></td>
    <td><code>string</code></td>
    <td>The type of enforcement to trigger when a bot is detected (OKTA_CHALLENGE)</td>
</tr>
<tr>
    <td><CopyableCode code="level" /></td>
    <td><code>string</code></td>
    <td>The sensitivity level of bot detection (ANY, HIGH, LOW, MEDIUM)</td>
</tr>
<tr>
    <td><CopyableCode code="mode" /></td>
    <td><code>string</code></td>
    <td>The enforcement mode for bot protection (DISABLED, ENFORCED, LOG_ONLY)</td>
</tr>
<tr>
    <td><CopyableCode code="supportedFlows" /></td>
    <td><code>array</code></td>
    <td>An array of authentication flows that have bot protection enabled</td>
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
    <td><a href="#get_bot_protection_configuration"><CopyableCode code="get_bot_protection_configuration" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the bot protection configuration for your org</td>
</tr>
<tr>
    <td><a href="#update_bot_protection_configuration"><CopyableCode code="update_bot_protection_configuration" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-level"><code>level</code></a>, <a href="#parameter-mode"><code>mode</code></a></td>
    <td></td>
    <td>Updates the bot protection configuration for your org</td>
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
    defaultValue="get_bot_protection_configuration"
    values={[
        { label: 'get_bot_protection_configuration', value: 'get_bot_protection_configuration' }
    ]}
>
<TabItem value="get_bot_protection_configuration">

Retrieves the bot protection configuration for your org

```sql
SELECT
_links,
enforcementType,
level,
mode,
supportedFlows
FROM okta.bot_protection.bot_protection_configuration
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_bot_protection_configuration"
    values={[
        { label: 'update_bot_protection_configuration', value: 'update_bot_protection_configuration' }
    ]}
>
<TabItem value="update_bot_protection_configuration">

Updates the bot protection configuration for your org

```sql
UPDATE okta.bot_protection.bot_protection_configuration
SET 
enforcementType = '{{ enforcementType }}',
level = '{{ level }}',
mode = '{{ mode }}',
supportedFlows = '{{ supportedFlows }}'
WHERE 
subdomain = '{{ subdomain }}' --required
AND level = '{{ level }}' --required
AND mode = '{{ mode }}' --required
RETURNING
_links,
enforcementType,
level,
mode,
supportedFlows;
```
</TabItem>
</Tabs>
