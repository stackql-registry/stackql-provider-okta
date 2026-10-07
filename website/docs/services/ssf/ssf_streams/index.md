--- 
title: ssf_streams
hide_title: false
hide_table_of_contents: false
keywords:
  - ssf_streams
  - ssf
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

Creates, updates, deletes, gets or lists a <code>ssf_streams</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="ssf_streams" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.ssf.ssf_streams" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_ssf_streams"
    values={[
        { label: 'get_ssf_streams', value: 'get_ssf_streams' }
    ]}
>
<TabItem value="get_ssf_streams">

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
    <td><CopyableCode code="stream_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the SSF stream configuration (example: esc1k235GIIztAuGK0g5)</td>
</tr>
<tr>
    <td><CopyableCode code="aud" /></td>
    <td><code>string (uri)</code></td>
    <td>The audience used in the SET. This value is set as `aud` in the claim.  A read-only parameter that is set by the transmitter. If this parameter is included in the request, the value must match the expected value from the transmitter. (example: https://example.com)</td>
</tr>
<tr>
    <td><CopyableCode code="delivery" /></td>
    <td><code>object</code></td>
    <td>Contains information about the intended SET delivery method by the receiver (title: Stream configuration delivery)</td>
</tr>
<tr>
    <td><CopyableCode code="events_delivered" /></td>
    <td><code>array</code></td>
    <td>The events (mapped by the array of event type URIs) that the transmitter actually delivers to the SSF stream.  A read-only parameter that is set by the transmitter. If this parameter is included in the request, the value must match the expected value from the transmitter.</td>
</tr>
<tr>
    <td><CopyableCode code="events_requested" /></td>
    <td><code>array</code></td>
    <td>The events (mapped by the array of event type URIs) that the receiver wants to receive</td>
</tr>
<tr>
    <td><CopyableCode code="events_supported" /></td>
    <td><code>array</code></td>
    <td>An array of event type URIs that the transmitter supports.  A read-only parameter that is set by the transmitter. If this parameter is included in the request, the value must match the expected value from the transmitter.</td>
</tr>
<tr>
    <td><CopyableCode code="format" /></td>
    <td><code>string</code></td>
    <td>The subject identifier format expected for any SET transmitted. (iss_sub)</td>
</tr>
<tr>
    <td><CopyableCode code="iss" /></td>
    <td><code>string</code></td>
    <td>The issuer used in security event tokens (SETs). This value is set as `iss` in the claim.  A read-only parameter that is set by the transmitter. If this parameter is included in the request, the value must match the expected value from the transmitter. (example: https://&#123;yourOktaDomain&#125;)</td>
</tr>
<tr>
    <td><CopyableCode code="min_verification_interval" /></td>
    <td><code>integer</code></td>
    <td>The minimum amount of time, in seconds, between two verification requests.  A read-only parameter that is set by the transmitter. If this parameter is included in the request, the value must match the expected value from the transmitter.</td>
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
    <td><a href="#get_ssf_streams"><CopyableCode code="get_ssf_streams" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-stream_id"><code>stream_id</code></a></td>
    <td>Retrieves either a list of all known SSF stream configurations or the individual configuration if specified by ID.<br /><br />As stream configurations are tied to a client ID, you can only view the stream associated with the client ID of the request OAuth 2.0 access token.</td>
</tr>
<tr>
    <td><a href="#create_ssf_stream"><CopyableCode code="create_ssf_stream" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-events_requested"><code>events_requested</code></a>, <a href="#parameter-delivery"><code>delivery</code></a></td>
    <td></td>
    <td>Creates an SSF stream for an event receiver to start receiving security events in the form of Security Event Tokens (SETs) from Okta.<br /><br />An SSF stream is associated with the client ID of the OAuth 2.0 access token used to create the stream. The client ID is provided by Okta for an [OAuth 2.0 app integration](https://help.okta.com/okta_help.htm?id=ext_Apps_App_Integration_Wizard-oidc). One SSF stream is allowed for each client ID, hence, one SSF stream is allowed for each app integration in Okta.<br /><br />You can create a maximum of 10 SSF stream configurations for one org.</td>
</tr>
<tr>
    <td><a href="#update_ssf_stream"><CopyableCode code="update_ssf_stream" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-events_requested"><code>events_requested</code></a>, <a href="#parameter-delivery"><code>delivery</code></a></td>
    <td></td>
    <td>Updates properties for an existing SSF stream configuration.<br /><br />If the `stream_id` isn't provided in the request body, the associated stream with the client ID (through the request OAuth 2.0 access token) is updated.</td>
</tr>
<tr>
    <td><a href="#replace_ssf_stream"><CopyableCode code="replace_ssf_stream" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-events_requested"><code>events_requested</code></a>, <a href="#parameter-delivery"><code>delivery</code></a></td>
    <td></td>
    <td>Replaces all properties for an existing SSF stream configuration.<br /><br />If the `stream_id` isn't provided in the request body, the associated stream with the client ID (through the request OAuth 2.0 access token) is replaced.</td>
</tr>
<tr>
    <td><a href="#delete_ssf_stream"><CopyableCode code="delete_ssf_stream" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-stream_id"><code>stream_id</code></a></td>
    <td>Deletes the specified SSF stream.<br /><br />If the `stream_id` is not provided in the query string, the associated stream with the client ID (through the request OAuth 2.0 access token) is deleted. Otherwise, the SSF stream with the `stream_id` is deleted, if found.</td>
</tr>
<tr>
    <td><a href="#verify_ssf_stream"><CopyableCode code="verify_ssf_stream" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-stream_id"><code>stream_id</code></a></td>
    <td></td>
    <td>Verifies an SSF stream by publishing a verification event requested by a security events provider.<br /><br />&gt; **Note:** A successful response doesn't indicate that the verification event<br />    was transmitted successfully, only that Okta has transmitted the event or will<br />    at some point in the future. The SSF receiver is responsible for validating and acknowledging<br />    successful transmission of the request by responding with HTTP Response Status Code 202.</td>
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
<tr id="parameter-stream_id">
    <td><CopyableCode code="stream_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the specified SSF Stream configuration (example: esc1k235GIIztAuGK0g5)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_ssf_streams"
    values={[
        { label: 'get_ssf_streams', value: 'get_ssf_streams' }
    ]}
>
<TabItem value="get_ssf_streams">

Retrieves either a list of all known SSF stream configurations or the individual configuration if specified by ID.<br /><br />As stream configurations are tied to a client ID, you can only view the stream associated with the client ID of the request OAuth 2.0 access token.

```sql
SELECT
stream_id,
aud,
delivery,
events_delivered,
events_requested,
events_supported,
format,
iss,
min_verification_interval
FROM okta.ssf.ssf_streams
WHERE subdomain = '{{ subdomain }}' -- required
AND stream_id = '{{ stream_id }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_ssf_stream"
    values={[
        { label: 'create_ssf_stream', value: 'create_ssf_stream' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_ssf_stream">

Creates an SSF stream for an event receiver to start receiving security events in the form of Security Event Tokens (SETs) from Okta.<br /><br />An SSF stream is associated with the client ID of the OAuth 2.0 access token used to create the stream. The client ID is provided by Okta for an [OAuth 2.0 app integration](https://help.okta.com/okta_help.htm?id=ext_Apps_App_Integration_Wizard-oidc). One SSF stream is allowed for each client ID, hence, one SSF stream is allowed for each app integration in Okta.<br /><br />You can create a maximum of 10 SSF stream configurations for one org.

```sql
INSERT INTO okta.ssf.ssf_streams (
delivery,
events_requested,
format,
subdomain
)
SELECT 
'{{ delivery }}' /* required */,
'{{ events_requested }}' /* required */,
'{{ format }}',
'{{ subdomain }}'
RETURNING
stream_id,
aud,
delivery,
events_delivered,
events_requested,
events_supported,
format,
iss,
min_verification_interval
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: ssf_streams
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the ssf_streams resource.
    - name: delivery
      description: |
        Contains information about the intended SET delivery method by the receiver
      value:
        authorization_header: "{{ authorization_header }}"
        endpoint_url: "{{ endpoint_url }}"
        method: "{{ method }}"
    - name: events_requested
      value:
        - "{{ events_requested }}"
      description: |
        The events (mapped by the array of event type URIs) that the receiver wants to receive
    - name: format
      value: "{{ format }}"
      description: |
        The subject identifier format expected for any SET transmitted.
      valid_values: ['iss_sub']
`}</CodeBlock>

</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_ssf_stream"
    values={[
        { label: 'update_ssf_stream', value: 'update_ssf_stream' }
    ]}
>
<TabItem value="update_ssf_stream">

Updates properties for an existing SSF stream configuration.<br /><br />If the `stream_id` isn't provided in the request body, the associated stream with the client ID (through the request OAuth 2.0 access token) is updated.

```sql
UPDATE okta.ssf.ssf_streams
SET 
aud = '{{ aud }}',
delivery = '{{ delivery }}',
events_delivered = '{{ events_delivered }}',
events_requested = '{{ events_requested }}',
events_supported = '{{ events_supported }}',
format = '{{ format }}',
iss = '{{ iss }}',
min_verification_interval = {{ min_verification_interval }},
stream_id = '{{ stream_id }}'
WHERE 
subdomain = '{{ subdomain }}' --required
AND events_requested = '{{ events_requested }}' --required
AND delivery = '{{ delivery }}' --required
RETURNING
stream_id,
aud,
delivery,
events_delivered,
events_requested,
events_supported,
format,
iss,
min_verification_interval;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_ssf_stream"
    values={[
        { label: 'replace_ssf_stream', value: 'replace_ssf_stream' }
    ]}
>
<TabItem value="replace_ssf_stream">

Replaces all properties for an existing SSF stream configuration.<br /><br />If the `stream_id` isn't provided in the request body, the associated stream with the client ID (through the request OAuth 2.0 access token) is replaced.

```sql
REPLACE okta.ssf.ssf_streams
SET 
aud = '{{ aud }}',
delivery = '{{ delivery }}',
events_delivered = '{{ events_delivered }}',
events_requested = '{{ events_requested }}',
events_supported = '{{ events_supported }}',
format = '{{ format }}',
iss = '{{ iss }}',
min_verification_interval = {{ min_verification_interval }},
stream_id = '{{ stream_id }}'
WHERE 
subdomain = '{{ subdomain }}' --required
AND events_requested = '{{ events_requested }}' --required
AND delivery = '{{ delivery }}' --required
RETURNING
stream_id,
aud,
delivery,
events_delivered,
events_requested,
events_supported,
format,
iss,
min_verification_interval;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_ssf_stream"
    values={[
        { label: 'delete_ssf_stream', value: 'delete_ssf_stream' }
    ]}
>
<TabItem value="delete_ssf_stream">

Deletes the specified SSF stream.<br /><br />If the `stream_id` is not provided in the query string, the associated stream with the client ID (through the request OAuth 2.0 access token) is deleted. Otherwise, the SSF stream with the `stream_id` is deleted, if found.

```sql
DELETE FROM okta.ssf.ssf_streams
WHERE subdomain = '{{ subdomain }}' --required
AND stream_id = '{{ stream_id }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="verify_ssf_stream"
    values={[
        { label: 'verify_ssf_stream', value: 'verify_ssf_stream' }
    ]}
>
<TabItem value="verify_ssf_stream">

Verifies an SSF stream by publishing a verification event requested by a security events provider.<br /><br />&gt; **Note:** A successful response doesn't indicate that the verification event<br />    was transmitted successfully, only that Okta has transmitted the event or will<br />    at some point in the future. The SSF receiver is responsible for validating and acknowledging<br />    successful transmission of the request by responding with HTTP Response Status Code 202.

```sql
EXEC okta.ssf.ssf_streams.verify_ssf_stream 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"state": "{{ state }}", 
"stream_id": "{{ stream_id }}"
}'
;
```
</TabItem>
</Tabs>
