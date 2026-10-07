--- 
title: log_stream_schemas
hide_title: false
hide_table_of_contents: false
keywords:
  - log_stream_schemas
  - meta
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

Creates, updates, deletes, gets or lists a <code>log_stream_schemas</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="log_stream_schemas" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.meta.log_stream_schemas" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_log_stream_schema"
    values={[
        { label: 'get_log_stream_schema', value: 'get_log_stream_schema' },
        { label: 'list_log_stream_schemas', value: 'list_log_stream_schemas' }
    ]}
>
<TabItem value="get_log_stream_schema">

successful operation

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
    <td>URI of log stream schema</td>
</tr>
<tr>
    <td><CopyableCode code="$schema" /></td>
    <td><code>string</code></td>
    <td>JSON schema version identifier</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="errorMessage" /></td>
    <td><code>string</code></td>
    <td>A collection of error messages for individual properties in the schema. Okta implements a subset of [ajv-errors](https://github.com/ajv-validator/ajv-errors). (opaque JSON object)</td>
</tr>
<tr>
    <td><CopyableCode code="oneOf" /></td>
    <td><code>array</code></td>
    <td>Non-empty array of valid JSON schemas.  Okta only supports `oneOf` for specifying display names for an `enum`. Each schema has the following format:  ``` &#123;   "const": "enumValue",   "title": "display name" &#125; ```</td>
</tr>
<tr>
    <td><CopyableCode code="pattern" /></td>
    <td><code>string</code></td>
    <td>For `string` log stream schema property type, specifies the regular expression used to validate the property</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>string</code></td>
    <td>log stream schema properties object (opaque JSON object)</td>
</tr>
<tr>
    <td><CopyableCode code="required" /></td>
    <td><code>array</code></td>
    <td>Required properties for this log stream schema object</td>
</tr>
<tr>
    <td><CopyableCode code="title" /></td>
    <td><code>string</code></td>
    <td>Name of the log streaming integration</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of log stream schema property</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_log_stream_schemas">

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
    <td>URI of log stream schema</td>
</tr>
<tr>
    <td><CopyableCode code="$schema" /></td>
    <td><code>string</code></td>
    <td>JSON schema version identifier</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="errorMessage" /></td>
    <td><code>string</code></td>
    <td>A collection of error messages for individual properties in the schema. Okta implements a subset of [ajv-errors](https://github.com/ajv-validator/ajv-errors). (opaque JSON object)</td>
</tr>
<tr>
    <td><CopyableCode code="oneOf" /></td>
    <td><code>array</code></td>
    <td>Non-empty array of valid JSON schemas.  Okta only supports `oneOf` for specifying display names for an `enum`. Each schema has the following format:  ``` &#123;   "const": "enumValue",   "title": "display name" &#125; ```</td>
</tr>
<tr>
    <td><CopyableCode code="pattern" /></td>
    <td><code>string</code></td>
    <td>For `string` log stream schema property type, specifies the regular expression used to validate the property</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>string</code></td>
    <td>log stream schema properties object (opaque JSON object)</td>
</tr>
<tr>
    <td><CopyableCode code="required" /></td>
    <td><code>array</code></td>
    <td>Required properties for this log stream schema object</td>
</tr>
<tr>
    <td><CopyableCode code="title" /></td>
    <td><code>string</code></td>
    <td>Name of the log streaming integration</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of log stream schema property</td>
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
    <td><a href="#get_log_stream_schema"><CopyableCode code="get_log_stream_schema" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-logStreamType"><code>logStreamType</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the schema for a log stream type. The `logStreamType` element in the URL specifies the log stream type, which is either `aws_eventbridge` or `splunk_cloud_logstreaming`. Use the `aws_eventbridge` literal to retrieve the AWS EventBridge type schema, and use the `splunk_cloud_logstreaming` literal retrieve the Splunk Cloud type schema.</td>
</tr>
<tr>
    <td><a href="#list_log_stream_schemas"><CopyableCode code="list_log_stream_schemas" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists the schema for all log stream types visible for this org</td>
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
<tr id="parameter-logStreamType">
    <td><CopyableCode code="logStreamType" /></td>
    <td><code>string</code></td>
    <td></td>
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
    defaultValue="get_log_stream_schema"
    values={[
        { label: 'get_log_stream_schema', value: 'get_log_stream_schema' },
        { label: 'list_log_stream_schemas', value: 'list_log_stream_schemas' }
    ]}
>
<TabItem value="get_log_stream_schema">

Retrieves the schema for a log stream type. The `logStreamType` element in the URL specifies the log stream type, which is either `aws_eventbridge` or `splunk_cloud_logstreaming`. Use the `aws_eventbridge` literal to retrieve the AWS EventBridge type schema, and use the `splunk_cloud_logstreaming` literal retrieve the Splunk Cloud type schema.

```sql
SELECT
id,
$schema,
_links,
errorMessage,
oneOf,
pattern,
properties,
required,
title,
type
FROM okta.meta.log_stream_schemas
WHERE logStreamType = '{{ logStreamType }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_log_stream_schemas">

Lists the schema for all log stream types visible for this org

```sql
SELECT
id,
$schema,
_links,
errorMessage,
oneOf,
pattern,
properties,
required,
title,
type
FROM okta.meta.log_stream_schemas
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
