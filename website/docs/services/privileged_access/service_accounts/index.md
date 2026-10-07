--- 
title: service_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - service_accounts
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

Creates, updates, deletes, gets or lists a <code>service_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="service_accounts" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.privileged_access.service_accounts" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_app_service_account"
    values={[
        { label: 'get_app_service_account', value: 'get_app_service_account' },
        { label: 'list_app_service_accounts', value: 'list_app_service_accounts' }
    ]}
>
<TabItem value="get_app_service_account">

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
    <td>The UUID of the app service account (pattern: <code>(?i)^&#91;0-9a-f&#93;&#123;8&#125;-&#91;0-9a-f&#93;&#123;4&#125;-&#91;1-5&#93;&#91;0-9a-f&#93;&#123;3&#125;-&#91;89ab&#93;&#91;0-9a-f&#93;&#123;3&#125;-&#91;0-9a-f&#93;&#123;12&#125;$</code>, example: a747a818-a4c4-4446-8a87-704216495a08)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string (regex)</code></td>
    <td>The user-defined name for the app service account (pattern: <code>^&#91;\w\-_. &#93;+$</code>, example: salesforce Prod-5 account)</td>
</tr>
<tr>
    <td><CopyableCode code="containerGlobalName" /></td>
    <td><code>string</code></td>
    <td>The key name of the app in the Okta Integration Network (OIN) (example: salesforce)</td>
</tr>
<tr>
    <td><CopyableCode code="containerInstanceName" /></td>
    <td><code>string</code></td>
    <td>The app instance label (example: salesforce Prod 5)</td>
</tr>
<tr>
    <td><CopyableCode code="containerOrn" /></td>
    <td><code>string</code></td>
    <td>The [ORN](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#okta-resource-name-orn) of the relevant resource.  Use the specific app ORN format (`orn:&#123;partition&#125;:idp:&#123;yourOrgId&#125;:apps:&#123;appType&#125;:&#123;appId&#125;`) to identify an Okta app instance in your org. (example: orn:okta:idp:00o1n8sbwArJ7OQRw406:apps:salesforce:0oa1gjh63g214q0Hq0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the app service account was created</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string (regex)</code></td>
    <td>The description of the app service account (example: This is for accessing salesforce Prod-5)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the app service account was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="ownerGroupIds" /></td>
    <td><code>array</code></td>
    <td>A list of IDs of the Okta groups who own the app service account</td>
</tr>
<tr>
    <td><CopyableCode code="ownerUserIds" /></td>
    <td><code>array</code></td>
    <td>A list of IDs of the Okta users who own the app service account</td>
</tr>
<tr>
    <td><CopyableCode code="password" /></td>
    <td><code>string (password)</code></td>
    <td>The app service account password</td>
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
    <td>The username that serves as the direct link to your managed app account. Ensure that this value precisely matches the identifier of the target app account. (example: testuser-salesforce-5@example.com)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_app_service_accounts">

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
    <td>The UUID of the app service account (pattern: <code>(?i)^&#91;0-9a-f&#93;&#123;8&#125;-&#91;0-9a-f&#93;&#123;4&#125;-&#91;1-5&#93;&#91;0-9a-f&#93;&#123;3&#125;-&#91;89ab&#93;&#91;0-9a-f&#93;&#123;3&#125;-&#91;0-9a-f&#93;&#123;12&#125;$</code>, example: a747a818-a4c4-4446-8a87-704216495a08)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string (regex)</code></td>
    <td>The user-defined name for the app service account (pattern: <code>^&#91;\w\-_. &#93;+$</code>, example: salesforce Prod-5 account)</td>
</tr>
<tr>
    <td><CopyableCode code="containerGlobalName" /></td>
    <td><code>string</code></td>
    <td>The key name of the app in the Okta Integration Network (OIN) (example: salesforce)</td>
</tr>
<tr>
    <td><CopyableCode code="containerInstanceName" /></td>
    <td><code>string</code></td>
    <td>The app instance label (example: salesforce Prod 5)</td>
</tr>
<tr>
    <td><CopyableCode code="containerOrn" /></td>
    <td><code>string</code></td>
    <td>The [ORN](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#okta-resource-name-orn) of the relevant resource.  Use the specific app ORN format (`orn:&#123;partition&#125;:idp:&#123;yourOrgId&#125;:apps:&#123;appType&#125;:&#123;appId&#125;`) to identify an Okta app instance in your org. (example: orn:okta:idp:00o1n8sbwArJ7OQRw406:apps:salesforce:0oa1gjh63g214q0Hq0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the app service account was created</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string (regex)</code></td>
    <td>The description of the app service account (example: This is for accessing salesforce Prod-5)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the app service account was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="ownerGroupIds" /></td>
    <td><code>array</code></td>
    <td>A list of IDs of the Okta groups who own the app service account</td>
</tr>
<tr>
    <td><CopyableCode code="ownerUserIds" /></td>
    <td><code>array</code></td>
    <td>A list of IDs of the Okta users who own the app service account</td>
</tr>
<tr>
    <td><CopyableCode code="password" /></td>
    <td><code>string (password)</code></td>
    <td>The app service account password</td>
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
    <td>The username that serves as the direct link to your managed app account. Ensure that this value precisely matches the identifier of the target app account. (example: testuser-salesforce-5@example.com)</td>
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
    <td><a href="#get_app_service_account"><CopyableCode code="get_app_service_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an app service account specified by ID</td>
</tr>
<tr>
    <td><a href="#list_app_service_accounts"><CopyableCode code="list_app_service_accounts" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-match"><code>match</code></a></td>
    <td>Lists all app service accounts</td>
</tr>
<tr>
    <td><a href="#create_app_service_account"><CopyableCode code="create_app_service_account" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-containerOrn"><code>containerOrn</code></a>, <a href="#parameter-username"><code>username</code></a>, <a href="#parameter-password"><code>password</code></a></td>
    <td></td>
    <td>Creates a new app service account for managing an app account</td>
</tr>
<tr>
    <td><a href="#update_app_service_account"><CopyableCode code="update_app_service_account" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates an existing app service account specified by ID</td>
</tr>
<tr>
    <td><a href="#delete_app_service_account"><CopyableCode code="delete_app_service_account" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an app service account specified by ID</td>
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
    <td><code>string</code></td>
    <td>ID of an existing service account</td>
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
    <td>Searches for app service accounts where the account name (`name`), username (`username`), app instance label (`containerInstanceName`), or OIN app key name (`containerGlobalName`) contains the given value</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_app_service_account"
    values={[
        { label: 'get_app_service_account', value: 'get_app_service_account' },
        { label: 'list_app_service_accounts', value: 'list_app_service_accounts' }
    ]}
>
<TabItem value="get_app_service_account">

Retrieves an app service account specified by ID

```sql
SELECT
id,
name,
containerGlobalName,
containerInstanceName,
containerOrn,
created,
description,
lastUpdated,
ownerGroupIds,
ownerUserIds,
password,
status,
statusDetail,
username
FROM okta.privileged_access.service_accounts
WHERE id = '{{ id }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_app_service_accounts">

Lists all app service accounts

```sql
SELECT
id,
name,
containerGlobalName,
containerInstanceName,
containerOrn,
created,
description,
lastUpdated,
ownerGroupIds,
ownerUserIds,
password,
status,
statusDetail,
username
FROM okta.privileged_access.service_accounts
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
    defaultValue="create_app_service_account"
    values={[
        { label: 'create_app_service_account', value: 'create_app_service_account' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_app_service_account">

Creates a new app service account for managing an app account

```sql
INSERT INTO okta.privileged_access.service_accounts (
containerOrn,
description,
name,
ownerGroupIds,
ownerUserIds,
password,
username,
subdomain
)
SELECT 
'{{ containerOrn }}' /* required */,
'{{ description }}',
'{{ name }}' /* required */,
'{{ ownerGroupIds }}',
'{{ ownerUserIds }}',
'{{ password }}' /* required */,
'{{ username }}' /* required */,
'{{ subdomain }}'
RETURNING
id,
name,
containerGlobalName,
containerInstanceName,
containerOrn,
created,
description,
lastUpdated,
ownerGroupIds,
ownerUserIds,
password,
status,
statusDetail,
username
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: service_accounts
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the service_accounts resource.
    - name: containerOrn
      value: "{{ containerOrn }}"
      description: |
        The [ORN](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#okta-resource-name-orn) of the relevant resource.
        Use the specific app ORN format (\`orn:{partition}:idp:{yourOrgId}:apps:{appType}:{appId}\`) to identify an Okta app instance in your org.
    - name: description
      value: "{{ description }}"
      description: |
        The description of the app service account
    - name: name
      value: "{{ name }}"
      description: |
        The user-defined name for the app service account
    - name: ownerGroupIds
      value:
        - "{{ ownerGroupIds }}"
      description: |
        A list of IDs of the Okta groups who own the app service account
    - name: ownerUserIds
      value:
        - "{{ ownerUserIds }}"
      description: |
        A list of IDs of the Okta users who own the app service account
    - name: password
      value: "{{ password }}"
      description: |
        The app service account password
    - name: username
      value: "{{ username }}"
      description: |
        The username that serves as the direct link to your managed app account. Ensure that this value precisely matches the identifier of the target app account.
`}</CodeBlock>

</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_app_service_account"
    values={[
        { label: 'update_app_service_account', value: 'update_app_service_account' }
    ]}
>
<TabItem value="update_app_service_account">

Updates an existing app service account specified by ID

```sql
UPDATE okta.privileged_access.service_accounts
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
containerGlobalName,
containerInstanceName,
containerOrn,
created,
description,
lastUpdated,
ownerGroupIds,
ownerUserIds,
password,
status,
statusDetail,
username;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_app_service_account"
    values={[
        { label: 'delete_app_service_account', value: 'delete_app_service_account' }
    ]}
>
<TabItem value="delete_app_service_account">

Deletes an app service account specified by ID

```sql
DELETE FROM okta.privileged_access.service_accounts
WHERE id = '{{ id }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
