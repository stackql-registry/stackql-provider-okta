--- 
title: ssf_receivers
hide_title: false
hide_table_of_contents: false
keywords:
  - ssf_receivers
  - security_events_providers
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

Creates, updates, deletes, gets or lists a <code>ssf_receivers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="ssf_receivers" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.security_events_providers.ssf_receivers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_security_events_provider_instance"
    values={[
        { label: 'get_security_events_provider_instance', value: 'get_security_events_provider_instance' },
        { label: 'list_security_events_provider_instances', value: 'list_security_events_provider_instances' }
    ]}
>
<TabItem value="get_security_events_provider_instance">

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
    <td>The unique identifier of this instance (example: sse1qg25RpusjUP6m0g5)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the security events provider instance (example: Target SSF Provider)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="settings" /></td>
    <td><code>object</code></td>
    <td>Information about the security events provider for signal ingestion (title: Security events provider settings)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Indicates whether the security events provider is active or not (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The app type of the security events provider (example: okta)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_security_events_provider_instances">

The security events provider response

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
    <td>The unique identifier of this instance (example: sse1qg25RpusjUP6m0g5)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the security events provider instance (example: Target SSF Provider)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="settings" /></td>
    <td><code>object</code></td>
    <td>Information about the security events provider for signal ingestion (title: Security events provider settings)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Indicates whether the security events provider is active or not (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The app type of the security events provider (example: okta)</td>
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
    <td><a href="#get_security_events_provider_instance"><CopyableCode code="get_security_events_provider_instance" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-securityEventProviderId"><code>securityEventProviderId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the security events provider instance specified by `id`</td>
</tr>
<tr>
    <td><a href="#list_security_events_provider_instances"><CopyableCode code="list_security_events_provider_instances" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all security events provider instances</td>
</tr>
<tr>
    <td><a href="#create_security_events_provider_instance"><CopyableCode code="create_security_events_provider_instance" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-settings"><code>settings</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Creates a security events provider instance</td>
</tr>
<tr>
    <td><a href="#replace_security_events_provider_instance"><CopyableCode code="replace_security_events_provider_instance" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-securityEventProviderId"><code>securityEventProviderId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-settings"><code>settings</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Replaces a security events provider instance specified by `id`</td>
</tr>
<tr>
    <td><a href="#delete_security_events_provider_instance"><CopyableCode code="delete_security_events_provider_instance" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-securityEventProviderId"><code>securityEventProviderId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a security events provider instance specified by `id`</td>
</tr>
<tr>
    <td><a href="#activate_security_events_provider_instance"><CopyableCode code="activate_security_events_provider_instance" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-securityEventProviderId"><code>securityEventProviderId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a security events provider instance by setting its status to `ACTIVE`.<br />This operation resumes the flow of events from the security events provider to Okta.</td>
</tr>
<tr>
    <td><a href="#deactivate_security_events_provider_instance"><CopyableCode code="deactivate_security_events_provider_instance" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-securityEventProviderId"><code>securityEventProviderId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates a security events provider instance by setting its status to `INACTIVE`.<br />This operation stops the flow of events from the security events provider to Okta.</td>
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
<tr id="parameter-securityEventProviderId">
    <td><CopyableCode code="securityEventProviderId" /></td>
    <td><code>string</code></td>
    <td>`id` of the security events provider instance</td>
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
    defaultValue="get_security_events_provider_instance"
    values={[
        { label: 'get_security_events_provider_instance', value: 'get_security_events_provider_instance' },
        { label: 'list_security_events_provider_instances', value: 'list_security_events_provider_instances' }
    ]}
>
<TabItem value="get_security_events_provider_instance">

Retrieves the security events provider instance specified by `id`

```sql
SELECT
id,
name,
_links,
settings,
status,
type
FROM okta.security_events_providers.ssf_receivers
WHERE securityEventProviderId = '{{ securityEventProviderId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_security_events_provider_instances">

Lists all security events provider instances

```sql
SELECT
id,
name,
_links,
settings,
status,
type
FROM okta.security_events_providers.ssf_receivers
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_security_events_provider_instance"
    values={[
        { label: 'create_security_events_provider_instance', value: 'create_security_events_provider_instance' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_security_events_provider_instance">

Creates a security events provider instance

```sql
INSERT INTO okta.security_events_providers.ssf_receivers (
name,
settings,
type,
subdomain
)
SELECT 
'{{ name }}' /* required */,
'{{ settings }}' /* required */,
'{{ type }}' /* required */,
'{{ subdomain }}'
RETURNING
id,
name,
_links,
settings,
status,
type
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: ssf_receivers
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the ssf_receivers resource.
    - name: name
      value: "{{ name }}"
      description: |
        The name of the security events provider instance
    - name: settings
      description: |
        Information about the security events provider for signal ingestion
      value:
        well_known_url: "{{ well_known_url }}"
        issuer: "{{ issuer }}"
        jwks_url: "{{ jwks_url }}"
    - name: type
      value: "{{ type }}"
      description: |
        The app type of the security events provider
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_security_events_provider_instance"
    values={[
        { label: 'replace_security_events_provider_instance', value: 'replace_security_events_provider_instance' }
    ]}
>
<TabItem value="replace_security_events_provider_instance">

Replaces a security events provider instance specified by `id`

```sql
REPLACE okta.security_events_providers.ssf_receivers
SET 
name = '{{ name }}',
settings = '{{ settings }}',
type = '{{ type }}'
WHERE 
securityEventProviderId = '{{ securityEventProviderId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND name = '{{ name }}' --required
AND settings = '{{ settings }}' --required
AND type = '{{ type }}' --required
RETURNING
id,
name,
_links,
settings,
status,
type;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_security_events_provider_instance"
    values={[
        { label: 'delete_security_events_provider_instance', value: 'delete_security_events_provider_instance' }
    ]}
>
<TabItem value="delete_security_events_provider_instance">

Deletes a security events provider instance specified by `id`

```sql
DELETE FROM okta.security_events_providers.ssf_receivers
WHERE securityEventProviderId = '{{ securityEventProviderId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_security_events_provider_instance"
    values={[
        { label: 'activate_security_events_provider_instance', value: 'activate_security_events_provider_instance' },
        { label: 'deactivate_security_events_provider_instance', value: 'deactivate_security_events_provider_instance' }
    ]}
>
<TabItem value="activate_security_events_provider_instance">

Activates a security events provider instance by setting its status to `ACTIVE`.<br />This operation resumes the flow of events from the security events provider to Okta.

```sql
EXEC okta.security_events_providers.ssf_receivers.activate_security_events_provider_instance 
@securityEventProviderId='{{ securityEventProviderId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_security_events_provider_instance">

Deactivates a security events provider instance by setting its status to `INACTIVE`.<br />This operation stops the flow of events from the security events provider to Okta.

```sql
EXEC okta.security_events_providers.ssf_receivers.deactivate_security_events_provider_instance 
@securityEventProviderId='{{ securityEventProviderId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
