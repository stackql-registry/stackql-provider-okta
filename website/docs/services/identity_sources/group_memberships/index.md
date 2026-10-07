--- 
title: group_memberships
hide_title: false
hide_table_of_contents: false
keywords:
  - group_memberships
  - identity_sources
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

Creates, updates, deletes, gets or lists a <code>group_memberships</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="group_memberships" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.identity_sources.group_memberships" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_identity_source_group_memberships"
    values={[
        { label: 'get_identity_source_group_memberships', value: 'get_identity_source_group_memberships' }
    ]}
>
<TabItem value="get_identity_source_group_memberships">

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
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
    <td><a href="#get_identity_source_group_memberships"><CopyableCode code="get_identity_source_group_memberships" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-groupOrExternalId"><code>groupOrExternalId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Retrieves the group memberships for the given identity source group in the given identity source instance</td>
</tr>
<tr>
    <td><a href="#create_identity_source_groups_memberships"><CopyableCode code="create_identity_source_groups_memberships" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-groupOrExternalId"><code>groupOrExternalId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates the group memberships for the given identity source group</td>
</tr>
<tr>
    <td><a href="#delete_identity_source_group_memberships"><CopyableCode code="delete_identity_source_group_memberships" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-groupOrExternalId"><code>groupOrExternalId</code></a>, <a href="#parameter-memberExternalId"><code>memberExternalId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes group memberships for the specified identity source group using member external IDs</td>
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
<tr id="parameter-groupOrExternalId">
    <td><CopyableCode code="groupOrExternalId" /></td>
    <td><code>string</code></td>
    <td>The Okta group ID or external ID of the identity source group (example: 00gsl4xM9ys8TdnbZ0g4 or GROUPEXT123456784C2IF)</td>
</tr>
<tr id="parameter-identitySourceId">
    <td><CopyableCode code="identitySourceId" /></td>
    <td><code>string</code></td>
    <td>The ID of the identity source for which the session is created (example: 0oa3l6l6WK6h0R0QW0g4)</td>
</tr>
<tr id="parameter-memberExternalId">
    <td><CopyableCode code="memberExternalId" /></td>
    <td><code>string</code></td>
    <td>The external ID of the identity source user (example: USEREXT123456784C2IFA)</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](https://developer.okta.com/docs/api/#pagination) and [Link header](https://developer.okta.com/docs/api/#link-header).</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of group membership results in a page. Okta recommends using a specific value other than the default or maximum. If your request times out, retry your request with a smaller `limit` and [page the results](https://developer.okta.com/docs/api/#pagination).</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_identity_source_group_memberships"
    values={[
        { label: 'get_identity_source_group_memberships', value: 'get_identity_source_group_memberships' }
    ]}
>
<TabItem value="get_identity_source_group_memberships">

Retrieves the group memberships for the given identity source group in the given identity source instance

```sql
SELECT
*
FROM okta.identity_sources.group_memberships
WHERE identitySourceId = '{{ identitySourceId }}' -- required
AND groupOrExternalId = '{{ groupOrExternalId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_identity_source_groups_memberships"
    values={[
        { label: 'create_identity_source_groups_memberships', value: 'create_identity_source_groups_memberships' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_identity_source_groups_memberships">

Creates the group memberships for the given identity source group

```sql
INSERT INTO okta.identity_sources.group_memberships (
memberExternalId,
identitySourceId,
groupOrExternalId,
subdomain
)
SELECT 
'{{ memberExternalId }}',
'{{ identitySourceId }}',
'{{ groupOrExternalId }}',
'{{ subdomain }}'
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: group_memberships
  props:
    - name: identitySourceId
      value: "{{ identitySourceId }}"
      description: Required parameter for the group_memberships resource.
    - name: groupOrExternalId
      value: "{{ groupOrExternalId }}"
      description: Required parameter for the group_memberships resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the group_memberships resource.
    - name: memberExternalId
      value: "{{ memberExternalId }}"
      description: |
        The external ID of the user to be added as a member of the group in Okta
`}</CodeBlock>

</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_identity_source_group_memberships"
    values={[
        { label: 'delete_identity_source_group_memberships', value: 'delete_identity_source_group_memberships' }
    ]}
>
<TabItem value="delete_identity_source_group_memberships">

Deletes group memberships for the specified identity source group using member external IDs

```sql
DELETE FROM okta.identity_sources.group_memberships
WHERE identitySourceId = '{{ identitySourceId }}' --required
AND groupOrExternalId = '{{ groupOrExternalId }}' --required
AND memberExternalId = '{{ memberExternalId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
