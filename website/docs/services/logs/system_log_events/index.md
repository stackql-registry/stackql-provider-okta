--- 
title: system_log_events
hide_title: false
hide_table_of_contents: false
keywords:
  - system_log_events
  - logs
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

Creates, updates, deletes, gets or lists a <code>system_log_events</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="system_log_events" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.logs.system_log_events" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_log_events"
    values={[
        { label: 'list_log_events', value: 'list_log_events' }
    ]}
>
<TabItem value="list_log_events">

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
    <td><CopyableCode code="actor" /></td>
    <td><code>object</code></td>
    <td>Describes the user, app, client, or other entity (actor) who performs an action on a target. The actor is dependent on the action that is performed. All events have actors.</td>
</tr>
<tr>
    <td><CopyableCode code="authenticationContext" /></td>
    <td><code>object</code></td>
    <td>All authentication relies on validating one or more credentials that prove the authenticity of the actor's identity. Credentials are sometimes provided by the actor, as is the case with passwords, and at other times provided by a third party, and validated by the authentication provider.  The authenticationContext contains metadata about how the actor is authenticated. For example, an authenticationContext for an event, where a user authenticates with Integrated Windows Authentication (IWA), looks like the following: ``` &#123;     "authenticationProvider": "ACTIVE_DIRECTORY",     "authenticationStep": 0,     "credentialProvider": null,     "credentialType": "IWA",     "externalSessionId": "102N1EKyPFERROGvK9wizMAPQ",     "interface": null,     "issuer": null &#125; ``` In this case, the user enters an IWA credential to authenticate against an Active Directory instance. All of the user's future-generated events in this sign-in session are going to share the same `externalSessionId`.  Among other operations, this response object can be used to scan for suspicious sign-in activity or perform analytics on user authentication habits (for example, how often authentication scheme X is used versus authentication scheme Y).</td>
