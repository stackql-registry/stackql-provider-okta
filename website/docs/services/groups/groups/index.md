--- 
title: groups
hide_title: false
hide_table_of_contents: false
keywords:
  - groups
  - groups
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

Creates, updates, deletes, gets or lists a <code>groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="groups" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.groups.groups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_group"
    values={[
        { label: 'get_group', value: 'get_group' },
        { label: 'list_groups', value: 'list_groups' }
    ]}
>
<TabItem value="get_group">

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
<TabItem value="list_groups">

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
    <td><a href="#get_group"><CopyableCode code="get_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a specific group by `id` from your org</td>
</tr>
<tr>
    <td><a href="#list_groups"><CopyableCode code="list_groups" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-search"><code>search</code></a>, <a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-q"><code>q</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-expand"><code>expand</code></a>, <a href="#parameter-sortBy"><code>sortBy</code></a>, <a href="#parameter-sortOrder"><code>sortOrder</code></a></td>
    <td>Lists all groups with pagination support.<br /><br />&gt; **Note:** To list all groups belonging to a member, use the [List all groups endpoint in the User Resources API](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/userresources/other/listusergroups).<br /><br />The number of groups returned depends on the specified [`limit`](https://developer.okta.com/docs/api/openapi/okta-management/management/group/listgroups#group/listgroups/t=request&in=query&path=limit), if you have a search, filter, and/or query parameter set, and if that parameter is not null. We recommend using a limit less than or equal to 200.<br /><br />A subset of groups can be returned that match a supported filter expression, query, or search criteria.<br /><br />&gt; **Note:** The `search` parameter results are sourced from an eventually consistent datasource and may not reflect the latest information.</td>
</tr>
<tr>
    <td><a href="#add_group"><CopyableCode code="add_group" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Adds a new group with the `OKTA_GROUP` type to your org.<br />&gt; **Note:** App import operations are responsible for syncing groups with `APP_GROUP` type such as Active Directory groups. See<br />[About groups](https://help.okta.com/okta_help.htm?id=Directory_Groups) in the help documentation.</td>
</tr>
<tr>
    <td><a href="#replace_group"><CopyableCode code="replace_group" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the profile for a group of `OKTA_GROUP` type from your org.<br />&gt; **Note :** You only can modify profiles for groups of the `OKTA_GROUP` type.<br />&gt;<br />&gt; App imports are responsible for updating profiles for groups of the `APP_GROUP` type, such as Active Directory groups.</td>
</tr>
<tr>
    <td><a href="#delete_group"><CopyableCode code="delete_group" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a group of the `OKTA_GROUP` or `APP_GROUP` type from your org.<br />&gt; **Note:** You can't remove groups of type `APP_GROUP` if they are used in a group push mapping.</td>
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
    <td>Specifies the pagination cursor for the next page of groups. The `after` cursor should be treated as an opaque value and obtained through the next link relation. See [Pagination](https://developer.okta.com/docs/api/#pagination).</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>If specified, additional metadata is included in the response. Possible values are `stats` and `app`. This additional metadata is listed in the [`_embedded`](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Group/#tag/Group/operation/addGroup!c=200&path=_embedded&t=response) property of the response.  &gt; **Note:** You can use the `stats` value to return the number of users within a group. This is listed as the `_embedded.stats.usersCount` value in the response. See this [Knowledge Base article](https://support.okta.com/help/s/article/Is-there-an-API-that-returns-the-number-of-users-in-a-group?language=en_US) for more information and an example.</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>Filter expression for groups. See [Filter](https://developer.okta.com/docs/api/#filter).  Filtering supports the following limited number of properties: `id`, `type`, `lastUpdated`, and `lastMembershipUpdated`.  &gt; **Note:** All filters must be [URL encoded](https://developer.mozilla.org/en-US/docs/Glossary/Percent-encoding). For example, `filter=lastUpdated gt "2013-06-01T00:00:00.000Z"` is encoded as `filter=lastUpdated%20gt%20%222013-06-01T00:00:00.000Z%22`.  See [Special characters](https://developer.okta.com/docs/api/#special-characters).</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of group results in a page.  Okta recommends using a specific value other than the default or maximum. If your request times out, retry your request with a smaller `limit` and [page the results](https://developer.okta.com/docs/api/#pagination).  The Okta default `Everyone` group isn't returned for users with a group admin role.</td>
</tr>
<tr id="parameter-q">
    <td><CopyableCode code="q" /></td>
    <td><code>string</code></td>
    <td>Finds a group that matches the `name` property. &gt; **Note:** Paging and searching are currently mutually exclusive. You can't page a query. The default limit for a query is 300 results. Query is intended for an auto-complete picker use case where users refine their search string to constrain the results.</td>
</tr>
<tr id="parameter-search">
    <td><CopyableCode code="search" /></td>
    <td><code>string</code></td>
    <td>Searches for groups with a supported [filtering](https://developer.okta.com/docs/api/#filter) expression for all properties except for `_embedded`, `_links`, and `objectClass`. Okta recommends this query parameter because it provides the largest range of search options and optimal performance.  This operation supports [pagination](https://developer.okta.com/docs/api/#pagination).  The `search` string requires [URL encoding](https://developer.mozilla.org/en-US/docs/Glossary/Percent-encoding). For example, `search=type eq "OKTA_GROUP"` is encoded as `search=type+eq+%22OKTA_GROUP%22`.  This operation searches many properties:  * Any group profile attribute, including imported app group profile attributes. * The top-level properties: `id`, `created`, `lastMembershipUpdated`, `lastUpdated`, and `type`. * The [source](https://developer.okta.com/docs/api/openapi/okta-management/management/group/listgroups#group/listgroups/t=response&c=200&path=_links/source) of groups with type of `APP_GROUP`, accessed as `source.id`.  You can also use the `sortBy` and `sortOrder` parameters.  Searches for groups can be filtered by the following operators: `sw`, `eq`, and `co`. You can only use `co` with these select profile attributes: `profile.name` and `profile.description`. See [Operators](https://developer.okta.com/docs/api/#operators).</td>
</tr>
<tr id="parameter-sortBy">
    <td><CopyableCode code="sortBy" /></td>
    <td><code>string</code></td>
    <td>Specifies the field to sort by (for search queries only). `sortBy` can be any single property, for example `sortBy=profile.name`. Groups with the same value for the `sortBy` property are ordered by `id`'. Use with `sortOrder` to control the order of results.</td>
</tr>
<tr id="parameter-sortOrder">
    <td><CopyableCode code="sortOrder" /></td>
    <td><code>string</code></td>
    <td>Specifies sort order: `asc` or `desc` (for search queries only). This parameter is ignored if `sortBy` isn't present.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_group"
    values={[
        { label: 'get_group', value: 'get_group' },
        { label: 'list_groups', value: 'list_groups' }
    ]}
>
<TabItem value="get_group">

Retrieves a specific group by `id` from your org

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
FROM okta.groups.groups
WHERE groupId = '{{ groupId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_groups">

Lists all groups with pagination support.<br /><br />&gt; **Note:** To list all groups belonging to a member, use the [List all groups endpoint in the User Resources API](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/userresources/other/listusergroups).<br /><br />The number of groups returned depends on the specified [`limit`](https://developer.okta.com/docs/api/openapi/okta-management/management/group/listgroups#group/listgroups/t=request&in=query&path=limit), if you have a search, filter, and/or query parameter set, and if that parameter is not null. We recommend using a limit less than or equal to 200.<br /><br />A subset of groups can be returned that match a supported filter expression, query, or search criteria.<br /><br />&gt; **Note:** The `search` parameter results are sourced from an eventually consistent datasource and may not reflect the latest information.

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
FROM okta.groups.groups
WHERE subdomain = '{{ subdomain }}' -- required
AND search = '{{ search }}'
AND filter = '{{ filter }}'
AND q = '{{ q }}'
AND after = '{{ after }}'
AND limit = '{{ limit }}'
AND expand = '{{ expand }}'
AND sortBy = '{{ sortBy }}'
AND sortOrder = '{{ sortOrder }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="add_group"
    values={[
        { label: 'add_group', value: 'add_group' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="add_group">

Adds a new group with the `OKTA_GROUP` type to your org.<br />&gt; **Note:** App import operations are responsible for syncing groups with `APP_GROUP` type such as Active Directory groups. See<br />[About groups](https://help.okta.com/okta_help.htm?id=Directory_Groups) in the help documentation.

```sql
INSERT INTO okta.groups.groups (
profile,
subdomain
)
SELECT 
'{{ profile }}',
'{{ subdomain }}'
RETURNING
id,
_embedded,
_links,
created,
lastMembershipUpdated,
lastUpdated,
objectClass,
profile,
type
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: groups
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the groups resource.
    - name: profile
      description: |
        Profile for any group that is not imported from Active Directory. Specifies the standard
        and custom profile properties for a group.
        The \`objectClass\` for these groups is \`okta:user_group\`.
        You can extend group profiles with custom properties, but you must first add the properties to the group profile schema before you can reference them. Use the Profile Editor in the Admin Console or the [Schemas API](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Schema/) to manage schema extensions.
        Custom properties can contain HTML tags. It is the client's responsibility to escape or encode this data before displaying it. Use [best-practices](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html) to prevent cross-site scripting.
      value:
        description: "{{ description }}"
        name: "{{ name }}"
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_group"
    values={[
        { label: 'replace_group', value: 'replace_group' }
    ]}
>
<TabItem value="replace_group">

Replaces the profile for a group of `OKTA_GROUP` type from your org.<br />&gt; **Note :** You only can modify profiles for groups of the `OKTA_GROUP` type.<br />&gt;<br />&gt; App imports are responsible for updating profiles for groups of the `APP_GROUP` type, such as Active Directory groups.

```sql
REPLACE okta.groups.groups
SET 
profile = '{{ profile }}'
WHERE 
groupId = '{{ groupId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
_embedded,
_links,
created,
lastMembershipUpdated,
lastUpdated,
objectClass,
profile,
type;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_group"
    values={[
        { label: 'delete_group', value: 'delete_group' }
    ]}
>
<TabItem value="delete_group">

Deletes a group of the `OKTA_GROUP` or `APP_GROUP` type from your org.<br />&gt; **Note:** You can't remove groups of type `APP_GROUP` if they are used in a group push mapping.

```sql
DELETE FROM okta.groups.groups
WHERE groupId = '{{ groupId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
