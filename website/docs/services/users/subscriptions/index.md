--- 
title: subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - subscriptions
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

Creates, updates, deletes, gets or lists a <code>subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="subscriptions" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.users.subscriptions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_subscriptions_notification_type_user"
    values={[
        { label: 'get_subscriptions_notification_type_user', value: 'get_subscriptions_notification_type_user' },
        { label: 'list_subscriptions_user', value: 'list_subscriptions_user' }
    ]}
>
<TabItem value="get_subscriptions_notification_type_user">

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
<TabItem value="list_subscriptions_user">

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
    <td><a href="#get_subscriptions_notification_type_user"><CopyableCode code="get_subscriptions_notification_type_user" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-notificationType"><code>notificationType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a subscription by `notificationType` for a specified user. Returns an `AccessDeniedException` message if requests are made for another user.</td>
</tr>
<tr>
    <td><a href="#list_subscriptions_user"><CopyableCode code="list_subscriptions_user" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all subscriptions available to a specified user. Returns an `AccessDeniedException` message if requests are made for another user.</td>
</tr>
<tr>
    <td><a href="#subscribe_by_notification_type_user"><CopyableCode code="subscribe_by_notification_type_user" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-notificationType"><code>notificationType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Subscribes the current user to a specified notification type. Returns an `AccessDeniedException` message if requests are made for another user.</td>
</tr>
<tr>
    <td><a href="#unsubscribe_by_notification_type_user"><CopyableCode code="unsubscribe_by_notification_type_user" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-notificationType"><code>notificationType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unsubscribes the current user from a specified notification type. Returns an `AccessDeniedException` message if requests are made for another user.</td>
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
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-userId">
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_subscriptions_notification_type_user"
    values={[
        { label: 'get_subscriptions_notification_type_user', value: 'get_subscriptions_notification_type_user' },
        { label: 'list_subscriptions_user', value: 'list_subscriptions_user' }
    ]}
>
<TabItem value="get_subscriptions_notification_type_user">

Retrieves a subscription by `notificationType` for a specified user. Returns an `AccessDeniedException` message if requests are made for another user.

```sql
SELECT
_links,
channels,
notificationType,
status
FROM okta.users.subscriptions
WHERE userId = '{{ userId }}' -- required
AND notificationType = '{{ notificationType }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_subscriptions_user">

Lists all subscriptions available to a specified user. Returns an `AccessDeniedException` message if requests are made for another user.

```sql
SELECT
_links,
channels,
notificationType,
status
FROM okta.users.subscriptions
WHERE userId = '{{ userId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="subscribe_by_notification_type_user"
    values={[
        { label: 'subscribe_by_notification_type_user', value: 'subscribe_by_notification_type_user' },
        { label: 'unsubscribe_by_notification_type_user', value: 'unsubscribe_by_notification_type_user' }
    ]}
>
<TabItem value="subscribe_by_notification_type_user">

Subscribes the current user to a specified notification type. Returns an `AccessDeniedException` message if requests are made for another user.

```sql
EXEC okta.users.subscriptions.subscribe_by_notification_type_user 
@userId='{{ userId }}' --required, 
@notificationType='{{ notificationType }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="unsubscribe_by_notification_type_user">

Unsubscribes the current user from a specified notification type. Returns an `AccessDeniedException` message if requests are made for another user.

```sql
EXEC okta.users.subscriptions.unsubscribe_by_notification_type_user 
@userId='{{ userId }}' --required, 
@notificationType='{{ notificationType }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