</tr>
<tr>
    <td><CopyableCode code="client" /></td>
    <td><code>object</code></td>
    <td>When an event is triggered by an HTTP request, the `client` object describes the [client](https://datatracker.ietf.org/doc/html/rfc2616) that issues the HTTP request. For instance, the web browser is the client when a user accesses Okta. When this request is received and processed, a sign-in event is fired. When the event isn't sourced to an HTTP request, such as an automatic update, the `client` object field is blank.</td>
</tr>
<tr>
    <td><CopyableCode code="debugContext" /></td>
    <td><code>object</code></td>
    <td>For some kinds of events (for example, OLM provisioning, sign-in request, second factor SMS, and so on), the fields that are provided in other response objects aren't sufficient to adequately describe the operations that the event has performed. In such cases, the `debugContext` object provides a way to store additional information.  For example, an event where a second factor SMS token is sent to a user may have a `debugContext` that looks like the following: ``` &#123;     "debugData": &#123;         "requestUri": "/api/v1/users/00u3gjksoiRGRAZHLSYV/factors/smsf8luacpZJAva10x45/verify",         "smsProvider": "TELESIGN",         "transactionId": "268632458E3C100F5F5F594C6DC689D4"     &#125; &#125; ``` By inspecting the debugData field, you can find the URI that is used to trigger the second factor SMS (`/api/v1/users/00u3gjksoiRGRAZHLSYV/factors/smsf8luacpZJAva10x45/verify`), the SMS provider (`TELESIGN`), and the ID used by Telesign to identify this transaction (`268632458E3C100F5F5F594C6DC689D4`).  If for some reason the information that is needed to implement a feature isn't provided in other response objects, you should scan the `debugContext.debugData` field for potentially useful fields. &gt; **Important:** The information contained in `debugContext.debugData` is intended to add context when troubleshooting customer platform issues. Both key names and values may change from release to release and aren't guaranteed to be stable. Therefore, they shouldn't be viewed as a data contract but as a debugging aid instead.</td>
</tr>
<tr>
    <td><CopyableCode code="displayMessage" /></td>
    <td><code>string</code></td>
    <td>The display message for an event</td>
</tr>
<tr>
    <td><CopyableCode code="eventType" /></td>
    <td><code>string</code></td>
    <td>The published event type. Event instances are categorized by action in the event type attribute. This attribute is key to navigating the System Log through expression filters. See [Event Types catalog](https://developer.okta.com/docs/reference/api/event-types/#catalog) for a complete list of System Log event types.</td>
</tr>
<tr>
    <td><CopyableCode code="legacyEventType" /></td>
    <td><code>string</code></td>
    <td>Associated Events API Action `objectType` attribute value</td>
</tr>
<tr>
    <td><CopyableCode code="outcome" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="published" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the event is published</td>
</tr>
<tr>
    <td><CopyableCode code="request" /></td>
    <td><code>object</code></td>
    <td>The `Request` object describes details that are related to the HTTP request that triggers this event, if available. When the event isn't sourced to an HTTP request, such as an automatic update on the Okta servers, the `Request` object still exists, but the `ipChain` field is empty.</td>
</tr>
<tr>
    <td><CopyableCode code="securityContext" /></td>
    <td><code>object</code></td>
    <td>The `securityContext` object provides security information that is directly related to the evaluation of the event's IP reputation. IP reputation is a trustworthiness rating that evaluates how likely a sender is to be malicious and is based on the sender's IP address. As the name implies, the `securityContext` object is useful for security applications-flagging and inspecting suspicious events.</td>
</tr>
<tr>
    <td><CopyableCode code="severity" /></td>
    <td><code>string</code></td>
    <td>Indicates how severe the event is (DEBUG, ERROR, INFO, WARN)</td>
</tr>
<tr>
    <td><CopyableCode code="target" /></td>
    <td><code>array</code></td>
    <td>The entity that an actor performs an action on. Targets can be anything, such as an app user, a sign-in token, or anything else.  &gt; **Note:** When searching the target array, search for a given `type` rather than the array location. Target types, such as `User` and `AppInstance`, for a given `eventType` are not always in the same array location.</td>
</tr>
<tr>
    <td><CopyableCode code="transaction" /></td>
    <td><code>object</code></td>
    <td>A `transaction` object comprises contextual information associated with its respective event. This information is useful for understanding sequences of correlated events. For example, a `transaction` object such as the following: ``` &#123;   "id": "Wn4f-0RQ8D8lTSLkAmkKdQAADqo",   "type": "WEB",   "detail": null &#125; ``` indicates that a `WEB` request with `id` `Wn4f-0RQ8D8lTSLkAmkKdQAADqo` has created this event.  A `transaction` object with a `requestApiTokenId` in the `detail` object, for example : ``` &#123;   "id": "YjSlblAAqnKY7CdyCkXNBgAAAIU",   "type": "WEB",   "detail": &#123;     "requestApiTokenId": "00T94e3cn9kSEO3c51s5"   &#125; &#125; ``` indicates that this event was the result of an action performed through an API using the token identified by 00T94e3cn9kSEO3c51s5. The token ID is visible in the Admin Console, **Security** &gt; **API**. See [API token management](https://help.okta.com/okta_help.htm?id=Security_API). For more information on API tokens, see [Create an API token](https://developer.okta.com/docs/guides/create-an-api-token/).</td>
</tr>
<tr>
    <td><CopyableCode code="uuid" /></td>
    <td><code>string</code></td>
    <td>Unique identifier for an individual event</td>
</tr>
<tr>
    <td><CopyableCode code="version" /></td>
    <td><code>string</code></td>
    <td>Versioning indicator</td>
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
    <td><a href="#list_log_events"><CopyableCode code="list_log_events" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-since"><code>since</code></a>, <a href="#parameter-until"><code>until</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-q"><code>q</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-sortOrder"><code>sortOrder</code></a></td>
    <td>Lists all System Log events<br /><br />See [System Log query](https://developer.okta.com/docs/reference/system-log-query/) for further details and examples, and [System Log filters and search](https://help.okta.com/okta_help.htm?type=oie&id=csh-syslog-filters) for common use cases.<br /><br />By default, 100 System Log events are returned. If there are more events, see the [header link](https://developer.okta.com/docs/api/#link-header) for the `next` link,<br />or increase the number of returned objects using the `limit` parameter.<br /><br />&gt;**Note:** The value of the `clientSecret` property in the System Log is secured by a hashing function, and isn't the value used during authentication.</td>
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
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string (Opaque token)</code></td>
    <td>Retrieves the next page of results. Okta returns a link in the HTTP Header (`rel=next`) that includes the after query parameter</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string (SCIM Filter expression)</code></td>
    <td>Filter expression that filters the results. All operators except [ ] are supported. See [Filter](https://developer.okta.com/docs/api/#filter) and [Operators](https://developer.okta.com/docs/api/#operators).</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (Integer between 0 and 1000)</code></td>
    <td>Sets the number of results that are returned in the response</td>
</tr>
<tr id="parameter-q">
    <td><CopyableCode code="q" /></td>
    <td><code>string (URL encoded string. Max length is 40 characters per keyword, with a maximum of 10 keyword filters per query (before encoding))</code></td>
    <td>Filters log events results by one or more case insensitive keywords.</td>
</tr>
<tr id="parameter-since">
    <td><CopyableCode code="since" /></td>
    <td><code>string (ISO 8601 compliant timestamp)</code></td>
    <td>Filters the lower time bound of the log events `published` property for bounded queries or persistence time for polling queries</td>
</tr>
<tr id="parameter-sortOrder">
    <td><CopyableCode code="sortOrder" /></td>
    <td><code>string</code></td>
    <td>The order of the returned events that are sorted by the `published` property</td>
</tr>
<tr id="parameter-until">
    <td><CopyableCode code="until" /></td>
    <td><code>string (ISO 8601 compliant timestamp)</code></td>
    <td>Filters the upper time bound of the log events `published` property for bounded queries or persistence time for polling queries.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_log_events"
    values={[
        { label: 'list_log_events', value: 'list_log_events' }
    ]}
>
<TabItem value="list_log_events">

Lists all System Log events<br /><br />See [System Log query](https://developer.okta.com/docs/reference/system-log-query/) for further details and examples, and [System Log filters and search](https://help.okta.com/okta_help.htm?type=oie&id=csh-syslog-filters) for common use cases.<br /><br />By default, 100 System Log events are returned. If there are more events, see the [header link](https://developer.okta.com/docs/api/#link-header) for the `next` link,<br />or increase the number of returned objects using the `limit` parameter.<br /><br />&gt;**Note:** The value of the `clientSecret` property in the System Log is secured by a hashing function, and isn't the value used during authentication.

```sql
SELECT
actor,
authenticationContext,
client,
debugContext,
displayMessage,
eventType,
legacyEventType,
outcome,
published,
request,
securityContext,
severity,
target,
transaction,
uuid,
version
FROM okta.logs.system_log_events
WHERE subdomain = '{{ subdomain }}' -- required
AND since = '{{ since }}'
AND until = '{{ until }}'
AND after = '{{ after }}'
AND filter = '{{ filter }}'
AND q = '{{ q }}'
AND limit = '{{ limit }}'
AND sortOrder = '{{ sortOrder }}'
;
```
</TabItem>
</Tabs>
