--- 
title: policies
hide_title: false
hide_table_of_contents: false
keywords:
  - policies
  - policies
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
<tr><td><b>Id</b></td><td><CopyableCode code="okta.policies.policies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_policy"
    values={[
        { label: 'get_policy', value: 'get_policy' },
        { label: 'list_policies', value: 'list_policies' }
    ]}
>
<TabItem value="get_policy">

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
    <td>Identifier of the policy (default: Assigned)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the policy</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the policy was created (default: Assigned)</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the policy</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the policy was last modified (default: Assigned)</td>
</tr>
<tr>
    <td><CopyableCode code="priority" /></td>
    <td><code>integer</code></td>
    <td>Specifies the order in which this policy is evaluated in relation to the other policies (default: Last / Lowest Priority, for example `1`)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Whether or not the policy is active. Use the `activate` query parameter to set the status of a policy. (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Specifies whether Okta created the policy</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>All Okta orgs contain only one IdP discovery policy with an immutable default rule routing to your org's sign-in page. All Okta orgs also contain just one entity risk policy, one session protection policy, and one identity claims sourcing policy. (ACCESS_POLICY, ENTITY_RISK, IDP_DISCOVERY, MFA_ENROLL, OKTA_SIGN_ON, PASSWORD, POST_AUTH_SESSION, PROFILE_ENROLLMENT, DEVICE_SIGNAL_COLLECTION, SESSION_VIOLATION_DETECTION, CLIENT_UPDATE, IDENTITY_CLAIM_SOURCING)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_policies">

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
    <td>Identifier of the policy (default: Assigned)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the policy</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the policy was created (default: Assigned)</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the policy</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the policy was last modified (default: Assigned)</td>
</tr>
<tr>
    <td><CopyableCode code="priority" /></td>
    <td><code>integer</code></td>
    <td>Specifies the order in which this policy is evaluated in relation to the other policies (default: Last / Lowest Priority, for example `1`)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Whether or not the policy is active. Use the `activate` query parameter to set the status of a policy. (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Specifies whether Okta created the policy</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>All Okta orgs contain only one IdP discovery policy with an immutable default rule routing to your org's sign-in page. All Okta orgs also contain just one entity risk policy, one session protection policy, and one identity claims sourcing policy. (ACCESS_POLICY, ENTITY_RISK, IDP_DISCOVERY, MFA_ENROLL, OKTA_SIGN_ON, PASSWORD, POST_AUTH_SESSION, PROFILE_ENROLLMENT, DEVICE_SIGNAL_COLLECTION, SESSION_VIOLATION_DETECTION, CLIENT_UPDATE, IDENTITY_CLAIM_SOURCING)</td>
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
    <td><a href="#get_policy"><CopyableCode code="get_policy" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Retrieves a policy</td>
</tr>
<tr>
    <td><a href="#list_policies"><CopyableCode code="list_policies" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-type"><code>type</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-status"><code>status</code></a>, <a href="#parameter-q"><code>q</code></a>, <a href="#parameter-expand"><code>expand</code></a>, <a href="#parameter-sortBy"><code>sortBy</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-resourceId"><code>resourceId</code></a>, <a href="#parameter-after"><code>after</code></a></td>
    <td>Lists all policies with the specified type</td>
</tr>
<tr>
    <td><a href="#create_policy"><CopyableCode code="create_policy" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td><a href="#parameter-activate"><code>activate</code></a></td>
    <td>Creates a policy. There are many types of policies that you can create. See [Policies](https://developer.okta.com/docs/concepts/policies/) for an overview of the types of policies available and links to more indepth information.</td>
</tr>
<tr>
    <td><a href="#replace_policy"><CopyableCode code="replace_policy" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Replaces the properties of a policy identified by `policyId`</td>
</tr>
<tr>
    <td><a href="#delete_policy"><CopyableCode code="delete_policy" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a policy</td>
</tr>
<tr>
    <td><a href="#create_policy_simulation"><CopyableCode code="create_policy_simulation" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Creates a policy or policy rule simulation. The access simulation evaluates policy and policy rules based on the existing policy rule configuration.<br />The evaluation result simulates what the real-world authentication flow is and what policy rules have been applied or matched to the authentication flow.</td>
</tr>
<tr>
    <td><a href="#clone_policy"><CopyableCode code="clone_policy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Clones an existing policy</td>
</tr>
<tr>
    <td><a href="#activate_policy"><CopyableCode code="activate_policy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a policy</td>
</tr>
<tr>
    <td><a href="#deactivate_policy"><CopyableCode code="deactivate_policy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates a policy</td>
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
<tr id="parameter-type">
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Specifies the type of policy to return</td>
</tr>
<tr id="parameter-activate">
    <td><CopyableCode code="activate" /></td>
    <td><code>string</code></td>
    <td>This query parameter is only valid for Classic Engine orgs.</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>End page cursor for pagination, see [Pagination](https://developer.okta.com/docs/api/#pagination)</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>Use `expand=EVALUATED` to include a list of evaluated but not matched policies and policy rules. Use `expand=RULE` to include details about why a rule condition wasn't matched.</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>string</code></td>
    <td>Defines the number of policies returned, see [Pagination](https://developer.okta.com/docs/api/#pagination)</td>
</tr>
<tr id="parameter-q">
    <td><CopyableCode code="q" /></td>
    <td><code>string</code></td>
    <td>Refines the query by policy name prefix (startWith method) passed in as `q=string`</td>
</tr>
<tr id="parameter-resourceId">
    <td><CopyableCode code="resourceId" /></td>
    <td><code>string</code></td>
    <td>Reference to the associated authorization server</td>
</tr>
<tr id="parameter-sortBy">
    <td><CopyableCode code="sortBy" /></td>
    <td><code>string</code></td>
    <td>Refines the query by sorting on the policy `name` in ascending order</td>
</tr>
<tr id="parameter-status">
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Refines the query by the `status` of the policy - `ACTIVE` or `INACTIVE`</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_policy"
    values={[
        { label: 'get_policy', value: 'get_policy' },
        { label: 'list_policies', value: 'list_policies' }
    ]}
>
<TabItem value="get_policy">

Retrieves a policy

```sql
SELECT
id,
name,
_embedded,
_links,
created,
description,
lastUpdated,
priority,
status,
system,
type
FROM okta.policies.policies
WHERE policyId = '{{ policyId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}'
;
```
</TabItem>
<TabItem value="list_policies">

Lists all policies with the specified type

```sql
SELECT
id,
name,
_embedded,
_links,
created,
description,
lastUpdated,
priority,
status,
system,
type
FROM okta.policies.policies
WHERE type = '{{ type }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND status = '{{ status }}'
AND q = '{{ q }}'
AND expand = '{{ expand }}'
AND sortBy = '{{ sortBy }}'
AND limit = '{{ limit }}'
AND resourceId = '{{ resourceId }}'
AND after = '{{ after }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_policy"
    values={[
        { label: 'create_policy', value: 'create_policy' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_policy">

Creates a policy. There are many types of policies that you can create. See [Policies](https://developer.okta.com/docs/concepts/policies/) for an overview of the types of policies available and links to more indepth information.

```sql
INSERT INTO okta.policies.policies (
description,
name,
priority,
status,
system,
type,
subdomain,
activate
)
SELECT 
'{{ description }}',
'{{ name }}' /* required */,
{{ priority }},
'{{ status }}',
{{ system }},
'{{ type }}' /* required */,
'{{ subdomain }}',
'{{ activate }}'
RETURNING
id,
name,
_embedded,
_links,
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
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the policies resource.
    - name: description
      value: "{{ description }}"
      description: |
        Description of the policy
      default: null
    - name: name
      value: "{{ name }}"
      description: |
        Name of the policy
    - name: priority
      value: {{ priority }}
      description: |
        Specifies the order in which this policy is evaluated in relation to the other policies
      default: Last / Lowest Priority, for example \`1\`
    - name: status
      value: "{{ status }}"
      description: |
        Whether or not the policy is active. Use the \`activate\` query parameter to set the status of a policy.
      valid_values: ['ACTIVE', 'INACTIVE']
    - name: system
      value: {{ system }}
      description: |
        Specifies whether Okta created the policy
      default: false
    - name: type
      value: "{{ type }}"
      description: |
        All Okta orgs contain only one IdP discovery policy with an immutable default rule routing to your org's sign-in page. All Okta orgs also contain just one entity risk policy, one session protection policy, and one identity claims sourcing policy.
      valid_values: ['ACCESS_POLICY', 'ENTITY_RISK', 'IDP_DISCOVERY', 'MFA_ENROLL', 'OKTA_SIGN_ON', 'PASSWORD', 'POST_AUTH_SESSION', 'PROFILE_ENROLLMENT', 'DEVICE_SIGNAL_COLLECTION', 'SESSION_VIOLATION_DETECTION', 'CLIENT_UPDATE', 'IDENTITY_CLAIM_SOURCING']
    - name: activate
      value: "{{ activate }}"
      description: This query parameter is only valid for Classic Engine orgs.
      description: This query parameter is only valid for Classic Engine orgs.
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_policy"
    values={[
        { label: 'replace_policy', value: 'replace_policy' }
    ]}
>
<TabItem value="replace_policy">

Replaces the properties of a policy identified by `policyId`

```sql
REPLACE okta.policies.policies
SET 
description = '{{ description }}',
name = '{{ name }}',
priority = {{ priority }},
status = '{{ status }}',
system = {{ system }},
type = '{{ type }}'
WHERE 
policyId = '{{ policyId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND name = '{{ name }}' --required
AND type = '{{ type }}' --required
RETURNING
id,
name,
_embedded,
_links,
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
    defaultValue="delete_policy"
    values={[
        { label: 'delete_policy', value: 'delete_policy' }
    ]}
>
<TabItem value="delete_policy">

Deletes a policy

```sql
DELETE FROM okta.policies.policies
WHERE policyId = '{{ policyId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="create_policy_simulation"
    values={[
        { label: 'create_policy_simulation', value: 'create_policy_simulation' },
        { label: 'clone_policy', value: 'clone_policy' },
        { label: 'activate_policy', value: 'activate_policy' },
        { label: 'deactivate_policy', value: 'deactivate_policy' }
    ]}
>
<TabItem value="create_policy_simulation">

Creates a policy or policy rule simulation. The access simulation evaluates policy and policy rules based on the existing policy rule configuration.<br />The evaluation result simulates what the real-world authentication flow is and what policy rules have been applied or matched to the authentication flow.

```sql
EXEC okta.policies.policies.create_policy_simulation 
@subdomain='{{ subdomain }}' --required, 
@expand='{{ expand }}'
;
```
</TabItem>
<TabItem value="clone_policy">

Clones an existing policy

```sql
EXEC okta.policies.policies.clone_policy 
@policyId='{{ policyId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="activate_policy">

Activates a policy

```sql
EXEC okta.policies.policies.activate_policy 
@policyId='{{ policyId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_policy">

Deactivates a policy

```sql
EXEC okta.policies.policies.deactivate_policy 
@policyId='{{ policyId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
