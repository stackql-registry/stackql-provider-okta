--- 
title: warning_thresholds
hide_title: false
hide_table_of_contents: false
keywords:
  - warning_thresholds
  - rate_limit_settings
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

Creates, updates, deletes, gets or lists a <code>warning_thresholds</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="warning_thresholds" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.rate_limit_settings.warning_thresholds" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_rate_limit_settings_warning_threshold"
    values={[
        { label: 'get_rate_limit_settings_warning_threshold', value: 'get_rate_limit_settings_warning_threshold' }
    ]}
>
<TabItem value="get_rate_limit_settings_warning_threshold">

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
    <td><CopyableCode code="warningThreshold" /></td>
    <td><code>integer</code></td>
    <td>The threshold value (percentage) of a rate limit that, when exceeded, triggers a warning notification. By default, this value is 90 for Workforce orgs and 60 for CIAM orgs.</td>
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
    <td><a href="#get_rate_limit_settings_warning_threshold"><CopyableCode code="get_rate_limit_settings_warning_threshold" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the currently configured threshold for warning notifications when the API's rate limit is exceeded</td>
</tr>
<tr>
    <td><a href="#replace_rate_limit_settings_warning_threshold"><CopyableCode code="replace_rate_limit_settings_warning_threshold" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-warningThreshold"><code>warningThreshold</code></a></td>
    <td></td>
    <td>Replaces the Rate Limit Warning Threshold Percentage and returns the configured property</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_rate_limit_settings_warning_threshold"
    values={[
        { label: 'get_rate_limit_settings_warning_threshold', value: 'get_rate_limit_settings_warning_threshold' }
    ]}
>
<TabItem value="get_rate_limit_settings_warning_threshold">

Retrieves the currently configured threshold for warning notifications when the API's rate limit is exceeded

```sql
SELECT
warningThreshold
FROM okta.rate_limit_settings.warning_thresholds
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_rate_limit_settings_warning_threshold"
    values={[
        { label: 'replace_rate_limit_settings_warning_threshold', value: 'replace_rate_limit_settings_warning_threshold' }
    ]}
>
<TabItem value="replace_rate_limit_settings_warning_threshold">

Replaces the Rate Limit Warning Threshold Percentage and returns the configured property

```sql
REPLACE okta.rate_limit_settings.warning_thresholds
SET 
warningThreshold = {{ warningThreshold }}
WHERE 
subdomain = '{{ subdomain }}' --required
AND warningThreshold = '{{ warningThreshold }}' --required
RETURNING
warningThreshold;
```
</TabItem>
</Tabs>
