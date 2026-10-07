--- 
title: role_assignment_users
hide_title: false
hide_table_of_contents: false
keywords:
  - role_assignment_users
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

Creates, updates, deletes, gets or lists a <code>role_assignment_users</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="role_assignment_users" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.users.role_assignment_users" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_user_assigned_role"
    values={[
        { label: 'get_user_assigned_role', value: 'get_user_assigned_role' },
        { label: 'list_assigned_roles_for_user', value: 'list_assigned_roles_for_user' }
    ]}
>
<TabItem value="get_user_assigned_role">

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
    <td>Role assignment ID</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Optional embedded resources for the role assignment</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification.</td>
</tr>
<tr>
    <td><CopyableCode code="assignmentType" /></td>
    <td><code>string</code></td>
    <td>Role assignment type (CLIENT, GROUP, USER)</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created</td>
</tr>
<tr>
    <td><CopyableCode code="label" /></td>
    <td><code>string</code></td>
    <td>Label for the role assignment</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="resource-set" /></td>
    <td><code>string</code></td>
    <td>Resource set ID</td>
</tr>
<tr>
    <td><CopyableCode code="role" /></td>
    <td><code>string</code></td>
    <td>Role ID</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the role assignment (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>| Role type                    | Description                                                 | |------------------------------|-------------------------------------------------------------| | ACCESS_CERTIFICATIONS_ADMIN  | Access Certifications Administrator IAM-based standard role | | ACCESS_REQUESTS_ADMIN        | Access Requests Administrator IAM-based standard role       | | API_ACCESS_MANAGEMENT_ADMIN  | Access Management Administrator standard role               | | APP_ADMIN                    | Application Administrator standard role                     | | CUSTOM                       | Custom admin role                                           | | GROUP_MEMBERSHIP_ADMIN       | Group Membership Administrator standard role                | | HELP_DESK_ADMIN              | Help Desk Administrator standard role                       | | ORG_ADMIN                    | Organizational Administrator standard role                  | | READ_ONLY_ADMIN              | Read-Only Administrator standard role                       | | REPORT_ADMIN                 | Report Administrator standard role                          | | SUPER_ADMIN                  | Super Administrator standard role                           | | USER_ADMIN                   | User Administrator standard role                            | | WORKFLOWS_ADMIN              | Workflows Administrator IAM-based standard role             | (ACCESS_CERTIFICATIONS_ADMIN, ACCESS_REQUESTS_ADMIN, API_ACCESS_MANAGEMENT_ADMIN, APP_ADMIN, CUSTOM, GROUP_MEMBERSHIP_ADMIN, HELP_DESK_ADMIN, ORG_ADMIN, READ_ONLY_ADMIN, REPORT_ADMIN, SUPER_ADMIN, USER_ADMIN, WORKFLOWS_ADMIN) (title: roleType)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_assigned_roles_for_user">

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
    <td><a href="#get_user_assigned_role"><CopyableCode code="get_user_assigned_role" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a role assigned to a user (identified by `userId`). The `roleAssignmentId` parameter is the unique identifier for either a standard role assignment object or a custom role resource set binding object.</td>
</tr>
<tr>
    <td><a href="#list_assigned_roles_for_user"><CopyableCode code="list_assigned_roles_for_user" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Lists all roles assigned to a user (identified by `userId`)</td>
</tr>
<tr>
    <td><a href="#assign_role_to_user"><CopyableCode code="assign_role_to_user" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-type"><code>type</code></a>, <a href="#parameter-role"><code>role</code></a>, <a href="#parameter-resource-set"><code>resource-set</code></a></td>
    <td><a href="#parameter-disableNotifications"><code>disableNotifications</code></a></td>
    <td>Assigns a [standard role](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles) to a user.<br /><br />You can also assign a custom role to a user, but the preferred method to assign a custom role to a user is to create a binding between the custom role, the resource set, and the user. See [Create a role resource set binding](https://developer.okta.com/docs/api/openapi/okta-management/management/roledresourcesetbinding/createresourcesetbinding).<br /><br />&gt; **Notes:**<br />&gt; * The request payload is different for standard and custom role assignments.<br />&gt; * For IAM-based standard role assignments, use the request payload for standard roles. However, the response payload for IAM-based role assignments is similar to the custom role's assignment response.</td>
</tr>
<tr>
    <td><a href="#unassign_role_from_user"><CopyableCode code="unassign_role_from_user" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unassigns a role assignment (identified by `roleAssignmentId`) from a user (identified by `userId`)</td>
</tr>
<tr>
    <td><a href="#assign_all_apps_as_target_to_role_for_user"><CopyableCode code="assign_all_apps_as_target_to_role_for_user" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Assigns all apps as target to an `APP_ADMIN` role</td>
</tr>
<tr>
    <td><a href="#assign_app_target_to_admin_role_for_user"><CopyableCode code="assign_app_target_to_admin_role_for_user" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Assigns an OIN app target for an `APP_ADMIN` role assignment to an admin user. When you assign the first app target, you reduce the scope of the role assignment.<br />The role no longer applies to all app targets, but applies only to the specified target.<br /><br />Assigning an OIN app target overrides any existing app instance targets of the OIN app.<br />For example, if a user was assigned to administer a specific Facebook instance, a successful request to add an OIN app target with `facebook` for `appName` makes that user the admin for all Facebook instances.<br /></td>
</tr>
<tr>
    <td><a href="#assign_app_instance_target_to_app_admin_role_for_user"><CopyableCode code="assign_app_instance_target_to_app_admin_role_for_user" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Assigns an app instance target to an `APP_ADMIN` role assignment to an admin user. When you assign the first OIN app or app instance target, you reduce the scope of the role assignment.<br />The role no longer applies to all app targets, but applies only to the specified target.<br /><br />&gt; **Note:** You can target a mixture of both OIN app and app instance targets, but can't assign permissions to manage all instances of an OIN app and then assign a subset of permission to the same OIN app.<br />&gt; For example, you can't specify that an admin has access to manage all instances of the Salesforce app and then also manage specific configurations of the Salesforce app.<br /></td>
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
<tr id="parameter-appId">
    <td><CopyableCode code="appId" /></td>
    <td><code>string</code></td>
    <td>Application ID</td>
</tr>
<tr id="parameter-appName">
    <td><CopyableCode code="appName" /></td>
    <td><code>string</code></td>
    <td>Name of the app definition (the OIN catalog app key name)</td>
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
<tr id="parameter-disableNotifications">
    <td><CopyableCode code="disableNotifications" /></td>
    <td><code>string</code></td>
    <td>Setting this to `true` grants the user third-party admin status</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>An optional parameter used to return targets configured for the standard role assignment in the `embedded` property. Supported values: `targets/groups` or `targets/catalog/apps`</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_user_assigned_role"
    values={[
        { label: 'get_user_assigned_role', value: 'get_user_assigned_role' },
        { label: 'list_assigned_roles_for_user', value: 'list_assigned_roles_for_user' }
    ]}
>
<TabItem value="get_user_assigned_role">

Retrieves a role assigned to a user (identified by `userId`). The `roleAssignmentId` parameter is the unique identifier for either a standard role assignment object or a custom role resource set binding object.

```sql
SELECT
id,
_embedded,
_links,
assignmentType,
created,
label,
lastUpdated,
resource-set,
role,
status,
type
FROM okta.users.role_assignment_users
WHERE userId = '{{ userId }}' -- required
AND roleAssignmentId = '{{ roleAssignmentId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_assigned_roles_for_user">

Lists all roles assigned to a user (identified by `userId`)

```sql
SELECT
*
FROM okta.users.role_assignment_users
WHERE userId = '{{ userId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="assign_role_to_user"
    values={[
        { label: 'assign_role_to_user', value: 'assign_role_to_user' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="assign_role_to_user">

Assigns a [standard role](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles) to a user.<br /><br />You can also assign a custom role to a user, but the preferred method to assign a custom role to a user is to create a binding between the custom role, the resource set, and the user. See [Create a role resource set binding](https://developer.okta.com/docs/api/openapi/okta-management/management/roledresourcesetbinding/createresourcesetbinding).<br /><br />&gt; **Notes:**<br />&gt; * The request payload is different for standard and custom role assignments.<br />&gt; * For IAM-based standard role assignments, use the request payload for standard roles. However, the response payload for IAM-based role assignments is similar to the custom role's assignment response.

```sql
INSERT INTO okta.users.role_assignment_users (
type,
resource-set,
role,
userId,
subdomain,
disableNotifications
)
SELECT 
'{{ type }}' /* required */,
'{{ resource-set }}' /* required */,
'{{ role }}' /* required */,
'{{ userId }}',
'{{ subdomain }}',
'{{ disableNotifications }}'
RETURNING
id,
_embedded,
_links,
assignmentType,
created,
label,
lastUpdated,
resource-set,
role,
status,
type
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: role_assignment_users
  props:
    - name: userId
      value: "{{ userId }}"
      description: Required parameter for the role_assignment_users resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the role_assignment_users resource.
    - name: type
      value: "{{ type }}"
      description: |
        Specify a [standard admin role](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles), an [IAM-based standard role](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#iam-based-standard-roles), or \`CUSTOM\` for a custom role type:
      valid_values: ['ACCESS_CERTIFICATIONS_ADMIN', 'ACCESS_REQUESTS_ADMIN', 'API_ACCESS_MANAGEMENT_ADMIN', 'APP_ADMIN', 'GROUP_MEMBERSHIP_ADMIN', 'HELP_DESK_ADMIN', 'ORG_ADMIN', 'READ_ONLY_ADMIN', 'REPORT_ADMIN', 'SUPER_ADMIN', 'USER_ADMIN', 'WORKFLOWS_ADMIN']
    - name: resource-set
      value: "{{ resource-set }}"
      description: |
        Resource set ID
    - name: role
      value: "{{ role }}"
      description: |
        Custom role ID
    - name: disableNotifications
      value: "{{ disableNotifications }}"
      description: Setting this to \`true\` grants the user third-party admin status
      description: Setting this to \`true\` grants the user third-party admin status
`}</CodeBlock>

</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="unassign_role_from_user"
    values={[
        { label: 'unassign_role_from_user', value: 'unassign_role_from_user' }
    ]}
>
<TabItem value="unassign_role_from_user">

Unassigns a role assignment (identified by `roleAssignmentId`) from a user (identified by `userId`)

```sql
DELETE FROM okta.users.role_assignment_users
WHERE userId = '{{ userId }}' --required
AND roleAssignmentId = '{{ roleAssignmentId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="assign_all_apps_as_target_to_role_for_user"
    values={[
        { label: 'assign_all_apps_as_target_to_role_for_user', value: 'assign_all_apps_as_target_to_role_for_user' },
        { label: 'assign_app_target_to_admin_role_for_user', value: 'assign_app_target_to_admin_role_for_user' },
        { label: 'assign_app_instance_target_to_app_admin_role_for_user', value: 'assign_app_instance_target_to_app_admin_role_for_user' }
    ]}
>
<TabItem value="assign_all_apps_as_target_to_role_for_user">

Assigns all apps as target to an `APP_ADMIN` role

```sql
EXEC okta.users.role_assignment_users.assign_all_apps_as_target_to_role_for_user 
@userId='{{ userId }}' --required, 
@roleAssignmentId='{{ roleAssignmentId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="assign_app_target_to_admin_role_for_user">

Assigns an OIN app target for an `APP_ADMIN` role assignment to an admin user. When you assign the first app target, you reduce the scope of the role assignment.<br />The role no longer applies to all app targets, but applies only to the specified target.<br /><br />Assigning an OIN app target overrides any existing app instance targets of the OIN app.<br />For example, if a user was assigned to administer a specific Facebook instance, a successful request to add an OIN app target with `facebook` for `appName` makes that user the admin for all Facebook instances.<br />

```sql
EXEC okta.users.role_assignment_users.assign_app_target_to_admin_role_for_user 
@userId='{{ userId }}' --required, 
@roleAssignmentId='{{ roleAssignmentId }}' --required, 
@appName='{{ appName }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="assign_app_instance_target_to_app_admin_role_for_user">

Assigns an app instance target to an `APP_ADMIN` role assignment to an admin user. When you assign the first OIN app or app instance target, you reduce the scope of the role assignment.<br />The role no longer applies to all app targets, but applies only to the specified target.<br /><br />&gt; **Note:** You can target a mixture of both OIN app and app instance targets, but can't assign permissions to manage all instances of an OIN app and then assign a subset of permission to the same OIN app.<br />&gt; For example, you can't specify that an admin has access to manage all instances of the Salesforce app and then also manage specific configurations of the Salesforce app.<br />

```sql
EXEC okta.users.role_assignment_users.assign_app_instance_target_to_app_admin_role_for_user 
@userId='{{ userId }}' --required, 
@roleAssignmentId='{{ roleAssignmentId }}' --required, 
@appName='{{ appName }}' --required, 
@appId='{{ appId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
