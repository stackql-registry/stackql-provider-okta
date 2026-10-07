--- 
title: federated_claims
hide_title: false
hide_table_of_contents: false
keywords:
  - federated_claims
  - apps
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

Creates, updates, deletes, gets or lists a <code>federated_claims</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="federated_claims" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.apps.federated_claims" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_federated_claim"
    values={[
        { label: 'get_federated_claim', value: 'get_federated_claim' },
        { label: 'list_federated_claims', value: 'list_federated_claims' }
    ]}
>
<TabItem value="get_federated_claim">

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the claim to be used in the produced token (example: role)</td>
</tr>
<tr>
    <td><CopyableCode code="expression" /></td>
    <td><code>string</code></td>
    <td>The Okta Expression Language expression to be evaluated at runtime (example: appuser.entitlements.role)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_federated_claims">

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
    <td>The unique ID of the federated claim (example: ofc2f4zrZbs8nUa7p0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the claim to be used in the produced token (example: roleg)</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the federated claim was created (example: 2024-02-29T20:08:24.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="expression" /></td>
    <td><code>string</code></td>
    <td>The Okta Expression Language expression to be evaluated at runtime (example: appuser.entitlements.role)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the federated claim was updated (example: 2023-02-21T20:08:24.000Z)</td>
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
    <td><a href="#get_federated_claim"><CopyableCode code="get_federated_claim" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-claimId"><code>claimId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a federated claim by `claimId`</td>
</tr>
<tr>
    <td><a href="#list_federated_claims"><CopyableCode code="list_federated_claims" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all federated claims for your app</td>
</tr>
<tr>
    <td><a href="#create_federated_claim"><CopyableCode code="create_federated_claim" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a claim that will be included in tokens produced by federation protocols (for example: OIDC `id_tokens` or SAML Assertions)</td>
</tr>
<tr>
    <td><a href="#replace_federated_claim"><CopyableCode code="replace_federated_claim" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-claimId"><code>claimId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a claim that will be included in tokens produced by federation protocols (for example: OIDC `id_tokens` or SAML Assertions)</td>
</tr>
<tr>
    <td><a href="#delete_federated_claim"><CopyableCode code="delete_federated_claim" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-claimId"><code>claimId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a federated claim by `claimId`</td>
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
<tr id="parameter-appId">
    <td><CopyableCode code="appId" /></td>
    <td><code>string</code></td>
    <td>Application ID</td>
</tr>
<tr id="parameter-claimId">
    <td><CopyableCode code="claimId" /></td>
    <td><code>string</code></td>
    <td>The unique `id` of the federated claim (example: ofc2f4zrZbs8nUa7p0g4)</td>
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
    defaultValue="get_federated_claim"
    values={[
        { label: 'get_federated_claim', value: 'get_federated_claim' },
        { label: 'list_federated_claims', value: 'list_federated_claims' }
    ]}
>
<TabItem value="get_federated_claim">

Retrieves a federated claim by `claimId`

```sql
SELECT
name,
expression
FROM okta.apps.federated_claims
WHERE appId = '{{ appId }}' -- required
AND claimId = '{{ claimId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_federated_claims">

Lists all federated claims for your app

```sql
SELECT
id,
name,
created,
expression,
lastUpdated
FROM okta.apps.federated_claims
WHERE appId = '{{ appId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_federated_claim"
    values={[
        { label: 'create_federated_claim', value: 'create_federated_claim' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_federated_claim">

Creates a claim that will be included in tokens produced by federation protocols (for example: OIDC `id_tokens` or SAML Assertions)

```sql
INSERT INTO okta.apps.federated_claims (
expression,
name,
appId,
subdomain
)
SELECT 
'{{ expression }}',
'{{ name }}',
'{{ appId }}',
'{{ subdomain }}'
RETURNING
id,
name,
created,
expression,
lastUpdated
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: federated_claims
  props:
    - name: appId
      value: "{{ appId }}"
      description: Required parameter for the federated_claims resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the federated_claims resource.
    - name: expression
      value: "{{ expression }}"
      description: |
        The Okta Expression Language expression to be evaluated at runtime
    - name: name
      value: "{{ name }}"
      description: |
        The name of the claim to be used in the produced token
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_federated_claim"
    values={[
        { label: 'replace_federated_claim', value: 'replace_federated_claim' }
    ]}
>
<TabItem value="replace_federated_claim">

Replaces a claim that will be included in tokens produced by federation protocols (for example: OIDC `id_tokens` or SAML Assertions)

```sql
REPLACE okta.apps.federated_claims
SET 
expression = '{{ expression }}',
name = '{{ name }}'
WHERE 
appId = '{{ appId }}' --required
AND claimId = '{{ claimId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
created,
expression,
lastUpdated;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_federated_claim"
    values={[
        { label: 'delete_federated_claim', value: 'delete_federated_claim' }
    ]}
>
<TabItem value="delete_federated_claim">

Deletes a federated claim by `claimId`

```sql
DELETE FROM okta.apps.federated_claims
WHERE appId = '{{ appId }}' --required
AND claimId = '{{ claimId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
