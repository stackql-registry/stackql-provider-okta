--- 
title: features
hide_title: false
hide_table_of_contents: false
keywords:
  - features
  - features
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

Creates, updates, deletes, gets or lists a <code>features</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="features" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.features.features" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_feature"
    values={[
        { label: 'get_feature', value: 'get_feature' },
        { label: 'list_features', value: 'list_features' }
    ]}
>
<TabItem value="get_feature">

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
    <td>Unique identifier for this feature</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the feature</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Brief description of the feature and what it provides</td>
</tr>
<tr>
    <td><CopyableCode code="stage" /></td>
    <td><code>object</code></td>
    <td>Current release cycle stage of a feature  If a feature's stage value is `EA`, the state is `null` and not returned. If the value is `BETA`, the state is `OPEN` or `CLOSED` depending on whether the `BETA` feature is manageable.  &gt; **Note:** If a feature's stage is `OPEN BETA`, you can update it only in Preview cells. If a feature's stage is `CLOSED BETA`, you can disable it only in Preview cells.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Setting status (DISABLED, ENABLED)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of feature (self-service)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_features">

Specifies feature release cycle information

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
    <td>Unique identifier for this feature</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the feature</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Brief description of the feature and what it provides</td>
</tr>
<tr>
    <td><CopyableCode code="stage" /></td>
    <td><code>object</code></td>
    <td>Current release cycle stage of a feature  If a feature's stage value is `EA`, the state is `null` and not returned. If the value is `BETA`, the state is `OPEN` or `CLOSED` depending on whether the `BETA` feature is manageable.  &gt; **Note:** If a feature's stage is `OPEN BETA`, you can update it only in Preview cells. If a feature's stage is `CLOSED BETA`, you can disable it only in Preview cells.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Setting status (DISABLED, ENABLED)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of feature (self-service)</td>
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
    <td><a href="#get_feature"><CopyableCode code="get_feature" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-featureId"><code>featureId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a feature by ID</td>
</tr>
<tr>
    <td><a href="#list_features"><CopyableCode code="list_features" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all self-service features for your org</td>
</tr>
<tr>
    <td><a href="#update_feature_lifecycle"><CopyableCode code="update_feature_lifecycle" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-featureId"><code>featureId</code></a>, <a href="#parameter-lifecycle"><code>lifecycle</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-mode"><code>mode</code></a></td>
    <td>Updates a feature's lifecycle status. Use this endpoint to enable or disable a feature for your org.<br /><br />Use the `mode=force` parameter to override dependency restrictions for a particular feature. Normally, you can't enable a feature if it has one or more dependencies that aren't enabled.<br /><br />When you use the `mode=force` parameter while enabling a feature, Okta first tries to enable any disabled features that this feature may have as dependencies. If you don't pass the `mode=force` parameter and the feature has dependencies that need to be enabled before the feature is enabled, a 400 error is returned.<br /><br />When you use the `mode=force` parameter while disabling a feature, Okta first tries to disable any enabled features that this feature may have as dependents. If you don't pass the `mode=force` parameter and the feature has dependents that need to be disabled before the feature is disabled, a 400 error is returned.<br /><br />The following chart shows the different state transitions for a feature.<br /><br />&lt;img alt="Example" src="https://developer.okta.com/docs/api/images/features/update-ssfeat-flowchart.png" width="1000"/&gt;</td>
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
<tr id="parameter-featureId">
    <td><CopyableCode code="featureId" /></td>
    <td><code>string</code></td>
    <td>`id` of the feature</td>
</tr>
<tr id="parameter-lifecycle">
    <td><CopyableCode code="lifecycle" /></td>
    <td><code>string</code></td>
    <td>Whether to `ENABLE` or `DISABLE` the feature</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-mode">
    <td><CopyableCode code="mode" /></td>
    <td><code>string</code></td>
    <td>Indicates if you want to force enable or disable a feature. Supported value is `force`.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_feature"
    values={[
        { label: 'get_feature', value: 'get_feature' },
        { label: 'list_features', value: 'list_features' }
    ]}
>
<TabItem value="get_feature">

Retrieves a feature by ID

```sql
SELECT
id,
name,
_links,
description,
stage,
status,
type
FROM okta.features.features
WHERE featureId = '{{ featureId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_features">

Lists all self-service features for your org

```sql
SELECT
id,
name,
_links,
description,
stage,
status,
type
FROM okta.features.features
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_feature_lifecycle"
    values={[
        { label: 'update_feature_lifecycle', value: 'update_feature_lifecycle' }
    ]}
>
<TabItem value="update_feature_lifecycle">

Updates a feature's lifecycle status. Use this endpoint to enable or disable a feature for your org.<br /><br />Use the `mode=force` parameter to override dependency restrictions for a particular feature. Normally, you can't enable a feature if it has one or more dependencies that aren't enabled.<br /><br />When you use the `mode=force` parameter while enabling a feature, Okta first tries to enable any disabled features that this feature may have as dependencies. If you don't pass the `mode=force` parameter and the feature has dependencies that need to be enabled before the feature is enabled, a 400 error is returned.<br /><br />When you use the `mode=force` parameter while disabling a feature, Okta first tries to disable any enabled features that this feature may have as dependents. If you don't pass the `mode=force` parameter and the feature has dependents that need to be disabled before the feature is disabled, a 400 error is returned.<br /><br />The following chart shows the different state transitions for a feature.<br /><br />&lt;img alt="Example" src="https://developer.okta.com/docs/api/images/features/update-ssfeat-flowchart.png" width="1000"/&gt;

```sql
EXEC okta.features.features.update_feature_lifecycle 
@featureId='{{ featureId }}' --required, 
@lifecycle='{{ lifecycle }}' --required, 
@subdomain='{{ subdomain }}' --required, 
@mode='{{ mode }}'
;
```
</TabItem>
</Tabs>
