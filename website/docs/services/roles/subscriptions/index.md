--- 
title: subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - subscriptions
  - roles
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

Creates, updates, deletes, gets or lists a <code>subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="subscriptions" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.roles.subscriptions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_subscriptions_notification_type_role"
    values={[
        { label: 'get_subscriptions_notification_type_role', value: 'get_subscriptions_notification_type_role' },
        { label: 'list_subscriptions_role', value: 'list_subscriptions_role' }
    ]}
>
<TabItem value="get_subscriptions_notification_type_role">

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
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Discoverable resources related to the subscription</td>
</tr>
<tr>
    <td><CopyableCode code="channels" /></td>
    <td><code>array</code></td>
    <td>An array of sources send notifications to users. &gt; **Note**: Currently, Okta only allows `email` channels.</td>
</tr>
<tr>
    <td><CopyableCode code="notificationType" /></td>
    <td><code>string</code></td>
    <td>The type of notification (AD_AGENT, AGENT_AUTO_UPDATE_NOTIFICATION, AGENT_AUTO_UPDATE_NOTIFICATION_LDAP, APP_IMPORT, CONNECTOR_AGENT, IWA_AGENT, LDAP_AGENT, OKTA_ANNOUNCEMENT, OKTA_UPDATE, RATELIMIT_NOTIFICATION, REPORT_SUSPICIOUS_ACTIVITY, USER_DEPROVISION, USER_LOCKED_OUT)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the subscription (subscribed, unsubscribed)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_subscriptions_role">

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
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Discoverable resources related to the subscription</td>
</tr>
<tr>
    <td><CopyableCode code="channels" /></td>
    <td><code>array</code></td>
    <td>An array of sources send notifications to users. &gt; **Note**: Currently, Okta only allows `email` channels.</td>
</tr>
<tr>
    <td><CopyableCode code="notificationType" /></td>
    <td><code>string</code></td>
    <td>The type of notification (AD_AGENT, AGENT_AUTO_UPDATE_NOTIFICATION, AGENT_AUTO_UPDATE_NOTIFICATION_LDAP, APP_IMPORT, CONNECTOR_AGENT, IWA_AGENT, LDAP_AGENT, OKTA_ANNOUNCEMENT, OKTA_UPDATE, RATELIMIT_NOTIFICATION, REPORT_SUSPICIOUS_ACTIVITY, USER_DEPROVISION, USER_LOCKED_OUT)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the subscription (subscribed, unsubscribed)</td>
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
    <td><a href="#get_subscriptions_notification_type_role"><CopyableCode code="get_subscriptions_notification_type_role" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-roleRef"><code>roleRef</code></a>, <a href="#parameter-notificationType"><code>notificationType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a subscription by `notificationType` for a specified Role</td>
</tr>
<tr>
    <td><a href="#list_subscriptions_role"><CopyableCode code="list_subscriptions_role" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-roleRef"><code>roleRef</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all subscriptions available to a specified Role</td>
</tr>
<tr>
    <td><a href="#subscribe_by_notification_type_role"><CopyableCode code="subscribe_by_notification_type_role" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-roleRef"><code>roleRef</code></a>, <a href="#parameter-notificationType"><code>notificationType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Subscribes a Role to a specified notification type. Changes to Role subscriptions override the subscription status of any individual users with the Role.</td>
</tr>
<tr>
    <td><a href="#unsubscribe_by_notification_type_role"><CopyableCode code="unsubscribe_by_notification_type_role" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-roleRef"><code>roleRef</code></a>, <a href="#parameter-notificationType"><code>notificationType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unsubscribes a Role from a specified notification type. Changes to Role subscriptions override the subscription status of any individual users with the Role.</td>
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
<tr id="parameter-notificationType">
    <td><CopyableCode code="notificationType" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-roleRef">
    <td><CopyableCode code="roleRef" /></td>
    <td><code></code></td>
    <td>A reference to an existing role. Standard roles require a `roleType`, while Custom Roles require a `roleId`. See [Standard roles](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles).</td>
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
    defaultValue="get_subscriptions_notification_type_role"
    values={[
        { label: 'get_subscriptions_notification_type_role', value: 'get_subscriptions_notification_type_role' },
        { label: 'list_subscriptions_role', value: 'list_subscriptions_role' }
    ]}
>
<TabItem value="get_subscriptions_notification_type_role">

Retrieves a subscription by `notificationType` for a specified Role

```sql
SELECT
_links,
channels,
notificationType,
status
FROM okta.roles.subscriptions
WHERE roleRef = '{{ roleRef }}' -- required
AND notificationType = '{{ notificationType }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_subscriptions_role">

Lists all subscriptions available to a specified Role

```sql
SELECT
_links,
channels,
notificationType,
status
FROM okta.roles.subscriptions
WHERE roleRef = '{{ roleRef }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="subscribe_by_notification_type_role"
    values={[
        { label: 'subscribe_by_notification_type_role', value: 'subscribe_by_notification_type_role' },
        { label: 'unsubscribe_by_notification_type_role', value: 'unsubscribe_by_notification_type_role' }
    ]}
>
<TabItem value="subscribe_by_notification_type_role">

Subscribes a Role to a specified notification type. Changes to Role subscriptions override the subscription status of any individual users with the Role.

```sql
EXEC okta.roles.subscriptions.subscribe_by_notification_type_role 
@roleRef='{{ roleRef }}' --required, 
@notificationType='{{ notificationType }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="unsubscribe_by_notification_type_role">

Unsubscribes a Role from a specified notification type. Changes to Role subscriptions override the subscription status of any individual users with the Role.

```sql
EXEC okta.roles.subscriptions.unsubscribe_by_notification_type_role 
@roleRef='{{ roleRef }}' --required, 
@notificationType='{{ notificationType }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
