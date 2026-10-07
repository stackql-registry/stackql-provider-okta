--- 
title: rules
hide_title: false
hide_table_of_contents: false
keywords:
  - rules
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

Creates, updates, deletes, gets or lists a <code>rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="rules" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.authorizationservers.rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_authorization_server_policy_rule"
    values={[
        { label: 'get_authorization_server_policy_rule', value: 'get_authorization_server_policy_rule' },
        { label: 'list_authorization_server_policy_rules', value: 'list_authorization_server_policy_rules' }
    ]}
>
<TabItem value="get_authorization_server_policy_rule">

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
    <td>Identifier of the rule</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the rule</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="actions" /></td>
    <td><code>string</code></td>
    <td>(opaque JSON object)</td>
</tr>
<tr>
    <td><CopyableCode code="conditions" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the rule was created</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the rule was last modified</td>
</tr>
<tr>
    <td><CopyableCode code="priority" /></td>
    <td><code>integer</code></td>
    <td>Priority of the rule</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the rule (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Set to `true` for system rules. You can't delete system rules.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Rule type (RESOURCE_ACCESS)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_authorization_server_policy_rules">

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
    <td>Identifier of the rule</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the rule</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="actions" /></td>
    <td><code>string</code></td>
    <td>(opaque JSON object)</td>
</tr>
<tr>
    <td><CopyableCode code="conditions" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the rule was created</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the rule was last modified</td>
</tr>
<tr>
    <td><CopyableCode code="priority" /></td>
    <td><code>integer</code></td>
    <td>Priority of the rule</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the rule (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Set to `true` for system rules. You can't delete system rules.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Rule type (RESOURCE_ACCESS)</td>
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
    <td><a href="#get_authorization_server_policy_rule"><CopyableCode code="get_authorization_server_policy_rule" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-ruleId"><code>ruleId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a policy rule by `ruleId`</td>
</tr>
<tr>
    <td><a href="#list_authorization_server_policy_rules"><CopyableCode code="list_authorization_server_policy_rules" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all policy rules for the specified Custom Authorization Server and Policy</td>
</tr>
<tr>
    <td><a href="#create_authorization_server_policy_rule"><CopyableCode code="create_authorization_server_policy_rule" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-conditions"><code>conditions</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Creates a policy rule for the specified Custom Authorization Server and Policy</td>
</tr>
<tr>
    <td><a href="#replace_authorization_server_policy_rule"><CopyableCode code="replace_authorization_server_policy_rule" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-ruleId"><code>ruleId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-conditions"><code>conditions</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Replaces the configuration of the Policy Rule defined in the specified Custom Authorization Server and Policy</td>
</tr>
<tr>
    <td><a href="#delete_authorization_server_policy_rule"><CopyableCode code="delete_authorization_server_policy_rule" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-ruleId"><code>ruleId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a Policy Rule defined in the specified Custom Authorization Server and Policy</td>
</tr>
<tr>
    <td><a href="#activate_authorization_server_policy_rule"><CopyableCode code="activate_authorization_server_policy_rule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-ruleId"><code>ruleId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates an authorization server policy rule</td>
</tr>
<tr>
    <td><a href="#deactivate_authorization_server_policy_rule"><CopyableCode code="deactivate_authorization_server_policy_rule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-authServerId"><code>authServerId</code></a>, <a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-ruleId"><code>ruleId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates an authorization server policy rule</td>
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
<tr id="parameter-ruleId">
    <td><CopyableCode code="ruleId" /></td>
    <td><code>string</code></td>
    <td>`id` of the policy rule</td>
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
    defaultValue="get_authorization_server_policy_rule"
    values={[
        { label: 'get_authorization_server_policy_rule', value: 'get_authorization_server_policy_rule' },
        { label: 'list_authorization_server_policy_rules', value: 'list_authorization_server_policy_rules' }
    ]}
>
<TabItem value="get_authorization_server_policy_rule">

Retrieves a policy rule by `ruleId`

```sql
SELECT
id,
name,
_links,
actions,
conditions,
created,
lastUpdated,
priority,
status,
system,
type
FROM okta.authorizationservers.rules
WHERE authServerId = '{{ authServerId }}' -- required
AND policyId = '{{ policyId }}' -- required
AND ruleId = '{{ ruleId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_authorization_server_policy_rules">

Lists all policy rules for the specified Custom Authorization Server and Policy

```sql
SELECT
id,
name,
_links,
actions,
conditions,
created,
lastUpdated,
priority,
status,
system,
type
FROM okta.authorizationservers.rules
WHERE authServerId = '{{ authServerId }}' -- required
AND policyId = '{{ policyId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_authorization_server_policy_rule"
    values={[
        { label: 'create_authorization_server_policy_rule', value: 'create_authorization_server_policy_rule' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_authorization_server_policy_rule">

Creates a policy rule for the specified Custom Authorization Server and Policy

```sql
INSERT INTO okta.authorizationservers.rules (
actions,
conditions,
name,
priority,
status,
system,
type,
authServerId,
policyId,
subdomain
)
SELECT 
'{{ actions }}',
'{{ conditions }}' /* required */,
'{{ name }}' /* required */,
{{ priority }},
'{{ status }}',
{{ system }},
'{{ type }}' /* required */,
'{{ authServerId }}',
'{{ policyId }}',
'{{ subdomain }}'
RETURNING
id,
name,
_links,
actions,
conditions,
created,
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
- name: rules
  props:
    - name: authServerId
      value: "{{ authServerId }}"
      description: Required parameter for the rules resource.
    - name: policyId
      value: "{{ policyId }}"
      description: Required parameter for the rules resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the rules resource.
    - name: actions
      value: "{{ actions }}"
      description: |
        (opaque JSON object)
    - name: conditions
      value:
        grantTypes:
          include:
            - "{{ include }}"
        people:
          groups:
            include:
              - "{{ include }}"
          users:
            include:
              - "{{ include }}"
        scopes:
          include:
            - "{{ include }}"
    - name: name
      value: "{{ name }}"
      description: |
        Name of the rule
    - name: priority
      value: {{ priority }}
      description: |
        Priority of the rule
    - name: status
      value: "{{ status }}"
      description: |
        Status of the rule
      valid_values: ['ACTIVE', 'INACTIVE']
    - name: system
      value: {{ system }}
      description: |
        Set to \`true\` for system rules. You can't delete system rules.
    - name: type
      value: "{{ type }}"
      description: |
        Rule type
      valid_values: ['RESOURCE_ACCESS']
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_authorization_server_policy_rule"
    values={[
        { label: 'replace_authorization_server_policy_rule', value: 'replace_authorization_server_policy_rule' }
    ]}
>
<TabItem value="replace_authorization_server_policy_rule">

Replaces the configuration of the Policy Rule defined in the specified Custom Authorization Server and Policy

```sql
REPLACE okta.authorizationservers.rules
SET 
actions = '{{ actions }}',
conditions = '{{ conditions }}',
name = '{{ name }}',
priority = {{ priority }},
status = '{{ status }}',
system = {{ system }},
type = '{{ type }}'
WHERE 
authServerId = '{{ authServerId }}' --required
AND policyId = '{{ policyId }}' --required
AND ruleId = '{{ ruleId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND name = '{{ name }}' --required
AND conditions = '{{ conditions }}' --required
AND type = '{{ type }}' --required
RETURNING
id,
name,
_links,
actions,
conditions,
created,
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
    defaultValue="delete_authorization_server_policy_rule"
    values={[
        { label: 'delete_authorization_server_policy_rule', value: 'delete_authorization_server_policy_rule' }
    ]}
>
<TabItem value="delete_authorization_server_policy_rule">

Deletes a Policy Rule defined in the specified Custom Authorization Server and Policy

```sql
DELETE FROM okta.authorizationservers.rules
WHERE authServerId = '{{ authServerId }}' --required
AND policyId = '{{ policyId }}' --required
AND ruleId = '{{ ruleId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_authorization_server_policy_rule"
    values={[
        { label: 'activate_authorization_server_policy_rule', value: 'activate_authorization_server_policy_rule' },
        { label: 'deactivate_authorization_server_policy_rule', value: 'deactivate_authorization_server_policy_rule' }
    ]}
>
<TabItem value="activate_authorization_server_policy_rule">

Activates an authorization server policy rule

```sql
EXEC okta.authorizationservers.rules.activate_authorization_server_policy_rule 
@authServerId='{{ authServerId }}' --required, 
@policyId='{{ policyId }}' --required, 
@ruleId='{{ ruleId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_authorization_server_policy_rule">

Deactivates an authorization server policy rule

```sql
EXEC okta.authorizationservers.rules.deactivate_authorization_server_policy_rule 
@authServerId='{{ authServerId }}' --required, 
@policyId='{{ policyId }}' --required, 
@ruleId='{{ ruleId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
