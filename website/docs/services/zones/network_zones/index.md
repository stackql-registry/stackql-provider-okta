--- 
title: network_zones
hide_title: false
hide_table_of_contents: false
keywords:
  - network_zones
  - zones
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

Creates, updates, deletes, gets or lists a <code>network_zones</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="network_zones" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.zones.network_zones" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_network_zone"
    values={[
        { label: 'get_network_zone', value: 'get_network_zone' },
        { label: 'list_network_zones', value: 'list_network_zones' }
    ]}
>
<TabItem value="get_network_zone">

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
    <td>Unique identifier for the Network Zone</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Unique name for this Network Zone</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last modified</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Network Zone status (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Indicates a system Network Zone: * `true` for system Network Zones * `false` for custom Network Zones  The Okta org provides the following default system Network Zones: * `LegacyIpZone` * `BlockedIpZone` * `DefaultEnhancedDynamicZone` * `DefaultExemptIpZone`  Admins can modify the name of the default system Network Zone and add up to 5000 gateway or proxy IP entries. </td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of Network Zone (DYNAMIC, IP, DYNAMIC_V2)</td>
</tr>
<tr>
    <td><CopyableCode code="usage" /></td>
    <td><code>string</code></td>
    <td>The usage of the Network Zone (BLOCKLIST, POLICY)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_network_zones">

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
    <td>Unique identifier for the Network Zone</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Unique name for this Network Zone</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last modified</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Network Zone status (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Indicates a system Network Zone: * `true` for system Network Zones * `false` for custom Network Zones  The Okta org provides the following default system Network Zones: * `LegacyIpZone` * `BlockedIpZone` * `DefaultEnhancedDynamicZone` * `DefaultExemptIpZone`  Admins can modify the name of the default system Network Zone and add up to 5000 gateway or proxy IP entries. </td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of Network Zone (DYNAMIC, IP, DYNAMIC_V2)</td>
</tr>
<tr>
    <td><CopyableCode code="usage" /></td>
    <td><code>string</code></td>
    <td>The usage of the Network Zone (BLOCKLIST, POLICY)</td>
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
    <td><a href="#get_network_zone"><CopyableCode code="get_network_zone" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-zoneId"><code>zoneId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a Network Zone by `zoneId`</td>
</tr>
<tr>
    <td><a href="#list_network_zones"><CopyableCode code="list_network_zones" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-filter"><code>filter</code></a></td>
    <td>Lists all Network Zones with pagination. A subset of zones can be returned that match a supported filter expression or query.<br /><br />This operation requires URL encoding. For example, `filter=(id eq "nzoul0wf9jyb8xwZm0g3" or id eq "nzoul1MxmGN18NDQT0g3")` is encoded as `filter=%28id+eq+%22nzoul0wf9jyb8xwZm0g3%22+or+id+eq+%22nzoul1MxmGN18NDQT0g3%22%29`.<br /><br />Okta supports filtering on the `id`, `usage`, and `system` properties. See [Filter](https://developer.okta.com/docs/api/#filter) for more information on the expressions that are used in filtering.</td>
</tr>
<tr>
    <td><a href="#create_network_zone"><CopyableCode code="create_network_zone" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Creates a Network Zone<br />* For an IP Network Zone, you must define either `gateways` or `proxies`.<br />* For a Dynamic Network Zone, you must define at least one of the following: `asns`, `locations`, or `proxyType`.<br />* For an Enhanced Dynamic Network Zone, you must define at least one of the following: `asns`, `locations`, or `ipServiceCategories`.<br />&gt; **Note:** To view all properties for an Enhanced Dynamic Network Zone, select `DYNAMIC_V2` from the `type` dropdown list.</td>
</tr>
<tr>
    <td><a href="#replace_network_zone"><CopyableCode code="replace_network_zone" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-zoneId"><code>zoneId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Replaces a Network Zone by `zoneId`. The replaced Network Zone type must be the same as the existing type.<br />You can replace the usage (`POLICY`, `BLOCKLIST`) of a Network Zone by updating the `usage` attribute.<br /><br />**IP exempt zone**<br /><br />If you have the IP exempt zone feature enabled, you can allow traffic from specific gateway IPs irrespective of Okta ThreatInsight configurations, blocked network zones, or IP change events within Identity Threat Protection with Okta AI.<br /><br /><br /><br />When you enable this feature, Okta creates a zone called `DefaultExemptIpZone`. Gateway IPs that you add to this zone always have access to Okta resources. See [IP exempt zone](https://help.okta.com/okta_help.htm?type=oie&id=csh-about-ip-exempt-zone).<br /><br />&gt; **Note:** You can't add trusted proxy IPs to this zone, delete the zone, or create additional exempt IP zones.</td>
</tr>
<tr>
    <td><a href="#delete_network_zone"><CopyableCode code="delete_network_zone" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-zoneId"><code>zoneId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a Network Zone by `zoneId`<br />&gt; **Notes:**<br />&gt; * You can't delete a Network Zone that's used by a [Policy](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/policy/) or [Rule](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/policy/#tag/Policy/operation/listPolicyRules).<br />&gt; * For Okta Identity Engine orgs, you can't delete a Network Zone with an ACTIVE `status`. &lt;x-lifecycle class="oie"&gt;&lt;/x-lifecycle&gt;</td>
</tr>
<tr>
    <td><a href="#activate_network_zone"><CopyableCode code="activate_network_zone" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-zoneId"><code>zoneId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a Network Zone by `zoneId`</td>
</tr>
<tr>
    <td><a href="#deactivate_network_zone"><CopyableCode code="deactivate_network_zone" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-zoneId"><code>zoneId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates a Network Zone by `zoneId`</td>
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
<tr id="parameter-zoneId">
    <td><CopyableCode code="zoneId" /></td>
    <td><code>string</code></td>
    <td>`id` of the Network Zone (example: nzowc1U5Jh5xuAK0o0g3)</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td></td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_network_zone"
    values={[
        { label: 'get_network_zone', value: 'get_network_zone' },
        { label: 'list_network_zones', value: 'list_network_zones' }
    ]}
>
<TabItem value="get_network_zone">

Retrieves a Network Zone by `zoneId`

```sql
SELECT
id,
name,
_links,
created,
lastUpdated,
status,
system,
type,
usage
FROM okta.zones.network_zones
WHERE zoneId = '{{ zoneId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_network_zones">

Lists all Network Zones with pagination. A subset of zones can be returned that match a supported filter expression or query.<br /><br />This operation requires URL encoding. For example, `filter=(id eq "nzoul0wf9jyb8xwZm0g3" or id eq "nzoul1MxmGN18NDQT0g3")` is encoded as `filter=%28id+eq+%22nzoul0wf9jyb8xwZm0g3%22+or+id+eq+%22nzoul1MxmGN18NDQT0g3%22%29`.<br /><br />Okta supports filtering on the `id`, `usage`, and `system` properties. See [Filter](https://developer.okta.com/docs/api/#filter) for more information on the expressions that are used in filtering.

```sql
SELECT
id,
name,
_links,
created,
lastUpdated,
status,
system,
type,
usage
FROM okta.zones.network_zones
WHERE subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
AND filter = '{{ filter }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_network_zone"
    values={[
        { label: 'create_network_zone', value: 'create_network_zone' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_network_zone">

Creates a Network Zone<br />* For an IP Network Zone, you must define either `gateways` or `proxies`.<br />* For a Dynamic Network Zone, you must define at least one of the following: `asns`, `locations`, or `proxyType`.<br />* For an Enhanced Dynamic Network Zone, you must define at least one of the following: `asns`, `locations`, or `ipServiceCategories`.<br />&gt; **Note:** To view all properties for an Enhanced Dynamic Network Zone, select `DYNAMIC_V2` from the `type` dropdown list.

```sql
INSERT INTO okta.zones.network_zones (
name,
status,
type,
usage,
subdomain
)
SELECT 
'{{ name }}' /* required */,
'{{ status }}',
'{{ type }}' /* required */,
'{{ usage }}',
'{{ subdomain }}'
RETURNING
id,
name,
_links,
created,
lastUpdated,
status,
system,
type,
usage
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: network_zones
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the network_zones resource.
    - name: name
      value: "{{ name }}"
      description: |
        Unique name for this Network Zone
    - name: status
      value: "{{ status }}"
      description: |
        Network Zone status
      valid_values: ['ACTIVE', 'INACTIVE']
    - name: type
      value: "{{ type }}"
      description: |
        The type of Network Zone
      valid_values: ['DYNAMIC', 'IP', 'DYNAMIC_V2']
    - name: usage
      value: "{{ usage }}"
      description: |
        The usage of the Network Zone
      valid_values: ['BLOCKLIST', 'POLICY']
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_network_zone"
    values={[
        { label: 'replace_network_zone', value: 'replace_network_zone' }
    ]}
>
<TabItem value="replace_network_zone">

Replaces a Network Zone by `zoneId`. The replaced Network Zone type must be the same as the existing type.<br />You can replace the usage (`POLICY`, `BLOCKLIST`) of a Network Zone by updating the `usage` attribute.<br /><br />**IP exempt zone**<br /><br />If you have the IP exempt zone feature enabled, you can allow traffic from specific gateway IPs irrespective of Okta ThreatInsight configurations, blocked network zones, or IP change events within Identity Threat Protection with Okta AI.<br /><br /><br /><br />When you enable this feature, Okta creates a zone called `DefaultExemptIpZone`. Gateway IPs that you add to this zone always have access to Okta resources. See [IP exempt zone](https://help.okta.com/okta_help.htm?type=oie&id=csh-about-ip-exempt-zone).<br /><br />&gt; **Note:** You can't add trusted proxy IPs to this zone, delete the zone, or create additional exempt IP zones.

```sql
REPLACE okta.zones.network_zones
SET 
name = '{{ name }}',
status = '{{ status }}',
type = '{{ type }}',
usage = '{{ usage }}'
WHERE 
zoneId = '{{ zoneId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND name = '{{ name }}' --required
AND type = '{{ type }}' --required
RETURNING
id,
name,
_links,
created,
lastUpdated,
status,
system,
type,
usage;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_network_zone"
    values={[
        { label: 'delete_network_zone', value: 'delete_network_zone' }
    ]}
>
<TabItem value="delete_network_zone">

Deletes a Network Zone by `zoneId`<br />&gt; **Notes:**<br />&gt; * You can't delete a Network Zone that's used by a [Policy](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/policy/) or [Rule](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/policy/#tag/Policy/operation/listPolicyRules).<br />&gt; * For Okta Identity Engine orgs, you can't delete a Network Zone with an ACTIVE `status`. &lt;x-lifecycle class="oie"&gt;&lt;/x-lifecycle&gt;

```sql
DELETE FROM okta.zones.network_zones
WHERE zoneId = '{{ zoneId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_network_zone"
    values={[
        { label: 'activate_network_zone', value: 'activate_network_zone' },
        { label: 'deactivate_network_zone', value: 'deactivate_network_zone' }
    ]}
>
<TabItem value="activate_network_zone">

Activates a Network Zone by `zoneId`

```sql
EXEC okta.zones.network_zones.activate_network_zone 
@zoneId='{{ zoneId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_network_zone">

Deactivates a Network Zone by `zoneId`

```sql
EXEC okta.zones.network_zones.deactivate_network_zone 
@zoneId='{{ zoneId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
