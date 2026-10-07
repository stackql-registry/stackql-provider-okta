--- 
title: role_assignment_governance_grant_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - role_assignment_governance_grant_resources
  - users
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

Creates, updates, deletes, gets or lists a <code>role_assignment_governance_grant_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="role_assignment_governance_grant_resources" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.users.role_assignment_governance_grant_resources" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_role_assignment_governance_grant_resources"
    values={[
        { label: 'get_role_assignment_governance_grant_resources', value: 'get_role_assignment_governance_grant_resources' }
    ]}
>
<TabItem value="get_role_assignment_governance_grant_resources">

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
    <td><CopyableCode code="resources" /></td>
    <td><code>array</code></td>
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
    <td><a href="#get_role_assignment_governance_grant_resources"><CopyableCode code="get_role_assignment_governance_grant_resources" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a>, <a href="#parameter-grantId"><code>grantId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the resources of a governance source (identified by `grantId`) for a role (identified by `roleAssignmentId`) that's assigned to a user (identified by `userId`)</td>
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
<tr id="parameter-grantId">
    <td><CopyableCode code="grantId" /></td>
    <td><code>string</code></td>
    <td>Grant ID</td>
</tr>
<tr id="parameter-roleAssignmentId">
    <td><CopyableCode code="roleAssignmentId" /></td>
    <td><code>string</code></td>
    <td>The `id` of the role assignment</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-userId">
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>ID of an existing Okta user</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_role_assignment_governance_grant_resources"
    values={[
        { label: 'get_role_assignment_governance_grant_resources', value: 'get_role_assignment_governance_grant_resources' }
    ]}
>
<TabItem value="get_role_assignment_governance_grant_resources">

Retrieves the resources of a governance source (identified by `grantId`) for a role (identified by `roleAssignmentId`) that's assigned to a user (identified by `userId`)

```sql
SELECT
_links,
resources
FROM okta.users.role_assignment_governance_grant_resources
WHERE userId = '{{ userId }}' -- required
AND roleAssignmentId = '{{ roleAssignmentId }}' -- required
AND grantId = '{{ grantId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
