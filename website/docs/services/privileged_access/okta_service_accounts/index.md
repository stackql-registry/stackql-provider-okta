--- 
title: okta_service_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - okta_service_accounts
  - privileged_access
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

Creates, updates, deletes, gets or lists an <code>okta_service_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="okta_service_accounts" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.privileged_access.okta_service_accounts" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_okta_managed_user_account"
    values={[
        { label: 'get_okta_managed_user_account', value: 'get_okta_managed_user_account' },
        { label: 'list_okta_managed_user_accounts', value: 'list_okta_managed_user_accounts' }
    ]}
>
<TabItem value="get_okta_managed_user_account">

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
    <td><code>string (regex)</code></td>
    <td>The UUID of the Okta managed user account (pattern: <code>(?i)^&#91;0-9a-f&#93;&#123;8&#125;-&#91;0-9a-f&#93;&#123;4&#125;-&#91;1-5&#93;&#91;0-9a-f&#93;&#123;3&#125;-&#91;89ab&#93;&#91;0-9a-f&#93;&#123;3&#125;-&#91;0-9a-f&#93;&#123;12&#125;$</code>, example: d1b65a78-21ed-429b-8ea3-eec96f2748d6)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string (regex)</code></td>
    <td>The user-defined name for the Okta managed user account (pattern: <code>^&#91;\w\-_. &#93;+$</code>, example: AD Integrations Admin)</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the Okta managed user account was created (example: 2023-04-04T15:56:05.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string (regex)</code></td>
    <td>The description of the Okta managed user account (example: Shared admin account for managing AD integrations)</td>
</tr>
<tr>
    <td><CopyableCode code="email" /></td>
    <td><code>string</code></td>
    <td>The email address associated with the Okta user. This parameter is read-only, and it is derived from the Okta user profile. (example: foo@bar.com)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the Okta managed user account was last updated (example: 2023-05-05T18:15:44.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="oktaUserId" /></td>
    <td><code>string</code></td>
    <td>The ID of the Okta user being managed as a service account (example: 00u11s48P9zGW8yqm0g5)</td>
</tr>
<tr>
    <td><CopyableCode code="ownerGroupIds" /></td>
    <td><code>array</code></td>
    <td>A list of IDs of the Okta groups who own the Okta managed user account</td>
</tr>
<tr>
    <td><CopyableCode code="ownerUserIds" /></td>
    <td><code>array</code></td>
    <td>A list of IDs of the Okta users who own the Okta managed user account</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Describes the current status of a service account (ALERT, ERROR, INFO, NO_ISSUES, UNSECURED) (example: UNSECURED)</td>
</tr>
<tr>
    <td><CopyableCode code="statusDetail" /></td>
    <td><code>string</code></td>
    <td>Describes the detailed status of a service account (CREATION_FAILED, MISSING_PASSWORD, PENDING, ROTATED, ROTATING, ROTATION_FAILED, STAGED, UNMANAGED, VAULTED) (example: STAGED)</td>
</tr>
<tr>
    <td><CopyableCode code="username" /></td>
    <td><code>string</code></td>
    <td>The username associated with the Okta user. This parameter is read-only, and it is derived from the Okta user profile. (example: shr-ad-admin-01@example.com)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_okta_managed_user_accounts">

An Okta managed user account representing a Universal Directory user managed as a service account

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
    <td><code>string (regex)</code></td>
    <td>The UUID of the Okta managed user account (pattern: <code>(?i)^&#91;0-9a-f&#93;&#123;8&#125;-&#91;0-9a-f&#93;&#123;4&#125;-&#91;1-5&#93;&#91;0-9a-f&#93;&#123;3&#125;-&#91;89ab&#93;&#91;0-9a-f&#93;&#123;3&#125;-&#91;0-9a-f&#93;&#123;12&#125;$</code>, example: d1b65a78-21ed-429b-8ea3-eec96f2748d6)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string (regex)</code></td>
    <td>The user-defined name for the Okta managed user account (pattern: <code>^&#91;\w\-_. &#93;+$</code>, example: AD Integrations Admin)</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the Okta managed user account was created (example: 2023-04-04T15:56:05.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string (regex)</code></td>
    <td>The description of the Okta managed user account (example: Shared admin account for managing AD integrations)</td>
</tr>
<tr>
    <td><CopyableCode code="email" /></td>
    <td><code>string</code></td>
    <td>The email address associated with the Okta user. This parameter is read-only, and it is derived from the Okta user profile. (example: foo@bar.com)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the Okta managed user account was last updated (example: 2023-05-05T18:15:44.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="oktaUserId" /></td>
    <td><code>string</code></td>
    <td>The ID of the Okta user being managed as a service account (example: 00u11s48P9zGW8yqm0g5)</td>
</tr>
<tr>
    <td><CopyableCode code="ownerGroupIds" /></td>
    <td><code>array</code></td>
    <td>A list of IDs of the Okta groups who own the Okta managed user account</td>
</tr>
<tr>
    <td><CopyableCode code="ownerUserIds" /></td>
    <td><code>array</code></td>
    <td>A list of IDs of the Okta users who own the Okta managed user account</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Describes the current status of a service account (ALERT, ERROR, INFO, NO_ISSUES, UNSECURED) (example: UNSECURED)</td>
</tr>
<tr>
    <td><CopyableCode code="statusDetail" /></td>
    <td><code>string</code></td>
    <td>Describes the detailed status of a service account (CREATION_FAILED, MISSING_PASSWORD, PENDING, ROTATED, ROTATING, ROTATION_FAILED, STAGED, UNMANAGED, VAULTED) (example: STAGED)</td>
</tr>
<tr>
    <td><CopyableCode code="username" /></td>
    <td><code>string</code></td>
    <td>The username associated with the Okta user. This parameter is read-only, and it is derived from the Okta user profile. (example: shr-ad-admin-01@example.com)</td>
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
    <td><a href="#get_okta_managed_user_account"><CopyableCode code="get_okta_managed_user_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an Okta managed user account specified by ID</td>
</tr>
<tr>
    <td><a href="#list_okta_managed_user_accounts"><CopyableCode code="list_okta_managed_user_accounts" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-match"><code>match</code></a></td>
    <td>Lists all Okta managed user accounts in your org.<br /><br />Use the `match` parameter to search for accounts where the account name (`name`) or username (`username`) contains the specified value.</td>
</tr>
<tr>
    <td><a href="#create_okta_managed_user_account"><CopyableCode code="create_okta_managed_user_account" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-oktaUserId"><code>oktaUserId</code></a></td>
    <td></td>
    <td>Creates a new Okta managed user account for managing a Universal Directory user as a service account.<br /><br />You must specify an existing Okta user in your org with the `oktaUserId` request parameter.</td>
</tr>
<tr>
    <td><a href="#update_okta_managed_user_account"><CopyableCode code="update_okta_managed_user_account" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates an existing Okta managed user account specified by ID.<br /><br />You can only update the `name`, `description`, `ownerUserIds`, and `ownerGroupIds` properties.</td>
</tr>
<tr>
    <td><a href="#delete_okta_managed_user_account"><CopyableCode code="delete_okta_managed_user_account" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an Okta managed user account specified by ID.<br /><br />This operation removes the service account management for the Okta user, suspends the underlying Okta user account,<br />but doesn't delete the user from Universal Directory.</td>
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
<tr id="parameter-id">
    <td><CopyableCode code="id" /></td>
    <td><code>string (regex)</code></td>
    <td>ID of an existing Okta managed user account</td>
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
    <td><code>integer</code></td>
    <td>A limit on the number of objects to return</td>
</tr>
<tr id="parameter-match">
    <td><CopyableCode code="match" /></td>
    <td><code>string</code></td>
    <td>Searches for Okta managed user accounts where the account name (`name`) or username (`username`) contains the given value</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_okta_managed_user_account"
    values={[
        { label: 'get_okta_managed_user_account', value: 'get_okta_managed_user_account' },
        { label: 'list_okta_managed_user_accounts', value: 'list_okta_managed_user_accounts' }
    ]}
>
<TabItem value="get_okta_managed_user_account">

Retrieves an Okta managed user account specified by ID

```sql
SELECT
id,
name,
created,
description,
email,
lastUpdated,
oktaUserId,
ownerGroupIds,
ownerUserIds,
status,
statusDetail,
username
FROM okta.privileged_access.okta_service_accounts
WHERE id = '{{ id }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_okta_managed_user_accounts">

Lists all Okta managed user accounts in your org.<br /><br />Use the `match` parameter to search for accounts where the account name (`name`) or username (`username`) contains the specified value.

```sql
SELECT
id,
name,
created,
description,
email,
lastUpdated,
oktaUserId,
ownerGroupIds,
ownerUserIds,
status,
statusDetail,
username
FROM okta.privileged_access.okta_service_accounts
WHERE subdomain = '{{ subdomain }}' -- required
AND limit = '{{ limit }}'
AND after = '{{ after }}'
AND match = '{{ match }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_okta_managed_user_account"
    values={[
        { label: 'create_okta_managed_user_account', value: 'create_okta_managed_user_account' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_okta_managed_user_account">

Creates a new Okta managed user account for managing a Universal Directory user as a service account.<br /><br />You must specify an existing Okta user in your org with the `oktaUserId` request parameter.

```sql
INSERT INTO okta.privileged_access.okta_service_accounts (
description,
name,
oktaUserId,
ownerGroupIds,
ownerUserIds,
subdomain
)
SELECT 
'{{ description }}',
'{{ name }}' /* required */,
'{{ oktaUserId }}' /* required */,
'{{ ownerGroupIds }}',
'{{ ownerUserIds }}',
'{{ subdomain }}'
RETURNING
id,
name,
created,
description,
email,
lastUpdated,
oktaUserId,
ownerGroupIds,
ownerUserIds,
status,
statusDetail,
username
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: okta_service_accounts
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the okta_service_accounts resource.
    - name: description
      value: "{{ description }}"
      description: |
        The description of the Okta managed user account
    - name: name
      value: "{{ name }}"
      description: |
        The user-defined name for the Okta managed user account
    - name: oktaUserId
      value: "{{ oktaUserId }}"
      description: |
        The ID of the Okta user to manage as a service account.
        This must be an existing user in your Okta org.
    - name: ownerGroupIds
      value:
        - "{{ ownerGroupIds }}"
      description: |
        A list of IDs of the Okta groups who own the Okta managed user account
    - name: ownerUserIds
      value:
        - "{{ ownerUserIds }}"
      description: |
        A list of IDs of the Okta users who own the Okta managed user account
`}</CodeBlock>

</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_okta_managed_user_account"
    values={[
        { label: 'update_okta_managed_user_account', value: 'update_okta_managed_user_account' }
    ]}
>
<TabItem value="update_okta_managed_user_account">

Updates an existing Okta managed user account specified by ID.<br /><br />You can only update the `name`, `description`, `ownerUserIds`, and `ownerGroupIds` properties.

```sql
UPDATE okta.privileged_access.okta_service_accounts
SET 
description = '{{ description }}',
name = '{{ name }}',
ownerGroupIds = '{{ ownerGroupIds }}',
ownerUserIds = '{{ ownerUserIds }}'
WHERE 
id = '{{ id }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
created,
description,
email,
lastUpdated,
oktaUserId,
ownerGroupIds,
ownerUserIds,
status,
statusDetail,
username;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_okta_managed_user_account"
    values={[
        { label: 'delete_okta_managed_user_account', value: 'delete_okta_managed_user_account' }
    ]}
>
<TabItem value="delete_okta_managed_user_account">

Deletes an Okta managed user account specified by ID.<br /><br />This operation removes the service account management for the Okta user, suspends the underlying Okta user account,<br />but doesn't delete the user from Universal Directory.

```sql
DELETE FROM okta.privileged_access.okta_service_accounts
WHERE id = '{{ id }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
