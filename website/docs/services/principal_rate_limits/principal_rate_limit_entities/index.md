--- 
title: principal_rate_limit_entities
hide_title: false
hide_table_of_contents: false
keywords:
  - principal_rate_limit_entities
  - principal_rate_limits
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

Creates, updates, deletes, gets or lists a <code>principal_rate_limit_entities</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="principal_rate_limit_entities" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.principal_rate_limits.principal_rate_limit_entities" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_principal_rate_limit_entity"
    values={[
        { label: 'get_principal_rate_limit_entity', value: 'get_principal_rate_limit_entity' },
        { label: 'list_principal_rate_limit_entities', value: 'list_principal_rate_limit_entities' }
    ]}
>
<TabItem value="get_principal_rate_limit_entity">

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
    <td>The unique identifier of the principle rate limit entity</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>The Okta user ID of the user who created the principle rate limit entity</td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time the principle rate limit entity was created</td>
</tr>
<tr>
    <td><CopyableCode code="defaultConcurrencyPercentage" /></td>
    <td><code>integer</code></td>
    <td>The default percentage of a given concurrency limit threshold that the owning principal can consume</td>
</tr>
<tr>
    <td><CopyableCode code="defaultPercentage" /></td>
    <td><code>integer</code></td>
    <td>The default percentage of a given rate limit threshold that the owning principal can consume</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdate" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time the principle rate limit entity was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdatedBy" /></td>
    <td><code>string</code></td>
    <td>The Okta user ID of the user who last updated the principle rate limit entity</td>
</tr>
<tr>
    <td><CopyableCode code="orgId" /></td>
    <td><code>string</code></td>
    <td>The unique identifier of the Okta org</td>
</tr>
<tr>
    <td><CopyableCode code="principalId" /></td>
    <td><code>string</code></td>
    <td>The unique identifier of the principal. This is the ID of the API token or OAuth 2.0 app.</td>
</tr>
<tr>
    <td><CopyableCode code="principalType" /></td>
    <td><code>string</code></td>
    <td>The type of principal, either an API token or an OAuth 2.0 app (OAUTH_CLIENT, SSWS_TOKEN)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_principal_rate_limit_entities">

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
    <td>The unique identifier of the principle rate limit entity</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>The Okta user ID of the user who created the principle rate limit entity</td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time the principle rate limit entity was created</td>
</tr>
<tr>
    <td><CopyableCode code="defaultConcurrencyPercentage" /></td>
    <td><code>integer</code></td>
    <td>The default percentage of a given concurrency limit threshold that the owning principal can consume</td>
</tr>
<tr>
    <td><CopyableCode code="defaultPercentage" /></td>
    <td><code>integer</code></td>
    <td>The default percentage of a given rate limit threshold that the owning principal can consume</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdate" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time the principle rate limit entity was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdatedBy" /></td>
    <td><code>string</code></td>
    <td>The Okta user ID of the user who last updated the principle rate limit entity</td>
</tr>
<tr>
    <td><CopyableCode code="orgId" /></td>
    <td><code>string</code></td>
    <td>The unique identifier of the Okta org</td>
</tr>
<tr>
    <td><CopyableCode code="principalId" /></td>
    <td><code>string</code></td>
    <td>The unique identifier of the principal. This is the ID of the API token or OAuth 2.0 app.</td>
</tr>
<tr>
    <td><CopyableCode code="principalType" /></td>
    <td><code>string</code></td>
    <td>The type of principal, either an API token or an OAuth 2.0 app (OAUTH_CLIENT, SSWS_TOKEN)</td>
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
    <td><a href="#get_principal_rate_limit_entity"><CopyableCode code="get_principal_rate_limit_entity" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-principalRateLimitId"><code>principalRateLimitId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a principal rate limit entity by `principalRateLimitId`</td>
</tr>
<tr>
    <td><a href="#list_principal_rate_limit_entities"><CopyableCode code="list_principal_rate_limit_entities" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all Principal Rate Limit entities considering the provided parameters</td>
</tr>
<tr>
    <td><a href="#create_principal_rate_limit_entity"><CopyableCode code="create_principal_rate_limit_entity" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-principalId"><code>principalId</code></a>, <a href="#parameter-principalType"><code>principalType</code></a></td>
    <td></td>
    <td>Creates a new principal rate limit entity. Okta only allows one principal rate limit entity per org and principal.</td>
