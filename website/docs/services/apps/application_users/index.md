--- 
title: application_users
hide_title: false
hide_table_of_contents: false
keywords:
  - application_users
  - apps
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

Creates, updates, deletes, gets or lists an <code>application_users</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="application_users" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.apps.application_users" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_application_user"
    values={[
        { label: 'get_application_user', value: 'get_application_user' },
        { label: 'list_application_users', value: 'list_application_users' }
    ]}
>
<TabItem value="get_application_user">

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
    <td>Unique identifier for the Okta user (example: 00u11z6WHMYCGPCHCRFK)</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resources related to the application user using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of resources related to the application user.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created (example: 2017-03-28T01:11:10.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="credentials" /></td>
    <td><code>object</code></td>
    <td>Specifies a user's credentials for the app. This parameter can be omitted for apps with [sign-on mode](https://developer.okta.com/docs/api/openapi/okta-management/management/application/getapplication#application/getapplication/t=response&c=200&path=&d=0/signonmode) (`signOnMode`) or [authentication schemes](https://developer.okta.com/docs/api/openapi/okta-management/management/application/getapplication#application/getapplication/t=response&c=200&path=&d=0/credentials/scheme) (`credentials.scheme`) that don't require credentials. </td>
</tr>
<tr>
    <td><CopyableCode code="externalId" /></td>
    <td><code>string</code></td>
    <td>The ID of the user in the target app that's linked to the Okta application user object. This value is the native app-specific identifier or primary key for the user in the target app.  The `externalId` is set during import when the user is confirmed (reconciled) or during provisioning when the user is created in the target app. This value isn't populated for SSO app assignments (for example, SAML or SWA) because it isn't synchronized with a target app. (example: 70c14cc17d3745e8a9f98d599a68329c)</td>
</tr>
<tr>
    <td><CopyableCode code="lastSync" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp of the last synchronization operation. This value is only updated for apps with the `IMPORT_PROFILE_UPDATES` or `PUSH PROFILE_UPDATES` feature. (example: 2014-06-24T15:27:59.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated (example: 2014-06-24T15:28:14.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="passwordChanged" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the application user password was last changed (example: 2014-06-24T15:27:59.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>Specifies the default and custom profile properties for a user. Properties that are visible in the Admin Console for an app assignment can also be assigned through the API. Some properties are reference properties that are imported from the target app and can't be configured. See [profile](https://developer.okta.com/docs/api/openapi/okta-management/management/user/getuser#user/getuser/t=response&c=200&path=profile). </td>
</tr>
<tr>
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>Indicates if the assignment is direct (`USER`) or by group membership (`GROUP`). If not specified, Okta tries to determine the scope based on the assignment type. (USER, GROUP) (example: USER)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of an application user (ACTIVE, APPROVED, DEPROVISIONED, IMPLICIT, IMPORTED, INACTIVE, MATCHED, PENDING, PROVISIONED, REVOKED, STAGED, SUSPENDED, UNASSIGNED) (example: ACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="statusChanged" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the application user status was last changed (example: 2014-06-24T15:28:14.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="syncState" /></td>
    <td><code>string</code></td>
    <td>The synchronization state for the application user. The application user's `syncState` depends on whether the `PROFILE_MASTERING` feature is enabled for the app.  &gt; **Note:** User provisioning currently must be configured through the Admin Console. (DISABLED, ERROR, OUT_OF_SYNC, SYNCHRONIZED, SYNCING) (example: SYNCHRONIZED)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_application_users">

The app user object defines a user's app-specific profile and credentials for an app

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
    <td>Unique identifier for the Okta user (example: 00u11z6WHMYCGPCHCRFK)</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resources related to the application user using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of resources related to the application user.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created (example: 2017-03-28T01:11:10.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="credentials" /></td>
    <td><code>object</code></td>
    <td>Specifies a user's credentials for the app. This parameter can be omitted for apps with [sign-on mode](https://developer.okta.com/docs/api/openapi/okta-management/management/application/getapplication#application/getapplication/t=response&c=200&path=&d=0/signonmode) (`signOnMode`) or [authentication schemes](https://developer.okta.com/docs/api/openapi/okta-management/management/application/getapplication#application/getapplication/t=response&c=200&path=&d=0/credentials/scheme) (`credentials.scheme`) that don't require credentials. </td>
</tr>
<tr>
    <td><CopyableCode code="externalId" /></td>
    <td><code>string</code></td>
    <td>The ID of the user in the target app that's linked to the Okta application user object. This value is the native app-specific identifier or primary key for the user in the target app.  The `externalId` is set during import when the user is confirmed (reconciled) or during provisioning when the user is created in the target app. This value isn't populated for SSO app assignments (for example, SAML or SWA) because it isn't synchronized with a target app. (example: 70c14cc17d3745e8a9f98d599a68329c)</td>
</tr>
<tr>
    <td><CopyableCode code="lastSync" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp of the last synchronization operation. This value is only updated for apps with the `IMPORT_PROFILE_UPDATES` or `PUSH PROFILE_UPDATES` feature. (example: 2014-06-24T15:27:59.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated (example: 2014-06-24T15:28:14.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="passwordChanged" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the application user password was last changed (example: 2014-06-24T15:27:59.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>Specifies the default and custom profile properties for a user. Properties that are visible in the Admin Console for an app assignment can also be assigned through the API. Some properties are reference properties that are imported from the target app and can't be configured. See [profile](https://developer.okta.com/docs/api/openapi/okta-management/management/user/getuser#user/getuser/t=response&c=200&path=profile). </td>
</tr>
<tr>
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>Indicates if the assignment is direct (`USER`) or by group membership (`GROUP`). If not specified, Okta tries to determine the scope based on the assignment type. (USER, GROUP) (example: USER)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of an application user (ACTIVE, APPROVED, DEPROVISIONED, IMPLICIT, IMPORTED, INACTIVE, MATCHED, PENDING, PROVISIONED, REVOKED, STAGED, SUSPENDED, UNASSIGNED) (example: ACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="statusChanged" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the application user status was last changed (example: 2014-06-24T15:28:14.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="syncState" /></td>
    <td><code>string</code></td>
    <td>The synchronization state for the application user. The application user's `syncState` depends on whether the `PROFILE_MASTERING` feature is enabled for the app.  &gt; **Note:** User provisioning currently must be configured through the Admin Console. (DISABLED, ERROR, OUT_OF_SYNC, SYNCHRONIZED, SYNCING) (example: SYNCHRONIZED)</td>
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
    <td><a href="#get_application_user"><CopyableCode code="get_application_user" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Retrieves a specific user assignment for a specific app</td>
</tr>
<tr>
    <td><a href="#list_application_users"><CopyableCode code="list_application_users" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-q"><code>q</code></a>, <a href="#parameter-expand"><code>expand</code></a></td>
    <td>Lists all assigned users for an app</td>
</tr>
<tr>
    <td><a href="#assign_user_to_application"><CopyableCode code="assign_user_to_application" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-id"><code>id</code></a></td>
    <td></td>
    <td>Assigns a user to an app for:<br /><br />  * SSO only<br /><br />    Assignments to SSO apps typically don't include a user profile.<br />    However, if your SSO app requires a profile but doesn't have provisioning enabled, you can add profile attributes in the request body.<br /><br />  * SSO and provisioning<br /><br />    Assignments to SSO and provisioning apps typically include credentials and an app-specific profile.<br />    Profile mappings defined for the app are applied first before applying any profile properties that are specified in the request body.<br />    &gt; **Notes:**<br />    &gt; * When Universal Directory is enabled, you can only specify profile properties that aren't defined in profile mappings.<br />    &gt; * Omit mapped properties during assignment to minimize assignment errors.</td>
</tr>
<tr>
    <td><a href="#update_application_user"><CopyableCode code="update_application_user" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates the profile or credentials of a user assigned to an app</td>
</tr>
<tr>
    <td><a href="#unassign_user_from_application"><CopyableCode code="unassign_user_from_application" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-sendEmail"><code>sendEmail</code></a></td>
    <td>Unassigns a user from an app<br /><br />For directories like Active Directory and LDAP, they act as the owner of the user's credential with Okta delegating authentication (DelAuth) to that directory.<br />If this request is successful for a user when DelAuth is enabled, then the user is in a state with no password. You can then reset the user's password.<br /><br />&gt; **Important:** This is a destructive operation. You can't recover the user's app profile. If the app is enabled for provisioning and configured to deactivate users, the user is also deactivated in the target app.</td>
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
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>Specifies the pagination cursor for the next page of results. Treat this as an opaque value obtained through the next link relationship. See [Pagination]https://developer.okta.com/docs/api#pagination.</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>An optional query parameter to return the corresponding [User](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/user) object in the `_embedded` property. Valid value: `user`</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of objects to return per page. If there are multiple pages of results, the Link header contains a `next` link that you need to use as an opaque value (follow it, don't parse it). See [Pagination]https://developer.okta.com/docs/api#pagination. </td>
</tr>
<tr id="parameter-q">
    <td><CopyableCode code="q" /></td>
    <td><code>string</code></td>
    <td>Specifies a filter for the list of application users returned based on their profile attributes. The value of `q` is matched against the beginning of the following profile attributes: `userName`, `firstName`, `lastName`, and `email`. This filter only supports the `startsWith` operation that matches the `q` string against the beginning of the attribute values. &gt; **Note:** For OIDC apps, user profiles don't contain the `firstName` or `lastName` attributes. Therefore, the query only matches against the `userName` or `email` attributes. </td>
</tr>
<tr id="parameter-sendEmail">
    <td><CopyableCode code="sendEmail" /></td>
    <td><code>string</code></td>
    <td>Sends a deactivation email to the administrator if `true`</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_application_user"
    values={[
        { label: 'get_application_user', value: 'get_application_user' },
        { label: 'list_application_users', value: 'list_application_users' }
    ]}
>
<TabItem value="get_application_user">

Retrieves a specific user assignment for a specific app

```sql
SELECT
id,
_embedded,
_links,
created,
credentials,
externalId,
lastSync,
lastUpdated,
passwordChanged,
profile,
scope,
status,
statusChanged,
syncState
FROM okta.apps.application_users
WHERE appId = '{{ appId }}' -- required
AND userId = '{{ userId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}'
;
```
</TabItem>
<TabItem value="list_application_users">

Lists all assigned users for an app

```sql
SELECT
id,
_embedded,
_links,
created,
credentials,
externalId,
lastSync,
lastUpdated,
passwordChanged,
profile,
scope,
status,
statusChanged,
syncState
FROM okta.apps.application_users
WHERE appId = '{{ appId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
AND q = '{{ q }}'
AND expand = '{{ expand }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="assign_user_to_application"
    values={[
        { label: 'assign_user_to_application', value: 'assign_user_to_application' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="assign_user_to_application">

Assigns a user to an app for:<br /><br />  * SSO only<br /><br />    Assignments to SSO apps typically don't include a user profile.<br />    However, if your SSO app requires a profile but doesn't have provisioning enabled, you can add profile attributes in the request body.<br /><br />  * SSO and provisioning<br /><br />    Assignments to SSO and provisioning apps typically include credentials and an app-specific profile.<br />    Profile mappings defined for the app are applied first before applying any profile properties that are specified in the request body.<br />    &gt; **Notes:**<br />    &gt; * When Universal Directory is enabled, you can only specify profile properties that aren't defined in profile mappings.<br />    &gt; * Omit mapped properties during assignment to minimize assignment errors.

```sql
INSERT INTO okta.apps.application_users (
credentials,
id,
profile,
scope,
appId,
subdomain
)
SELECT 
'{{ credentials }}',
'{{ id }}' /* required */,
'{{ profile }}',
'{{ scope }}',
'{{ appId }}',
'{{ subdomain }}'
RETURNING
id,
_embedded,
_links,
created,
credentials,
externalId,
lastSync,
lastUpdated,
passwordChanged,
profile,
scope,
status,
statusChanged,
syncState
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: application_users
  props:
    - name: appId
      value: "{{ appId }}"
      description: Required parameter for the application_users resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the application_users resource.
    - name: credentials
      description: |
        Specifies a user's credentials for the app.
        This parameter can be omitted for apps with [sign-on mode](https://developer.okta.com/docs/api/openapi/okta-management/management/application/getapplication#application/getapplication/t=response&c=200&path=&d=0/signonmode) (\`signOnMode\`) or [authentication schemes](https://developer.okta.com/docs/api/openapi/okta-management/management/application/getapplication#application/getapplication/t=response&c=200&path=&d=0/credentials/scheme) (\`credentials.scheme\`) that don't require credentials.
      value:
        password:
          value: "{{ value }}"
        userName: "{{ userName }}"
    - name: id
      value: "{{ id }}"
      description: |
        Unique identifier for the Okta user
    - name: profile
      value: "{{ profile }}"
      description: |
        Specifies the default and custom profile properties for a user.
        Properties that are visible in the Admin Console for an app assignment can also be assigned through the API.
        Some properties are reference properties that are imported from the target app and can't be configured.
        See [profile](https://developer.okta.com/docs/api/openapi/okta-management/management/user/getuser#user/getuser/t=response&c=200&path=profile).
    - name: scope
      value: "{{ scope }}"
      description: |
        Indicates if the assignment is direct (\`USER\`) or by group membership (\`GROUP\`). If not specified, Okta tries to determine the scope based on the assignment type.
      valid_values: ['USER', 'GROUP']
`}</CodeBlock>

</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_application_user"
    values={[
        { label: 'update_application_user', value: 'update_application_user' }
    ]}
>
<TabItem value="update_application_user">

Updates the profile or credentials of a user assigned to an app

```sql
UPDATE okta.apps.application_users
SET 
credentials = '{{ credentials }}',
profile = '{{ profile }}'
WHERE 
appId = '{{ appId }}' --required
AND userId = '{{ userId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
_embedded,
_links,
created,
credentials,
externalId,
lastSync,
lastUpdated,
passwordChanged,
profile,
scope,
status,
statusChanged,
syncState;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="unassign_user_from_application"
    values={[
        { label: 'unassign_user_from_application', value: 'unassign_user_from_application' }
    ]}
>
<TabItem value="unassign_user_from_application">

Unassigns a user from an app<br /><br />For directories like Active Directory and LDAP, they act as the owner of the user's credential with Okta delegating authentication (DelAuth) to that directory.<br />If this request is successful for a user when DelAuth is enabled, then the user is in a state with no password. You can then reset the user's password.<br /><br />&gt; **Important:** This is a destructive operation. You can't recover the user's app profile. If the app is enabled for provisioning and configured to deactivate users, the user is also deactivated in the target app.

```sql
DELETE FROM okta.apps.application_users
WHERE appId = '{{ appId }}' --required
AND userId = '{{ userId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND sendEmail = '{{ sendEmail }}'
;
```
</TabItem>
</Tabs>
