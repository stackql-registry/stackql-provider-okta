--- 
title: directories_integration
hide_title: false
hide_table_of_contents: false
keywords:
  - directories_integration
  - directories
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

Creates, updates, deletes, gets or lists a <code>directories_integration</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="directories_integration" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.directories.directories_integration" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_group_attribute_query_result"
    values={[
        { label: 'get_group_attribute_query_result', value: 'get_group_attribute_query_result' }
    ]}
>
<TabItem value="get_group_attribute_query_result">

OK. Returns the group profile.

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
    <td>The ID of the group (example: 00g19oiNHkbKFvNTX0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>Map of requested attributes and their values</td>
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
    <td><a href="#get_group_attribute_query_result"><CopyableCode code="get_group_attribute_query_result" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appInstanceId"><code>appInstanceId</code></a>, <a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-resultId"><code>resultId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the results of the requested Active Directory (AD) group attributes using the `resultId` returned from the `POST /api/v1/directories/&#123;appInstanceId&#125;/groups/&#123;groupId&#125;/query` call.<br />If the operation has expired or if the `resultId` is invalid, returns a `404` status.</td>
</tr>
<tr>
    <td><a href="#update_group_membership"><CopyableCode code="update_group_membership" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-appInstanceId"><code>appInstanceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-id"><code>id</code></a>, <a href="#parameter-parameters"><code>parameters</code></a></td>
    <td></td>
    <td>Updates an Active Directory or LDAP  group membership directly in the Active Directory or LDAP server.<br /><br />You can add or remove users from groups based on their identity and access requirements. This ensures that changes made to user access in Okta are reflected in AD or LDAP. When you use Okta Access Certifications to revoke a user's membership to an AD or LDAP group, the removal is reflected in AD or LDAP.<br /><br />See [AD Bidirectional Group Management](https://help.okta.com/okta_help.htm?type=oie&id=ad-bidirectional-group-mgmt) and [LDAP Bidirectional Group Management](https://help.okta.com/okta_help.htm?type=oie&id=ldap-bidirectional-group-mgmt).</td>
</tr>
<tr>
    <td><a href="#submit_group_attribute_query"><CopyableCode code="submit_group_attribute_query" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-appInstanceId"><code>appInstanceId</code></a>, <a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-attributes"><code>attributes</code></a></td>
    <td></td>
    <td>Submits a query search on the on-premises agent to asynchronously fetch specific Active Directory (AD) attributes for a group.<br />Returns a `resultId` that is used to poll for the results.</td>
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
<tr id="parameter-appInstanceId">
    <td><CopyableCode code="appInstanceId" /></td>
    <td><code>string</code></td>
    <td>ID of the AD instance in Okta (example: 00a1xucgTZFrziXg10g4)</td>
</tr>
<tr id="parameter-groupId">
    <td><CopyableCode code="groupId" /></td>
    <td><code>string</code></td>
    <td>ID of the Okta group (example: 00g1xucgTZFrziXg10g4)</td>
</tr>
<tr id="parameter-resultId">
    <td><CopyableCode code="resultId" /></td>
    <td><code>string</code></td>
    <td>The unique identifier returned by the initial POST request (`POST /api/v1/directories/&#123;appInstanceId&#125;/groups/&#123;groupId&#125;/query`)</td>
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
    defaultValue="get_group_attribute_query_result"
    values={[
        { label: 'get_group_attribute_query_result', value: 'get_group_attribute_query_result' }
    ]}
>
<TabItem value="get_group_attribute_query_result">

Retrieves the results of the requested Active Directory (AD) group attributes using the `resultId` returned from the `POST /api/v1/directories/&#123;appInstanceId&#125;/groups/&#123;groupId&#125;/query` call.<br />If the operation has expired or if the `resultId` is invalid, returns a `404` status.

```sql
SELECT
id,
profile
FROM okta.directories.directories_integration
WHERE appInstanceId = '{{ appInstanceId }}' -- required
AND groupId = '{{ groupId }}' -- required
AND resultId = '{{ resultId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_group_membership"
    values={[
        { label: 'update_group_membership', value: 'update_group_membership' },
        { label: 'submit_group_attribute_query', value: 'submit_group_attribute_query' }
    ]}
>
<TabItem value="update_group_membership">

Updates an Active Directory or LDAP  group membership directly in the Active Directory or LDAP server.<br /><br />You can add or remove users from groups based on their identity and access requirements. This ensures that changes made to user access in Okta are reflected in AD or LDAP. When you use Okta Access Certifications to revoke a user's membership to an AD or LDAP group, the removal is reflected in AD or LDAP.<br /><br />See [AD Bidirectional Group Management](https://help.okta.com/okta_help.htm?type=oie&id=ad-bidirectional-group-mgmt) and [LDAP Bidirectional Group Management](https://help.okta.com/okta_help.htm?type=oie&id=ldap-bidirectional-group-mgmt).

```sql
EXEC okta.directories.directories_integration.update_group_membership 
@appInstanceId='{{ appInstanceId }}' --required, 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"id": "{{ id }}", 
"parameters": "{{ parameters }}"
}'
;
```
</TabItem>
<TabItem value="submit_group_attribute_query">

Submits a query search on the on-premises agent to asynchronously fetch specific Active Directory (AD) attributes for a group.<br />Returns a `resultId` that is used to poll for the results.

```sql
EXEC okta.directories.directories_integration.submit_group_attribute_query 
@appInstanceId='{{ appInstanceId }}' --required, 
@groupId='{{ groupId }}' --required, 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"attributes": "{{ attributes }}"
}'
;
```
</TabItem>
</Tabs>
