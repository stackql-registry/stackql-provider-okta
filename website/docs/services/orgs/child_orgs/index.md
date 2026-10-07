--- 
title: child_orgs
hide_title: false
hide_table_of_contents: false
keywords:
  - child_orgs
  - orgs
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

Creates, updates, deletes, gets or lists a <code>child_orgs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="child_orgs" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.orgs.child_orgs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#create_child_org"><CopyableCode code="create_child_org" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-admin"><code>admin</code></a>, <a href="#parameter-edition"><code>edition</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates an org (child org) that has the same features as the current requesting org (parent org).<br />A child org inherits any new features added to the parent org, but new features added to the child org aren't propagated back to the parent org.<br />&gt; **Notes:**<br />&gt; * Some features associated with products, such as Atspoke, Workflows, and Okta Identity Governance, aren't propagated to the child org.<br />&gt; * Wait at least 30 seconds after a 201-Created response before you make API requests to the new child org.<br />&gt; * For rate limits, see [Org creation rate limits](https://developer.okta.com/docs/reference/rl-additional-limits/#org-creation-rate-limits).</td>
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

## `INSERT` examples

<Tabs
    defaultValue="create_child_org"
    values={[
        { label: 'create_child_org', value: 'create_child_org' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_child_org">

Creates an org (child org) that has the same features as the current requesting org (parent org).<br />A child org inherits any new features added to the parent org, but new features added to the child org aren't propagated back to the parent org.<br />&gt; **Notes:**<br />&gt; * Some features associated with products, such as Atspoke, Workflows, and Okta Identity Governance, aren't propagated to the child org.<br />&gt; * Wait at least 30 seconds after a 201-Created response before you make API requests to the new child org.<br />&gt; * For rate limits, see [Org creation rate limits](https://developer.okta.com/docs/reference/rl-additional-limits/#org-creation-rate-limits).

```sql
INSERT INTO okta.orgs.child_orgs (
admin,
edition,
name,
subdomain,
website,
subdomain
)
SELECT 
'{{ admin }}' /* required */,
'{{ edition }}' /* required */,
'{{ name }}' /* required */,
'{{ subdomain }}' /* required */,
'{{ website }}',
'{{ subdomain }}' /* required */
RETURNING
id,
name,
_links,
admin,
created,
edition,
lastUpdated,
settings,
status,
subdomain,
token,
tokenType,
website
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: child_orgs
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the child_orgs resource.
    - name: admin
      description: |
        Profile and credential information for the first super admin user of the child org.
        If you plan to configure and manage the org programmatically, create a system user with a dedicated email address and a strong password.
        > **Note:** If you don't provide \`credentials\`, the super admin user is prompted to set up their credentials when they sign in to the org for the first time.
      value:
        credentials:
          password:
            value: "{{ value }}"
          recovery_question:
            answer: "{{ answer }}"
            question: "{{ question }}"
        profile:
          firstName: "{{ firstName }}"
          lastName: "{{ lastName }}"
          email: "{{ email }}"
          login: "{{ login }}"
    - name: edition
      value: "{{ edition }}"
      description: |
        Edition for the org. \`SKU\` is the only supported value.
      valid_values: ['SKU']
    - name: name
      value: "{{ name }}"
      description: |
        Unique name of the org.
        This name appears in the HTML \`<title>\` tag of the new org sign-in page.
        Only less than 4-width UTF-8 encoded characters are allowed.
    - name: subdomain
      value: "{{ subdomain }}"
      description: |
        Subdomain of the org. Must be unique and include no spaces.
    - name: website
      value: "{{ website }}"
      description: |
        Default website for the org
`}</CodeBlock>

</TabItem>
</Tabs>
