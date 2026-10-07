--- 
title: interclient_allowed_apps
hide_title: false
hide_table_of_contents: false
keywords:
  - interclient_allowed_apps
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

Creates, updates, deletes, gets or lists an <code>interclient_allowed_apps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="interclient_allowed_apps" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.apps.interclient_allowed_apps" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_interclient_allowed_applications"
    values={[
        { label: 'list_interclient_allowed_applications', value: 'list_interclient_allowed_applications' }
    ]}
>
<TabItem value="list_interclient_allowed_applications">

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
    <td><CopyableCode code="interclient_allowed_application" /></td>
    <td><code>string</code></td>
    <td></td>
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
    <td><a href="#list_interclient_allowed_applications"><CopyableCode code="list_interclient_allowed_applications" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all apps allowed by this app to request interclient SSO using the interclient token</td>
</tr>
<tr>
    <td><a href="#create_interclient_trust_mapping"><CopyableCode code="create_interclient_trust_mapping" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a mapping between the target app and an allowed app for interclient SSO using the interclient token</td>
</tr>
<tr>
    <td><a href="#delete_interclient_trust_mapping"><CopyableCode code="delete_interclient_trust_mapping" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-allowedAppId"><code>allowedAppId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes the mapping between the target app and an allowed app</td>
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
<tr id="parameter-allowedAppId">
    <td><CopyableCode code="allowedAppId" /></td>
    <td><code>string</code></td>
    <td>App ID of the allowed app instance to delete mapping from the target app. (example: 0oa1elyw9EAkUNUrW0g5)</td>
</tr>
<tr id="parameter-appId">
    <td><CopyableCode code="appId" /></td>
    <td><code>string</code></td>
    <td>Application ID</td>
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
    defaultValue="list_interclient_allowed_applications"
    values={[
        { label: 'list_interclient_allowed_applications', value: 'list_interclient_allowed_applications' }
    ]}
>
<TabItem value="list_interclient_allowed_applications">

Lists all apps allowed by this app to request interclient SSO using the interclient token

```sql
SELECT
interclient_allowed_application
FROM okta.apps.interclient_allowed_apps
WHERE appId = '{{ appId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_interclient_trust_mapping"
    values={[
        { label: 'create_interclient_trust_mapping', value: 'create_interclient_trust_mapping' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_interclient_trust_mapping">

Creates a mapping between the target app and an allowed app for interclient SSO using the interclient token

```sql
INSERT INTO okta.apps.interclient_allowed_apps (
id,
appId,
subdomain
)
SELECT 
'{{ id }}',
'{{ appId }}',
'{{ subdomain }}'
RETURNING
id,
appInstanceId,
created,
lastUpdated,
lastUpdatedBy,
orgId,
trustedAppInstanceId
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: interclient_allowed_apps
  props:
    - name: appId
      value: "{{ appId }}"
      description: Required parameter for the interclient_allowed_apps resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the interclient_allowed_apps resource.
    - name: id
      value: "{{ id }}"
      description: |
        App ID of the allowed app
`}</CodeBlock>

</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_interclient_trust_mapping"
    values={[
        { label: 'delete_interclient_trust_mapping', value: 'delete_interclient_trust_mapping' }
    ]}
>
<TabItem value="delete_interclient_trust_mapping">

Deletes the mapping between the target app and an allowed app

```sql
DELETE FROM okta.apps.interclient_allowed_apps
WHERE appId = '{{ appId }}' --required
AND allowedAppId = '{{ allowedAppId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
