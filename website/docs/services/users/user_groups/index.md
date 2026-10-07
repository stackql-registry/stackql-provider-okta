--- 
title: user_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - user_groups
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

Creates, updates, deletes, gets or lists a <code>user_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="user_groups" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.users.user_groups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_user_groups"
    values={[
        { label: 'list_user_groups', value: 'list_user_groups' }
    ]}
>
<TabItem value="list_user_groups">

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
    <td>Unique ID for the group (example: 0gabcd1234)</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resources related to the group</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>[Discoverable resources](https://developer.okta.com/docs/api/openapi/okta-management/management/group/listgroups#group/listgroups/t=response&c=200&path=_links/source) related to the group</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the group was created</td>
</tr>
<tr>
    <td><CopyableCode code="lastMembershipUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the groups memberships were last updated</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the group's profile was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="objectClass" /></td>
    <td><code>array</code></td>
    <td>Determines the group's `profile`</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>Profile for any group that is not imported from Active Directory. Specifies the standard and custom profile properties for a group.  The `objectClass` for these groups is `okta:user_group`.  You can extend group profiles with custom properties, but you must first add the properties to the group profile schema before you can reference them. Use the Profile Editor in the Admin Console or the [Schemas API](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Schema/) to manage schema extensions.  Custom properties can contain HTML tags. It is the client's responsibility to escape or encode this data before displaying it. Use [best-practices](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html) to prevent cross-site scripting.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Determines how a group's profile and memberships are managed (APP_GROUP, BUILT_IN, OKTA_GROUP)</td>
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
    <td><a href="#list_user_groups"><CopyableCode code="list_user_groups" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all groups of which the user is a member<br />&gt; **Note:** To list all groups in your org, use the [List all groups endpoints in the Groups API](https://developer.okta.com/docs/api/openapi/okta-management/management/group/listgroups).</td>
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
    <td>An ID, login, or login shortname (as long as the shortname is unambiguous) of an existing Okta user</td>
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
    defaultValue="list_user_groups"
    values={[
        { label: 'list_user_groups', value: 'list_user_groups' }
    ]}
>
<TabItem value="list_user_groups">

Lists all groups of which the user is a member<br />&gt; **Note:** To list all groups in your org, use the [List all groups endpoints in the Groups API](https://developer.okta.com/docs/api/openapi/okta-management/management/group/listgroups).

```sql
SELECT
id,
_embedded,
_links,
created,
lastMembershipUpdated,
lastUpdated,
objectClass,
profile,
type
FROM okta.users.user_groups
WHERE id = '{{ id }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
