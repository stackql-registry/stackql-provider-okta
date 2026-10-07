--- 
title: users
hide_title: false
hide_table_of_contents: false
keywords:
  - users
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

Creates, updates, deletes, gets or lists a <code>users</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="users" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.identity_sources.users" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_identity_source_user"
    values={[
        { label: 'get_identity_source_user', value: 'get_identity_source_user' }
    ]}
>
<TabItem value="get_identity_source_user">

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
    <td>The ID of the user in the identity source</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the user was created in the identity source</td>
</tr>
<tr>
    <td><CopyableCode code="externalId" /></td>
    <td><code>string</code></td>
    <td>The external ID of the user in the identity source</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the user was last updated in the identity source</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>Contains a set of external user attributes and their values that are mapped to Okta standard and custom profile properties. See the [`profile` object](https://developer.okta.com/docs/api/openapi/okta-management/management/user/getuser#user/getuser/t=response&c=200&path=profile) and Declaration of a Custom Identity Source Schema in [Using anything as a source](https://help.okta.com/okta_help.htm?type=oie&id=ext-anything-as-a-source). &gt; **Note:** Profile attributes can only be of the string type.</td>
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
    <td><a href="#get_identity_source_user"><CopyableCode code="get_identity_source_user" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-externalId"><code>externalId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a user by external ID in an identity source for the given identity source instance</td>
</tr>
<tr>
    <td><a href="#create_identity_source_user"><CopyableCode code="create_identity_source_user" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a user in an identity source for the given identity source instance</td>
</tr>
<tr>
    <td><a href="#update_identity_source_users"><CopyableCode code="update_identity_source_users" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-externalId"><code>externalId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates a user to an identity source for the given identity source instance and external ID</td>
</tr>
<tr>
    <td><a href="#replace_existing_identity_source_user"><CopyableCode code="replace_existing_identity_source_user" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-externalId"><code>externalId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces an existing user for the given identity source instance and external ID</td>
</tr>
<tr>
    <td><a href="#delete_identity_source_user"><CopyableCode code="delete_identity_source_user" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-identitySourceId"><code>identitySourceId</code></a>, <a href="#parameter-externalId"><code>externalId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a user in an identity source for the given identity source instance and external ID</td>
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
<tr id="parameter-externalId">
    <td><CopyableCode code="externalId" /></td>
    <td><code>string</code></td>
    <td>The external ID of the user (example: 00u7m9p9ZT8k2S2EX1f7)</td>
</tr>
<tr id="parameter-identitySourceId">
    <td><CopyableCode code="identitySourceId" /></td>
    <td><code>string</code></td>
    <td>The ID of the identity source for which the session is created (example: 0oa3l6l6WK6h0R0QW0g4)</td>
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
    defaultValue="get_identity_source_user"
    values={[
        { label: 'get_identity_source_user', value: 'get_identity_source_user' }
    ]}
>
<TabItem value="get_identity_source_user">

Retrieves a user by external ID in an identity source for the given identity source instance

```sql
SELECT
id,
created,
externalId,
lastUpdated,
profile
FROM okta.identity_sources.users
WHERE identitySourceId = '{{ identitySourceId }}' -- required
AND externalId = '{{ externalId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_identity_source_user"
    values={[
        { label: 'create_identity_source_user', value: 'create_identity_source_user' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_identity_source_user">

Creates a user in an identity source for the given identity source instance

```sql
INSERT INTO okta.identity_sources.users (
externalId,
profile,
identitySourceId,
subdomain
)
SELECT 
'{{ externalId }}',
'{{ profile }}',
'{{ identitySourceId }}',
'{{ subdomain }}'
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: users
  props:
    - name: identitySourceId
      value: "{{ identitySourceId }}"
      description: Required parameter for the users resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the users resource.
    - name: externalId
      value: "{{ externalId }}"
      description: |
        The external ID of the user in the identity source
    - name: profile
      description: |
        Contains a set of external user attributes and their values that are mapped to Okta standard and custom profile properties. See the [\`profile\` object](https://developer.okta.com/docs/api/openapi/okta-management/management/user/getuser#user/getuser/t=response&c=200&path=profile) and Declaration of a Custom Identity Source Schema in [Using anything as a source](https://help.okta.com/okta_help.htm?type=oie&id=ext-anything-as-a-source).
        > **Note:** Profile attributes can only be of the string type.
      value:
        email: "{{ email }}"
        firstName: "{{ firstName }}"
        homeAddress: "{{ homeAddress }}"
        lastName: "{{ lastName }}"
        mobilePhone: "{{ mobilePhone }}"
        secondEmail: "{{ secondEmail }}"
        userName: "{{ userName }}"
`}</CodeBlock>

</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_identity_source_users"
    values={[
        { label: 'update_identity_source_users', value: 'update_identity_source_users' }
    ]}
>
<TabItem value="update_identity_source_users">

Updates a user to an identity source for the given identity source instance and external ID

```sql
UPDATE okta.identity_sources.users
SET 
profile = '{{ profile }}'
WHERE 
identitySourceId = '{{ identitySourceId }}' --required
AND externalId = '{{ externalId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
created,
externalId,
lastUpdated,
profile;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_existing_identity_source_user"
    values={[
        { label: 'replace_existing_identity_source_user', value: 'replace_existing_identity_source_user' }
    ]}
>
<TabItem value="replace_existing_identity_source_user">

Replaces an existing user for the given identity source instance and external ID

```sql
REPLACE okta.identity_sources.users
SET 
externalId = '{{ externalId }}',
profile = '{{ profile }}'
WHERE 
identitySourceId = '{{ identitySourceId }}' --required
AND externalId = '{{ externalId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
created,
externalId,
lastUpdated,
profile;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_identity_source_user"
    values={[
        { label: 'delete_identity_source_user', value: 'delete_identity_source_user' }
    ]}
>
<TabItem value="delete_identity_source_user">

Deletes a user in an identity source for the given identity source instance and external ID

```sql
DELETE FROM okta.identity_sources.users
WHERE identitySourceId = '{{ identitySourceId }}' --required
AND externalId = '{{ externalId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
