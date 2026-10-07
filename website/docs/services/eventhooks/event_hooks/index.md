--- 
title: event_hooks
hide_title: false
hide_table_of_contents: false
keywords:
  - event_hooks
  - eventhooks
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

Creates, updates, deletes, gets or lists an <code>event_hooks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="event_hooks" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.eventhooks.event_hooks" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_event_hook"
    values={[
        { label: 'get_event_hook', value: 'get_event_hook' },
        { label: 'list_event_hooks', value: 'list_event_hooks' }
    ]}
>
<TabItem value="get_event_hook">

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
    <td>Unique key for the event hook</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Display name for the event hook</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="channel" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp of the event hook creation</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>The ID of the user who created the event hook</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the event hook</td>
</tr>
<tr>
    <td><CopyableCode code="events" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Date of the last event hook update</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the event hook (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="verificationStatus" /></td>
    <td><code>string</code></td>
    <td>Verification status of the event hook. `UNVERIFIED` event hooks won't receive any events. (UNVERIFIED, VERIFIED)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_event_hooks">

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
    <td>Unique key for the event hook</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Display name for the event hook</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="channel" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp of the event hook creation</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>The ID of the user who created the event hook</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the event hook</td>
</tr>
<tr>
    <td><CopyableCode code="events" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Date of the last event hook update</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the event hook (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="verificationStatus" /></td>
    <td><code>string</code></td>
    <td>Verification status of the event hook. `UNVERIFIED` event hooks won't receive any events. (UNVERIFIED, VERIFIED)</td>
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
    <td><a href="#get_event_hook"><CopyableCode code="get_event_hook" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-eventHookId"><code>eventHookId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an event hook</td>
</tr>
<tr>
    <td><a href="#list_event_hooks"><CopyableCode code="list_event_hooks" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all event hooks</td>
</tr>
<tr>
    <td><a href="#create_event_hook"><CopyableCode code="create_event_hook" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-events"><code>events</code></a>, <a href="#parameter-channel"><code>channel</code></a></td>
    <td></td>
    <td>Creates a new event hook for your organization in `ACTIVE` status. You pass an event hook object in the JSON payload<br />of your request. That object represents the set of required information about the event hook you're registering, including:<br />  * The URI of your external service<br />  * The [events](https://developer.okta.com/docs/reference/api/event-types/) in Okta you want to subscribe to<br />  * An optional event hook filter that can reduce the number of event hook calls. This is a self-service Early Access (EA) feature.<br />    See [Create an event hook filter](https://developer.okta.com/docs/concepts/event-hooks/#create-an-event-hook-filter).<br /><br />    Additionally, you can specify a secret API key for Okta to pass to your external service endpoint for security verification. Note that the API key you set here is unrelated to the Okta API token<br />you must supply when making calls to Okta APIs. Optionally, you can specify extra headers that Okta passes to your external<br />service with each call.<br />Your external service must use a valid HTTPS endpoint.</td>
</tr>
<tr>
    <td><a href="#replace_event_hook"><CopyableCode code="replace_event_hook" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-eventHookId"><code>eventHookId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-events"><code>events</code></a>, <a href="#parameter-channel"><code>channel</code></a></td>
    <td></td>
    <td>Replaces an event hook. Okta validates the new properties before replacing the existing values.<br />Some event hook properties are immutable and can't be updated. Refer to the parameter description in the request body schema.<br /><br />&gt;**Note:** Updating the `channel` property requires you to verify the hook again.</td>
</tr>
<tr>
    <td><a href="#delete_event_hook"><CopyableCode code="delete_event_hook" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-eventHookId"><code>eventHookId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes the event hook that matches the provided `id`. After deletion, the event hook is unrecoverable.<br />As a safety precaution, you can only delete event hooks with a status of `INACTIVE`.</td>
</tr>
<tr>
    <td><a href="#activate_event_hook"><CopyableCode code="activate_event_hook" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-eventHookId"><code>eventHookId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates the event hook that matches the provided `id`</td>
</tr>
<tr>
    <td><a href="#deactivate_event_hook"><CopyableCode code="deactivate_event_hook" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-eventHookId"><code>eventHookId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates the event hook that matches the provided `id`</td>
</tr>
<tr>
    <td><a href="#verify_event_hook"><CopyableCode code="verify_event_hook" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-eventHookId"><code>eventHookId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Verifies that the event hook matches the provided `eventHookId`. To verify ownership, your endpoint must send information back to Okta in JSON format. See [Event hooks](https://developer.okta.com/docs/concepts/event-hooks/#one-time-verification-request).<br /><br />Only `ACTIVE` and `VERIFIED` event hooks can receive events from Okta.<br /><br />If a response is not received within 3 seconds, the outbound request times out. One retry is attempted after a timeout or error response.<br />If a successful response still isn't received, this operation returns a 400 error with more information about the failure.</td>
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
<tr id="parameter-eventHookId">
    <td><CopyableCode code="eventHookId" /></td>
    <td><code>string</code></td>
    <td>`id` of the Event Hook</td>
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
    defaultValue="get_event_hook"
    values={[
        { label: 'get_event_hook', value: 'get_event_hook' },
        { label: 'list_event_hooks', value: 'list_event_hooks' }
    ]}
>
<TabItem value="get_event_hook">

Retrieves an event hook

```sql
SELECT
id,
name,
_links,
channel,
created,
createdBy,
description,
events,
lastUpdated,
status,
verificationStatus
FROM okta.eventhooks.event_hooks
WHERE eventHookId = '{{ eventHookId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_event_hooks">

Lists all event hooks

```sql
SELECT
id,
name,
_links,
channel,
created,
createdBy,
description,
events,
lastUpdated,
status,
verificationStatus
FROM okta.eventhooks.event_hooks
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_event_hook"
    values={[
        { label: 'create_event_hook', value: 'create_event_hook' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_event_hook">

Creates a new event hook for your organization in `ACTIVE` status. You pass an event hook object in the JSON payload<br />of your request. That object represents the set of required information about the event hook you're registering, including:<br />  * The URI of your external service<br />  * The [events](https://developer.okta.com/docs/reference/api/event-types/) in Okta you want to subscribe to<br />  * An optional event hook filter that can reduce the number of event hook calls. This is a self-service Early Access (EA) feature.<br />    See [Create an event hook filter](https://developer.okta.com/docs/concepts/event-hooks/#create-an-event-hook-filter).<br /><br />    Additionally, you can specify a secret API key for Okta to pass to your external service endpoint for security verification. Note that the API key you set here is unrelated to the Okta API token<br />you must supply when making calls to Okta APIs. Optionally, you can specify extra headers that Okta passes to your external<br />service with each call.<br />Your external service must use a valid HTTPS endpoint.

```sql
INSERT INTO okta.eventhooks.event_hooks (
channel,
description,
events,
name,
subdomain
)
SELECT 
'{{ channel }}' /* required */,
'{{ description }}',
'{{ events }}' /* required */,
'{{ name }}' /* required */,
'{{ subdomain }}'
RETURNING
id,
name,
_links,
channel,
created,
createdBy,
description,
events,
lastUpdated,
status,
verificationStatus
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: event_hooks
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the event_hooks resource.
    - name: channel
      value:
        config:
          authScheme:
            key: "{{ key }}"
            type: "{{ type }}"
            value: "{{ value }}"
          headers:
            - key: "{{ key }}"
              value: "{{ value }}"
          method: "{{ method }}"
          uri: "{{ uri }}"
        type: "{{ type }}"
        version: "{{ version }}"
    - name: description
      value: "{{ description }}"
      description: |
        Description of the event hook
    - name: events
      value:
        filter:
          eventFilterMap:
            - condition:
                expression: "{{ expression }}"
                version: "{{ version }}"
              event: "{{ event }}"
          type: "{{ type }}"
        items:
          - "{{ items }}"
        type: "{{ type }}"
    - name: name
      value: "{{ name }}"
      description: |
        Display name for the event hook
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_event_hook"
    values={[
        { label: 'replace_event_hook', value: 'replace_event_hook' }
    ]}
>
<TabItem value="replace_event_hook">

Replaces an event hook. Okta validates the new properties before replacing the existing values.<br />Some event hook properties are immutable and can't be updated. Refer to the parameter description in the request body schema.<br /><br />&gt;**Note:** Updating the `channel` property requires you to verify the hook again.

```sql
REPLACE okta.eventhooks.event_hooks
SET 
channel = '{{ channel }}',
description = '{{ description }}',
events = '{{ events }}',
name = '{{ name }}'
WHERE 
eventHookId = '{{ eventHookId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND name = '{{ name }}' --required
AND events = '{{ events }}' --required
AND channel = '{{ channel }}' --required
RETURNING
id,
name,
_links,
channel,
created,
createdBy,
description,
events,
lastUpdated,
status,
verificationStatus;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_event_hook"
    values={[
        { label: 'delete_event_hook', value: 'delete_event_hook' }
    ]}
>
<TabItem value="delete_event_hook">

Deletes the event hook that matches the provided `id`. After deletion, the event hook is unrecoverable.<br />As a safety precaution, you can only delete event hooks with a status of `INACTIVE`.

```sql
DELETE FROM okta.eventhooks.event_hooks
WHERE eventHookId = '{{ eventHookId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_event_hook"
    values={[
        { label: 'activate_event_hook', value: 'activate_event_hook' },
        { label: 'deactivate_event_hook', value: 'deactivate_event_hook' },
        { label: 'verify_event_hook', value: 'verify_event_hook' }
    ]}
>
<TabItem value="activate_event_hook">

Activates the event hook that matches the provided `id`

```sql
EXEC okta.eventhooks.event_hooks.activate_event_hook 
@eventHookId='{{ eventHookId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_event_hook">

Deactivates the event hook that matches the provided `id`

```sql
EXEC okta.eventhooks.event_hooks.deactivate_event_hook 
@eventHookId='{{ eventHookId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="verify_event_hook">

Verifies that the event hook matches the provided `eventHookId`. To verify ownership, your endpoint must send information back to Okta in JSON format. See [Event hooks](https://developer.okta.com/docs/concepts/event-hooks/#one-time-verification-request).<br /><br />Only `ACTIVE` and `VERIFIED` event hooks can receive events from Okta.<br /><br />If a response is not received within 3 seconds, the outbound request times out. One retry is attempted after a timeout or error response.<br />If a successful response still isn't received, this operation returns a 400 error with more information about the failure.

```sql
EXEC okta.eventhooks.event_hooks.verify_event_hook 
@eventHookId='{{ eventHookId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
