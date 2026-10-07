--- 
title: connections
hide_title: false
hide_table_of_contents: false
keywords:
  - connections
  - apps
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

Creates, updates, deletes, gets or lists a <code>connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="connections" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.apps.connections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_default_provisioning_connection_for_application"
    values={[
        { label: 'get_default_provisioning_connection_for_application', value: 'get_default_provisioning_connection_for_application' }
    ]}
>
<TabItem value="get_default_provisioning_connection_for_application">

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
    <td><CopyableCode code="authScheme" /></td>
    <td><code>string</code></td>
    <td>A token is used to authenticate with the app. This property is only returned for the `TOKEN` authentication scheme. (TOKEN)</td>
</tr>
<tr>
    <td><CopyableCode code="baseUrl" /></td>
    <td><code>string</code></td>
    <td>Base URL</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Provisioning connection status (DISABLED, ENABLED, UNKNOWN) (default: DISABLED)</td>
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
    <td><a href="#get_default_provisioning_connection_for_application"><CopyableCode code="get_default_provisioning_connection_for_application" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the default provisioning connection for an app</td>
</tr>
<tr>
    <td><a href="#update_default_provisioning_connection_for_application"><CopyableCode code="update_default_provisioning_connection_for_application" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-profile"><code>profile</code></a></td>
    <td><a href="#parameter-activate"><code>activate</code></a></td>
    <td>Updates the default provisioning connection for an app</td>
</tr>
<tr>
    <td><a href="#activate_default_provisioning_connection_for_application"><CopyableCode code="activate_default_provisioning_connection_for_application" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates the default provisioning connection for an app</td>
</tr>
<tr>
    <td><a href="#deactivate_default_provisioning_connection_for_application"><CopyableCode code="deactivate_default_provisioning_connection_for_application" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates the default provisioning connection for an app</td>
</tr>
<tr>
    <td><a href="#verify_provisioning_connection_for_application"><CopyableCode code="verify_provisioning_connection_for_application" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-code"><code>code</code></a>, <a href="#parameter-state"><code>state</code></a></td>
    <td>Verifies the OAuth 2.0-based connection as part of the OAuth 2.0 consent flow. The validation of the consent flow is the last step of the provisioning setup for an OAuth 2.0-based connection.<br />Currently, this operation only supports `office365`,`google`, `zoomus`, and `slack` apps.<br /></td>
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
<tr id="parameter-appId">
    <td><CopyableCode code="appId" /></td>
    <td><code>string</code></td>
    <td>Application ID</td>
</tr>
<tr id="parameter-appName">
    <td><CopyableCode code="appName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-activate">
    <td><CopyableCode code="activate" /></td>
    <td><code>string</code></td>
    <td>Activates the provisioning connection</td>
</tr>
<tr id="parameter-code">
    <td><CopyableCode code="code" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-state">
    <td><CopyableCode code="state" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_default_provisioning_connection_for_application"
    values={[
        { label: 'get_default_provisioning_connection_for_application', value: 'get_default_provisioning_connection_for_application' }
    ]}
>
<TabItem value="get_default_provisioning_connection_for_application">

Retrieves the default provisioning connection for an app

```sql
SELECT
_links,
authScheme,
baseUrl,
profile,
status
FROM okta.apps.connections
WHERE appId = '{{ appId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_default_provisioning_connection_for_application"
    values={[
        { label: 'update_default_provisioning_connection_for_application', value: 'update_default_provisioning_connection_for_application' }
    ]}
>
<TabItem value="update_default_provisioning_connection_for_application">

Updates the default provisioning connection for an app

```sql
UPDATE okta.apps.connections
SET 
baseUrl = '{{ baseUrl }}',
profile = '{{ profile }}'
WHERE 
appId = '{{ appId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND profile = '{{ profile }}' --required
AND activate = '{{ activate}}'
RETURNING
_links,
authScheme,
baseUrl,
profile,
status;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_default_provisioning_connection_for_application"
    values={[
        { label: 'activate_default_provisioning_connection_for_application', value: 'activate_default_provisioning_connection_for_application' },
        { label: 'deactivate_default_provisioning_connection_for_application', value: 'deactivate_default_provisioning_connection_for_application' },
        { label: 'verify_provisioning_connection_for_application', value: 'verify_provisioning_connection_for_application' }
    ]}
>
<TabItem value="activate_default_provisioning_connection_for_application">

Activates the default provisioning connection for an app

```sql
EXEC okta.apps.connections.activate_default_provisioning_connection_for_application 
@appId='{{ appId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_default_provisioning_connection_for_application">

Deactivates the default provisioning connection for an app

```sql
EXEC okta.apps.connections.deactivate_default_provisioning_connection_for_application 
@appId='{{ appId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="verify_provisioning_connection_for_application">

Verifies the OAuth 2.0-based connection as part of the OAuth 2.0 consent flow. The validation of the consent flow is the last step of the provisioning setup for an OAuth 2.0-based connection.<br />Currently, this operation only supports `office365`,`google`, `zoomus`, and `slack` apps.<br />

```sql
EXEC okta.apps.connections.verify_provisioning_connection_for_application 
@appName='{{ appName }}' --required, 
@appId='{{ appId }}' --required, 
@subdomain='{{ subdomain }}' --required, 
@code='{{ code }}', 
@state='{{ state }}'
;
```
</TabItem>
</Tabs>
