--- 
title: policies
hide_title: false
hide_table_of_contents: false
keywords:
  - policies
  - authorizationservers
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

Creates, updates, deletes, gets or lists a <code>policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="policies" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.authorizationservers.policies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_authorization_server_policy"
    values={[
        { label: 'get_authorization_server_policy', value: 'get_authorization_server_policy' },
        { label: 'list_authorization_server_policies', value: 'list_authorization_server_policies' }
    ]}
>
<TabItem value="get_authorization_server_policy">

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
    <td>ID of the Policy</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the Policy</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="conditions" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the Policy was created</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the Policy</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the Policy was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="priority" /></td>
    <td><code>integer</code></td>
    <td>Specifies the order in which this Policy is evaluated in relation to the other Policies in a custom authorization server</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Specifies whether requests have access to this Policy (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Specifies whether Okta created this Policy</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Indicates that the Policy is an authorization server Policy (OAUTH_AUTHORIZATION_POLICY)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_authorization_server_policies">

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
    <td>ID of the Policy</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the Policy</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="conditions" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the Policy was created</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the Policy</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the Policy was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="priority" /></td>
    <td><code>integer</code></td>
    <td>Specifies the order in which this Policy is evaluated in relation to the other Policies in a custom authorization server</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Specifies whether requests have access to this Policy (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Specifies whether Okta created this Policy</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Indicates that the Policy is an authorization server Policy (OAUTH_AUTHORIZATION_POLICY)</td>
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
    <td><a href="#get_authorization_server_policy"><CopyableCode code="get_authorization_server_policy" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a policy</td>
</tr>
<tr>
    <td><a href="#list_authorization_server_policies"><CopyableCode code="list_authorization_server_policies" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all policies</td>
</tr>
<tr>
    <td><a href="#create_authorization_server_policy"><CopyableCode code="create_authorization_server_policy" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a policy</td>
</tr>
<tr>
    <td><a href="#replace_authorization_server_policy"><CopyableCode code="replace_authorization_server_policy" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a policy</td>
</tr>
<tr>
    <td><a href="#delete_authorization_server_policy"><CopyableCode code="delete_authorization_server_policy" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a policy</td>
</tr>
<tr>
    <td><a href="#activate_authorization_server_policy"><CopyableCode code="activate_authorization_server_policy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates an authorization server policy</td>
</tr>
<tr>
    <td><a href="#deactivate_authorization_server_policy"><CopyableCode code="deactivate_authorization_server_policy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates an authorization server policy</td>
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
<tr id="parameter-authServerId">
    <td><CopyableCode code="authServerId" /></td>
    <td><code>string</code></td>
    <td>`id` of the Authorization Server</td>
</tr>
<tr id="parameter-policyId">
    <td><CopyableCode code="policyId" /></td>
    <td><code>string</code></td>
    <td>`id` of the policy</td>
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
    defaultValue="get_authorization_server_policy"
    values={[
        { label: 'get_authorization_server_policy', value: 'get_authorization_server_policy' },
        { label: 'list_authorization_server_policies', value: 'list_authorization_server_policies' }
    ]}
>
<TabItem value="get_authorization_server_policy">

Retrieves a policy

```sql
SELECT
id,
name,
_links,
conditions,
created,
description,
lastUpdated,
priority,
status,
system,
type
FROM okta.authorizationservers.policies
WHERE authServerId = '{{ authServerId }}' -- required
AND policyId = '{{ policyId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_authorization_server_policies">

Lists all policies

```sql
SELECT
id,
name,
_links,
conditions,
created,
description,
lastUpdated,
priority,
status,
system,
type
FROM okta.authorizationservers.policies
WHERE authServerId = '{{ authServerId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_authorization_server_policy"
    values={[
        { label: 'create_authorization_server_policy', value: 'create_authorization_server_policy' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_authorization_server_policy">

Creates a policy

```sql
INSERT INTO okta.authorizationservers.policies (
id,
type,
name,
conditions,
description,
priority,
status,
system,
authServerId,
subdomain
)
SELECT 
'{{ id }}',
'{{ type }}',
'{{ name }}',
'{{ conditions }}',
'{{ description }}',
{{ priority }},
'{{ status }}',
{{ system }},
'{{ authServerId }}',
'{{ subdomain }}'
RETURNING
id,
name,
_links,
conditions,
created,
description,
lastUpdated,
priority,
status,
system,
type
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: policies
  props:
    - name: authServerId
      value: "{{ authServerId }}"
      description: Required parameter for the policies resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the policies resource.
    - name: id
      value: "{{ id }}"
      description: |
        ID of the Policy
    - name: type
      value: "{{ type }}"
      description: |
        Indicates that the Policy is an authorization server Policy
      valid_values: ['OAUTH_AUTHORIZATION_POLICY']
    - name: name
      value: "{{ name }}"
      description: |
        Name of the Policy
    - name: conditions
      value:
        clients:
          include:
            - "{{ include }}"
    - name: description
      value: "{{ description }}"
      description: |
        Description of the Policy
    - name: priority
      value: {{ priority }}
      description: |
        Specifies the order in which this Policy is evaluated in relation to the other Policies in a custom authorization server
    - name: status
      value: "{{ status }}"
      description: |
        Specifies whether requests have access to this Policy
      valid_values: ['ACTIVE', 'INACTIVE']
    - name: system
      value: {{ system }}
      description: |
        Specifies whether Okta created this Policy
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_authorization_server_policy"
    values={[
        { label: 'replace_authorization_server_policy', value: 'replace_authorization_server_policy' }
    ]}
>
<TabItem value="replace_authorization_server_policy">

Replaces a policy

```sql
REPLACE okta.authorizationservers.policies
SET 
id = '{{ id }}',
type = '{{ type }}',
name = '{{ name }}',
conditions = '{{ conditions }}',
description = '{{ description }}',
priority = {{ priority }},
status = '{{ status }}',
system = {{ system }}
WHERE 
authServerId = '{{ authServerId }}' --required
AND policyId = '{{ policyId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
conditions,
created,
description,
lastUpdated,
priority,
status,
system,
type;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_authorization_server_policy"
    values={[
        { label: 'delete_authorization_server_policy', value: 'delete_authorization_server_policy' }
    ]}
>
<TabItem value="delete_authorization_server_policy">

Deletes a policy

```sql
DELETE FROM okta.authorizationservers.policies
WHERE authServerId = '{{ authServerId }}' --required
AND policyId = '{{ policyId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_authorization_server_policy"
    values={[
        { label: 'activate_authorization_server_policy', value: 'activate_authorization_server_policy' },
        { label: 'deactivate_authorization_server_policy', value: 'deactivate_authorization_server_policy' }
    ]}
>
<TabItem value="activate_authorization_server_policy">

Activates an authorization server policy

```sql
EXEC okta.authorizationservers.policies.activate_authorization_server_policy 
@authServerId='{{ authServerId }}' --required, 
@policyId='{{ policyId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_authorization_server_policy">

Deactivates an authorization server policy

```sql
EXEC okta.authorizationservers.policies.deactivate_authorization_server_policy 
@authServerId='{{ authServerId }}' --required, 
@policyId='{{ policyId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
