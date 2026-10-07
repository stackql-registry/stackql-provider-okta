--- 
title: ssf_metadata
hide_title: false
hide_table_of_contents: false
keywords:
  - ssf_metadata
  - _well_known
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

Creates, updates, deletes, gets or lists a <code>ssf_metadata</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="ssf_metadata" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta._well_known.ssf_metadata" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_wellknown_ssf_metadata"
    values={[
        { label: 'get_wellknown_ssf_metadata', value: 'get_wellknown_ssf_metadata' }
    ]}
>
<TabItem value="get_wellknown_ssf_metadata">

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
    <td><CopyableCode code="authorization_schemes" /></td>
    <td><code>array</code></td>
    <td>An array of JSON objects that specify the authorization scheme properties supported by the transmitter</td>
</tr>
<tr>
    <td><CopyableCode code="configuration_endpoint" /></td>
    <td><code>string (uri)</code></td>
    <td>The URL of the SSF stream configuration endpoint (example: https://&#123;yourOktaDomain&#125;/api/v1/ssf/stream)</td>
</tr>
<tr>
    <td><CopyableCode code="default_subjects" /></td>
    <td><code>string</code></td>
    <td>A string that indicates the default behavior of newly created streams (ALL, NONE)</td>
</tr>
<tr>
    <td><CopyableCode code="delivery_methods_supported" /></td>
    <td><code>array</code></td>
    <td>An array of supported SET delivery methods</td>
</tr>
<tr>
    <td><CopyableCode code="issuer" /></td>
    <td><code>string</code></td>
    <td>The issuer used in security event tokens. This value is set as `iss` in the claim. (example: https://&#123;yourOktaDomain&#125;)</td>
</tr>
<tr>
    <td><CopyableCode code="jwks_uri" /></td>
    <td><code>string (uri)</code></td>
    <td>The URL of the JSON Web Key Set (JWKS) that contains the signing keys for validating the signatures of security event tokens (SETs) (example: https://&#123;yourOktaDomain&#125;/oauth2/v1/keys)</td>
</tr>
<tr>
    <td><CopyableCode code="spec_version" /></td>
    <td><code>string</code></td>
    <td>The version identifying the implementer's draft or final specification implemented by the transmitter (example: 1_0-ID3)</td>
</tr>
<tr>
    <td><CopyableCode code="verification_endpoint" /></td>
    <td><code>string (uri)</code></td>
    <td>The URL of the SSF stream verification endpoint (example: https://&#123;yourOktaDomain&#125;/api/v1/ssf/stream/verification)</td>
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
    <td><a href="#get_wellknown_ssf_metadata"><CopyableCode code="get_wellknown_ssf_metadata" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves SSF transmitter configuration metadata. This includes all supported endpoints and key information about certain properties of the Okta org as the transmitter, such as `delivery_methods_supported`, `issuer`, and `jwks_uri`.</td>
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
    defaultValue="get_wellknown_ssf_metadata"
    values={[
        { label: 'get_wellknown_ssf_metadata', value: 'get_wellknown_ssf_metadata' }
    ]}
>
<TabItem value="get_wellknown_ssf_metadata">

Retrieves SSF transmitter configuration metadata. This includes all supported endpoints and key information about certain properties of the Okta org as the transmitter, such as `delivery_methods_supported`, `issuer`, and `jwks_uri`.

```sql
SELECT
authorization_schemes,
configuration_endpoint,
default_subjects,
delivery_methods_supported,
issuer,
jwks_uri,
spec_version,
verification_endpoint
FROM okta._well_known.ssf_metadata
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
