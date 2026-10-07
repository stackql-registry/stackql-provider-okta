--- 
title: log_streams
hide_title: false
hide_table_of_contents: false
keywords:
  - log_streams
  - logstreams
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

Creates, updates, deletes, gets or lists a <code>log_streams</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="log_streams" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.logstreams.log_streams" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_log_stream"
    values={[
        { label: 'get_log_stream', value: 'get_log_stream' },
        { label: 'list_log_streams', value: 'list_log_streams' }
    ]}
>
<TabItem value="get_log_stream">

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
    <td>Unique identifier for the log stream (example: 0oa1orzg0CHSgPcjZ0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Unique name for the log stream object (example: My AWS EventBridge log stream)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the current status of an application using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the log stream object was created (example: 2022-10-21T16:59:59.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the log stream object was last updated (example: 2022-10-21T17:15:10.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Lifecycle status of the log stream object (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Specifies the streaming provider used  Supported providers:   * `aws_eventbridge` ([AWS EventBridge](https://aws.amazon.com/eventbridge))   * `splunk_cloud_logstreaming` ([Splunk Cloud](https://www.splunk.com/en_us/software/splunk-cloud-platform.html))  Select the provider type to see provider-specific configurations in the `settings` property: (aws_eventbridge, splunk_cloud_logstreaming)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_log_streams">

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
    <td>Unique identifier for the log stream (example: 0oa1orzg0CHSgPcjZ0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Unique name for the log stream object (example: My AWS EventBridge log stream)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the current status of an application using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the log stream object was created (example: 2022-10-21T16:59:59.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the log stream object was last updated (example: 2022-10-21T17:15:10.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Lifecycle status of the log stream object (ACTIVE, INACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Specifies the streaming provider used  Supported providers:   * `aws_eventbridge` ([AWS EventBridge](https://aws.amazon.com/eventbridge))   * `splunk_cloud_logstreaming` ([Splunk Cloud](https://www.splunk.com/en_us/software/splunk-cloud-platform.html))  Select the provider type to see provider-specific configurations in the `settings` property: (aws_eventbridge, splunk_cloud_logstreaming)</td>
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
    <td><a href="#get_log_stream"><CopyableCode code="get_log_stream" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-logStreamId"><code>logStreamId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a log stream object by ID</td>
</tr>
<tr>
    <td><a href="#list_log_streams"><CopyableCode code="list_log_streams" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-filter"><code>filter</code></a></td>
    <td>Lists all log stream objects in your org. You can request a paginated list or a subset of log streams that match a supported filter expression.</td>
</tr>
<tr>
    <td><a href="#create_log_stream"><CopyableCode code="create_log_stream" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-created"><code>created</code></a>, <a href="#parameter-id"><code>id</code></a>, <a href="#parameter-lastUpdated"><code>lastUpdated</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-status"><code>status</code></a>, <a href="#parameter-type"><code>type</code></a>, <a href="#parameter-_links"><code>_links</code></a></td>
    <td></td>
    <td>Creates a new log stream object</td>
</tr>
<tr>
    <td><a href="#replace_log_stream"><CopyableCode code="replace_log_stream" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-logStreamId"><code>logStreamId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Replaces the log stream object properties for a given ID.<br /><br />This operation is typically used to update the configuration of a log stream.<br />Depending on the type of log stream you want to update, certain properties can't be modified after the log stream is initially created.<br />Use the [Retrieve the log stream schema for the schema type](https://developer.okta.com/docs/api/openapi/okta-management/management/schema/getlogstreamschema) request to determine which properties you can update for the specific log stream type.<br />Log stream properties with the `"writeOnce" : true` attribute can't be updated after creation.<br />You must still specify these `writeOnce` properties in the request body with the original values in the PUT request.<br /><br />&gt; **Note:** You don't have to specify properties that have both the `"writeOnce": true` and the `"writeOnly": true` attributes in the PUT request body. These property values are ignored even if you add them in the PUT request body.</td>
</tr>
<tr>
    <td><a href="#delete_log_stream"><CopyableCode code="delete_log_stream" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-logStreamId"><code>logStreamId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a log stream object from your org by ID</td>
</tr>
<tr>
    <td><a href="#activate_log_stream"><CopyableCode code="activate_log_stream" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-logStreamId"><code>logStreamId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a log stream by `logStreamId`</td>
</tr>
<tr>
    <td><a href="#deactivate_log_stream"><CopyableCode code="deactivate_log_stream" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-logStreamId"><code>logStreamId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates a log stream by `logStreamId`</td>
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
<tr id="parameter-logStreamId">
    <td><CopyableCode code="logStreamId" /></td>
    <td><code>string</code></td>
    <td>Unique identifier for the log stream</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](https://developer.okta.com/docs/api/#pagination) and [Link header](https://developer.okta.com/docs/api/#link-header).</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>An expression that [filters]https://developer.okta.com/docs/api#filter the returned objects. You can only use the `eq` operator on either the `status` or `type` properties in the filter expression.</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer</code></td>
    <td>A limit on the number of objects to return</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_log_stream"
    values={[
        { label: 'get_log_stream', value: 'get_log_stream' },
        { label: 'list_log_streams', value: 'list_log_streams' }
    ]}
>
<TabItem value="get_log_stream">

Retrieves a log stream object by ID

```sql
SELECT
id,
name,
_links,
created,
lastUpdated,
status,
type
FROM okta.logstreams.log_streams
WHERE logStreamId = '{{ logStreamId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_log_streams">

Lists all log stream objects in your org. You can request a paginated list or a subset of log streams that match a supported filter expression.

```sql
SELECT
id,
name,
_links,
created,
lastUpdated,
status,
type
FROM okta.logstreams.log_streams
WHERE subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
AND filter = '{{ filter }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_log_stream"
    values={[
        { label: 'create_log_stream', value: 'create_log_stream' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_log_stream">

Creates a new log stream object

```sql
INSERT INTO okta.logstreams.log_streams (
name,
type,
subdomain
)
SELECT 
'{{ name }}' /* required */,
'{{ type }}' /* required */,
'{{ subdomain }}'
RETURNING
id,
name,
_links,
created,
lastUpdated,
status,
type
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: log_streams
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the log_streams resource.
    - name: name
      value: "{{ name }}"
      description: |
        Unique name for the log stream object
    - name: type
      value: "{{ type }}"
      description: |
        Specifies the streaming provider used
        Supported providers:
        * \`aws_eventbridge\` ([AWS EventBridge](https://aws.amazon.com/eventbridge))
        * \`splunk_cloud_logstreaming\` ([Splunk Cloud](https://www.splunk.com/en_us/software/splunk-cloud-platform.html))
        Select the provider type to see provider-specific configurations in the \`settings\` property:
      valid_values: ['aws_eventbridge', 'splunk_cloud_logstreaming']
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_log_stream"
    values={[
        { label: 'replace_log_stream', value: 'replace_log_stream' }
    ]}
>
<TabItem value="replace_log_stream">

Replaces the log stream object properties for a given ID.<br /><br />This operation is typically used to update the configuration of a log stream.<br />Depending on the type of log stream you want to update, certain properties can't be modified after the log stream is initially created.<br />Use the [Retrieve the log stream schema for the schema type](https://developer.okta.com/docs/api/openapi/okta-management/management/schema/getlogstreamschema) request to determine which properties you can update for the specific log stream type.<br />Log stream properties with the `"writeOnce" : true` attribute can't be updated after creation.<br />You must still specify these `writeOnce` properties in the request body with the original values in the PUT request.<br /><br />&gt; **Note:** You don't have to specify properties that have both the `"writeOnce": true` and the `"writeOnly": true` attributes in the PUT request body. These property values are ignored even if you add them in the PUT request body.

```sql
REPLACE okta.logstreams.log_streams
SET 
name = '{{ name }}',
type = '{{ type }}'
WHERE 
logStreamId = '{{ logStreamId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND name = '{{ name }}' --required
AND type = '{{ type }}' --required
RETURNING
id,
name,
_links,
created,
lastUpdated,
status,
type;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_log_stream"
    values={[
        { label: 'delete_log_stream', value: 'delete_log_stream' }
    ]}
>
<TabItem value="delete_log_stream">

Deletes a log stream object from your org by ID

```sql
DELETE FROM okta.logstreams.log_streams
WHERE logStreamId = '{{ logStreamId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_log_stream"
    values={[
        { label: 'activate_log_stream', value: 'activate_log_stream' },
        { label: 'deactivate_log_stream', value: 'deactivate_log_stream' }
    ]}
>
<TabItem value="activate_log_stream">

Activates a log stream by `logStreamId`

```sql
EXEC okta.logstreams.log_streams.activate_log_stream 
@logStreamId='{{ logStreamId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_log_stream">

Deactivates a log stream by `logStreamId`

```sql
EXEC okta.logstreams.log_streams.deactivate_log_stream 
@logStreamId='{{ logStreamId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