</tr>
<tr>
    <td><a href="#replace_principal_rate_limit_entity"><CopyableCode code="replace_principal_rate_limit_entity" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-principalRateLimitId"><code>principalRateLimitId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-principalId"><code>principalId</code></a>, <a href="#parameter-principalType"><code>principalType</code></a></td>
    <td></td>
    <td>Replaces a principal rate limit entity by `principalRateLimitId`</td>
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
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>Filters the list of principal rate limit entities by the provided principal type (`principalType`). For example, `filter=principalType eq "SSWS_TOKEN"` or `filter=principalType eq "OAUTH_CLIENT"`.</td>
</tr>
<tr id="parameter-principalRateLimitId">
    <td><CopyableCode code="principalRateLimitId" /></td>
    <td><code>string</code></td>
    <td>ID of the principal rate limit</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>The cursor to use for pagination. It's an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](https://developer.okta.com/docs/api/#pagination).</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of items to return in a single response page.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_principal_rate_limit_entity"
    values={[
        { label: 'get_principal_rate_limit_entity', value: 'get_principal_rate_limit_entity' },
        { label: 'list_principal_rate_limit_entities', value: 'list_principal_rate_limit_entities' }
    ]}
>
<TabItem value="get_principal_rate_limit_entity">

Retrieves a principal rate limit entity by `principalRateLimitId`

```sql
SELECT
id,
createdBy,
createdDate,
defaultConcurrencyPercentage,
defaultPercentage,
lastUpdate,
lastUpdatedBy,
orgId,
principalId,
principalType
FROM okta.principal_rate_limits.principal_rate_limit_entities
WHERE principalRateLimitId = '{{ principalRateLimitId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_principal_rate_limit_entities">

Lists all Principal Rate Limit entities considering the provided parameters

```sql
SELECT
id,
createdBy,
createdDate,
defaultConcurrencyPercentage,
defaultPercentage,
lastUpdate,
lastUpdatedBy,
orgId,
principalId,
principalType
FROM okta.principal_rate_limits.principal_rate_limit_entities
WHERE filter = '{{ filter }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_principal_rate_limit_entity"
    values={[
        { label: 'create_principal_rate_limit_entity', value: 'create_principal_rate_limit_entity' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_principal_rate_limit_entity">

Creates a new principal rate limit entity. Okta only allows one principal rate limit entity per org and principal.

```sql
INSERT INTO okta.principal_rate_limits.principal_rate_limit_entities (
defaultConcurrencyPercentage,
defaultPercentage,
principalId,
principalType,
subdomain
)
SELECT 
{{ defaultConcurrencyPercentage }},
{{ defaultPercentage }},
'{{ principalId }}' /* required */,
'{{ principalType }}' /* required */,
'{{ subdomain }}'
RETURNING
id,
createdBy,
createdDate,
defaultConcurrencyPercentage,
defaultPercentage,
lastUpdate,
lastUpdatedBy,
orgId,
principalId,
principalType
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: principal_rate_limit_entities
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the principal_rate_limit_entities resource.
    - name: defaultConcurrencyPercentage
      value: {{ defaultConcurrencyPercentage }}
      description: |
        The default percentage of a given concurrency limit threshold that the owning principal can consume
    - name: defaultPercentage
      value: {{ defaultPercentage }}
      description: |
        The default percentage of a given rate limit threshold that the owning principal can consume
    - name: principalId
      value: "{{ principalId }}"
      description: |
        The unique identifier of the principal. This is the ID of the API token or OAuth 2.0 app.
    - name: principalType
      value: "{{ principalType }}"
      description: |
        The type of principal, either an API token or an OAuth 2.0 app
      valid_values: ['OAUTH_CLIENT', 'SSWS_TOKEN']
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_principal_rate_limit_entity"
    values={[
        { label: 'replace_principal_rate_limit_entity', value: 'replace_principal_rate_limit_entity' }
    ]}
>
<TabItem value="replace_principal_rate_limit_entity">

Replaces a principal rate limit entity by `principalRateLimitId`

```sql
REPLACE okta.principal_rate_limits.principal_rate_limit_entities
SET 
defaultConcurrencyPercentage = {{ defaultConcurrencyPercentage }},
defaultPercentage = {{ defaultPercentage }},
principalId = '{{ principalId }}',
principalType = '{{ principalType }}'
WHERE 
principalRateLimitId = '{{ principalRateLimitId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND principalId = '{{ principalId }}' --required
AND principalType = '{{ principalType }}' --required
RETURNING
id,
createdBy,
createdDate,
defaultConcurrencyPercentage,
defaultPercentage,
lastUpdate,
lastUpdatedBy,
orgId,
principalId,
principalType;
```
</TabItem>
</Tabs>
