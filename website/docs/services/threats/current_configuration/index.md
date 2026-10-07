--- 
title: current_configuration
hide_title: false
hide_table_of_contents: false
keywords:
  - current_configuration
  - threats
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

Creates, updates, deletes, gets or lists a <code>current_configuration</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="current_configuration" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.threats.current_configuration" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_current_configuration"
    values={[
        { label: 'get_current_configuration', value: 'get_current_configuration' }
    ]}
>
<TabItem value="get_current_configuration">

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
    <td><CopyableCode code="action" /></td>
    <td><code>string</code></td>
    <td>Specifies how Okta responds to authentication requests from suspicious IP addresses (none, audit, block) (example: none)</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the ThreatInsight Configuration object was created (example: 2020-08-05T22:18:30.629Z)</td>
</tr>
<tr>
    <td><CopyableCode code="excludeZones" /></td>
    <td><code>array</code></td>
    <td>Accepts a list of [Network Zone](https://developer.okta.com/docs/api/openapi/okta-management/management/networkzone/) IDs. IPs in the excluded network zones aren't logged or blocked. This ensures that traffic from known, trusted IPs isn't accidentally logged or blocked.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the ThreatInsight Configuration object was last updated (example: 2020-09-08T20:53:20.882Z)</td>
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
    <td><a href="#get_current_configuration"><CopyableCode code="get_current_configuration" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the ThreatInsight configuration for the org</td>
</tr>
<tr>
    <td><a href="#update_configuration"><CopyableCode code="update_configuration" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-action"><code>action</code></a></td>
    <td></td>
    <td>Updates the ThreatInsight configuration for the org</td>
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
    defaultValue="get_current_configuration"
    values={[
        { label: 'get_current_configuration', value: 'get_current_configuration' }
    ]}
>
<TabItem value="get_current_configuration">

Retrieves the ThreatInsight configuration for the org

```sql
SELECT
_links,
action,
created,
excludeZones,
lastUpdated
FROM okta.threats.current_configuration
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_configuration"
    values={[
        { label: 'update_configuration', value: 'update_configuration' }
    ]}
>
<TabItem value="update_configuration">

Updates the ThreatInsight configuration for the org

```sql
UPDATE okta.threats.current_configuration
SET 
action = '{{ action }}',
excludeZones = '{{ excludeZones }}'
WHERE 
subdomain = '{{ subdomain }}' --required
AND action = '{{ action }}' --required
RETURNING
_links,
action,
created,
excludeZones,
lastUpdated;
```
</TabItem>
</Tabs>
