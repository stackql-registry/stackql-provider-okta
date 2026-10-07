--- 
title: behavior_detection_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - behavior_detection_rules
  - behaviors
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

Creates, updates, deletes, gets or lists a <code>behavior_detection_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="behavior_detection_rules" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.behaviors.behavior_detection_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_behavior_detection_rule"
    values={[
        { label: 'get_behavior_detection_rule', value: 'get_behavior_detection_rule' },
        { label: 'list_behavior_detection_rules', value: 'list_behavior_detection_rules' }
    ]}
>
<TabItem value="get_behavior_detection_rule">

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
    <td>ID of the Behavior Detection Rule</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the Behavior Detection Rule</td>
</tr>
<tr>
    <td><CopyableCode code="_link" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the Behavior Detection Rule was created</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the Behavior Detection Rule was last modified</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td> (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td> (ANOMALOUS_DEVICE, ANOMALOUS_IP, ANOMALOUS_LOCATION, VELOCITY, ANOMALOUS_ASN)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_behavior_detection_rules">

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
    <td>ID of the Behavior Detection Rule</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the Behavior Detection Rule</td>
</tr>
<tr>
    <td><CopyableCode code="_link" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the Behavior Detection Rule was created</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the Behavior Detection Rule was last modified</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td> (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td> (ANOMALOUS_DEVICE, ANOMALOUS_IP, ANOMALOUS_LOCATION, VELOCITY, ANOMALOUS_ASN)</td>
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
    <td><a href="#get_behavior_detection_rule"><CopyableCode code="get_behavior_detection_rule" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-behaviorId"><code>behaviorId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a Behavior Detection Rule by `behaviorId`</td>
</tr>
<tr>
    <td><a href="#list_behavior_detection_rules"><CopyableCode code="list_behavior_detection_rules" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all behavior detection rules with pagination support</td>
</tr>
<tr>
    <td><a href="#create_behavior_detection_rule"><CopyableCode code="create_behavior_detection_rule" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Creates a new behavior detection rule</td>
</tr>
<tr>
    <td><a href="#replace_behavior_detection_rule"><CopyableCode code="replace_behavior_detection_rule" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-behaviorId"><code>behaviorId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Replaces a Behavior Detection Rule by `behaviorId`</td>
</tr>
<tr>
    <td><a href="#delete_behavior_detection_rule"><CopyableCode code="delete_behavior_detection_rule" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-behaviorId"><code>behaviorId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a Behavior Detection Rule by `behaviorId`</td>
</tr>
<tr>
    <td><a href="#activate_behavior_detection_rule"><CopyableCode code="activate_behavior_detection_rule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-behaviorId"><code>behaviorId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a behavior detection rule</td>
</tr>
<tr>
    <td><a href="#deactivate_behavior_detection_rule"><CopyableCode code="deactivate_behavior_detection_rule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-behaviorId"><code>behaviorId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates a behavior detection rule</td>
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
<tr id="parameter-behaviorId">
    <td><CopyableCode code="behaviorId" /></td>
    <td><code>string</code></td>
    <td>ID of the Behavior Detection Rule</td>
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
    defaultValue="get_behavior_detection_rule"
    values={[
        { label: 'get_behavior_detection_rule', value: 'get_behavior_detection_rule' },
        { label: 'list_behavior_detection_rules', value: 'list_behavior_detection_rules' }
    ]}
>
<TabItem value="get_behavior_detection_rule">

Retrieves a Behavior Detection Rule by `behaviorId`

```sql
SELECT
id,
name,
_link,
created,
lastUpdated,
status,
type
FROM okta.behaviors.behavior_detection_rules
WHERE behaviorId = '{{ behaviorId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_behavior_detection_rules">

Lists all behavior detection rules with pagination support

```sql
SELECT
id,
name,
_link,
created,
lastUpdated,
status,
type
FROM okta.behaviors.behavior_detection_rules
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_behavior_detection_rule"
    values={[
        { label: 'create_behavior_detection_rule', value: 'create_behavior_detection_rule' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_behavior_detection_rule">

Creates a new behavior detection rule

```sql
INSERT INTO okta.behaviors.behavior_detection_rules (
name,
status,
type,
subdomain
)
SELECT 
'{{ name }}' /* required */,
'{{ status }}',
'{{ type }}' /* required */,
'{{ subdomain }}'
RETURNING
id,
name,
_link,
created,
lastUpdated,
status,
type
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: behavior_detection_rules
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the behavior_detection_rules resource.
    - name: name
      value: "{{ name }}"
      description: |
        Name of the Behavior Detection Rule
    - name: status
      value: "{{ status }}"
      valid_values: ['ACTIVE', 'INACTIVE']
    - name: type
      value: "{{ type }}"
      valid_values: ['ANOMALOUS_DEVICE', 'ANOMALOUS_IP', 'ANOMALOUS_LOCATION', 'VELOCITY', 'ANOMALOUS_ASN']
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_behavior_detection_rule"
    values={[
        { label: 'replace_behavior_detection_rule', value: 'replace_behavior_detection_rule' }
    ]}
>
<TabItem value="replace_behavior_detection_rule">

Replaces a Behavior Detection Rule by `behaviorId`

```sql
REPLACE okta.behaviors.behavior_detection_rules
SET 
name = '{{ name }}',
status = '{{ status }}',
type = '{{ type }}'
WHERE 
behaviorId = '{{ behaviorId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND name = '{{ name }}' --required
AND type = '{{ type }}' --required
RETURNING
id,
name,
_link,
created,
lastUpdated,
status,
type;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_behavior_detection_rule"
    values={[
        { label: 'delete_behavior_detection_rule', value: 'delete_behavior_detection_rule' }
    ]}
>
<TabItem value="delete_behavior_detection_rule">

Deletes a Behavior Detection Rule by `behaviorId`

```sql
DELETE FROM okta.behaviors.behavior_detection_rules
WHERE behaviorId = '{{ behaviorId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_behavior_detection_rule"
    values={[
        { label: 'activate_behavior_detection_rule', value: 'activate_behavior_detection_rule' },
        { label: 'deactivate_behavior_detection_rule', value: 'deactivate_behavior_detection_rule' }
    ]}
>
<TabItem value="activate_behavior_detection_rule">

Activates a behavior detection rule

```sql
EXEC okta.behaviors.behavior_detection_rules.activate_behavior_detection_rule 
@behaviorId='{{ behaviorId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_behavior_detection_rule">

Deactivates a behavior detection rule

```sql
EXEC okta.behaviors.behavior_detection_rules.deactivate_behavior_detection_rule 
@behaviorId='{{ behaviorId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
