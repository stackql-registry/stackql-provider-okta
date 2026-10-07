--- 
title: group_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - group_assignments
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

Creates, updates, deletes, gets or lists a <code>group_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="group_assignments" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.apps.group_assignments" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_application_group_assignment"
    values={[
        { label: 'get_application_group_assignment', value: 'get_application_group_assignment' },
        { label: 'list_application_group_assignments', value: 'list_application_group_assignments' }
    ]}
>
<TabItem value="get_application_group_assignment">

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
    <td>ID of the [group](https://developer.okta.com/docs/api/openapi/okta-management/management/group) (example: 00g4hb1HChfUriNgW0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resource related to the Application Group using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. If the `expand=group` query parameter is specified, then the [group](https://developer.okta.com/docs/api/openapi/okta-management/management/group) object is embedded.  If the `expand=metadata` query parameter is specified, then the group assignment metadata is embedded.</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated (example: 2014-06-24T15:28:14.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="priority" /></td>
    <td><code>integer</code></td>
    <td>Priority assigned to the group. If an app has more than one group assigned to the same user, then the group with the higher priority has its profile applied to the [application user](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/applicationusers). If a priority value isn't specified, then the next highest priority is assigned by default. See [Assign attribute group priority](https://help.okta.com/okta_help.htm?type=oie&id=ext-usgp-app-group-priority) and the [sample priority use case](https://help.okta.com/okta_help.htm?type=oie&id=ext-usgp-combine-values-use).</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>Specifies the profile properties applied to [application users](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/applicationusers) that are assigned to the app through group membership.  Some reference properties are imported from the target app and can't be configured. See [profile](https://developer.okta.com/docs/api/openapi/okta-management/management/user/getuser#user/getuser/t=response&c=200&path=profile).</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_application_group_assignments">

The Application Group object that defines a group of users' app-specific profile and credentials for an app

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
    <td>ID of the [group](https://developer.okta.com/docs/api/openapi/okta-management/management/group) (example: 00g4hb1HChfUriNgW0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resource related to the Application Group using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. If the `expand=group` query parameter is specified, then the [group](https://developer.okta.com/docs/api/openapi/okta-management/management/group) object is embedded.  If the `expand=metadata` query parameter is specified, then the group assignment metadata is embedded.</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated (example: 2014-06-24T15:28:14.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="priority" /></td>
    <td><code>integer</code></td>
    <td>Priority assigned to the group. If an app has more than one group assigned to the same user, then the group with the higher priority has its profile applied to the [application user](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/applicationusers). If a priority value isn't specified, then the next highest priority is assigned by default. See [Assign attribute group priority](https://help.okta.com/okta_help.htm?type=oie&id=ext-usgp-app-group-priority) and the [sample priority use case](https://help.okta.com/okta_help.htm?type=oie&id=ext-usgp-combine-values-use).</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>Specifies the profile properties applied to [application users](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/applicationusers) that are assigned to the app through group membership.  Some reference properties are imported from the target app and can't be configured. See [profile](https://developer.okta.com/docs/api/openapi/okta-management/management/user/getuser#user/getuser/t=response&c=200&path=profile).</td>
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
    <td><a href="#get_application_group_assignment"><CopyableCode code="get_application_group_assignment" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Retrieves an app group assignment</td>
</tr>
<tr>
    <td><a href="#list_application_group_assignments"><CopyableCode code="list_application_group_assignments" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-q"><code>q</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-expand"><code>expand</code></a></td>
    <td>Lists all app group assignments</td>
</tr>
<tr>
    <td><a href="#update_group_assignment_to_application"><CopyableCode code="update_group_assignment_to_application" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates a group assignment to an app</td>
</tr>
<tr>
    <td><a href="#assign_group_to_application"><CopyableCode code="assign_group_to_application" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Assigns a [Group](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/group) to an app, which in turn assigns the app to each [User](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/user) that belongs to the group.<br />The resulting application user [scope](https://developer.okta.com/docs/api/openapi/okta-management/management/applicationusers/listapplicationusers#applicationusers/listapplicationusers/t=response&c=200&path=scope) is `GROUP` since the assignment was from the group membership.</td>
</tr>
<tr>
    <td><a href="#unassign_application_from_group"><CopyableCode code="unassign_application_from_group" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unassigns a Group from an app</td>
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
<tr id="parameter-groupId">
    <td><CopyableCode code="groupId" /></td>
    <td><code>string</code></td>
    <td>The `id` of the group</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>Specifies the pagination cursor for the `next` page of results. Treat this as an opaque value obtained through the next link relationship. See [Pagination](https://developer.okta.com/docs/api/#pagination).</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>An optional query parameter to return the corresponding assigned [group](https://developer.okta.com/docs/api/openapi/okta-management/management/group) or the group assignment metadata details in the `_embedded` property.</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of objects to return per page. If there are multiple pages of results, the Link header contains a `next` link that you need to use as an opaque value (follow it, don't parse it). See [Pagination]https://developer.okta.com/docs/api#pagination.</td>
</tr>
<tr id="parameter-q">
    <td><CopyableCode code="q" /></td>
    <td><code>string</code></td>
    <td>Specifies a filter for a list of assigned groups returned based on their names. The value of `q` is matched against the group `name`. This filter only supports the `startsWith` operation that matches the `q` string against the beginning of the [group name](https://developer.okta.com/docs/api/openapi/okta-management/management/group#tag/Group/operation/listGroups!c=200&path=profile/name&t=response).</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_application_group_assignment"
    values={[
        { label: 'get_application_group_assignment', value: 'get_application_group_assignment' },
        { label: 'list_application_group_assignments', value: 'list_application_group_assignments' }
    ]}
>
<TabItem value="get_application_group_assignment">

Retrieves an app group assignment

```sql
SELECT
id,
_embedded,
_links,
lastUpdated,
priority,
profile
FROM okta.apps.group_assignments
WHERE appId = '{{ appId }}' -- required
AND groupId = '{{ groupId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}'
;
```
</TabItem>
<TabItem value="list_application_group_assignments">

Lists all app group assignments

```sql
SELECT
id,
_embedded,
_links,
lastUpdated,
priority,
profile
FROM okta.apps.group_assignments
WHERE appId = '{{ appId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND q = '{{ q }}'
AND after = '{{ after }}'
AND limit = '{{ limit }}'
AND expand = '{{ expand }}'
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_group_assignment_to_application"
    values={[
        { label: 'update_group_assignment_to_application', value: 'update_group_assignment_to_application' }
    ]}
>
<TabItem value="update_group_assignment_to_application">

Updates a group assignment to an app

```sql
UPDATE okta.apps.group_assignments
SET 
-- No updatable properties
WHERE 
appId = '{{ appId }}' --required
AND groupId = '{{ groupId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
_embedded,
_links,
lastUpdated,
priority,
profile;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="assign_group_to_application"
    values={[
        { label: 'assign_group_to_application', value: 'assign_group_to_application' }
    ]}
>
<TabItem value="assign_group_to_application">

Assigns a [Group](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/group) to an app, which in turn assigns the app to each [User](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/user) that belongs to the group.<br />The resulting application user [scope](https://developer.okta.com/docs/api/openapi/okta-management/management/applicationusers/listapplicationusers#applicationusers/listapplicationusers/t=response&c=200&path=scope) is `GROUP` since the assignment was from the group membership.

```sql
REPLACE okta.apps.group_assignments
SET 
priority = {{ priority }},
profile = '{{ profile }}'
WHERE 
appId = '{{ appId }}' --required
AND groupId = '{{ groupId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
_embedded,
_links,
lastUpdated,
priority,
profile;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="unassign_application_from_group"
    values={[
        { label: 'unassign_application_from_group', value: 'unassign_application_from_group' }
    ]}
>
<TabItem value="unassign_application_from_group">

Unassigns a Group from an app

```sql
DELETE FROM okta.apps.group_assignments
WHERE appId = '{{ appId }}' --required
AND groupId = '{{ groupId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
