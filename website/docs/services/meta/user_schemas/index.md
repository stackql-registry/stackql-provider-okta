--- 
title: user_schemas
hide_title: false
hide_table_of_contents: false
keywords:
  - user_schemas
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

Creates, updates, deletes, gets or lists a <code>user_schemas</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="user_schemas" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.meta.user_schemas" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_user_schema"
    values={[
        { label: 'get_user_schema', value: 'get_user_schema' }
    ]}
>
<TabItem value="get_user_schema">

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
    <td>URI of user schema</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the schema</td>
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
    <td><CopyableCode code="created" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the schema was created</td>
</tr>
<tr>
    <td><CopyableCode code="definitions" /></td>
    <td><code>object</code></td>
    <td>User profile subschemas  The profile object for a user is defined by a composite schema of base and custom properties using a JSON path to reference subschemas. The `#base` properties are defined and versioned by Okta, while `#custom` properties are extensible. Custom property names for the profile object must be unique and can't conflict with a property name defined in the `#base` subschema.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the schema was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>User Object Properties</td>
</tr>
<tr>
    <td><CopyableCode code="title" /></td>
    <td><code>string</code></td>
    <td>User-defined display name for the schema</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of [root schema](https://tools.ietf.org/html/draft-zyp-json-schema-04#section-3.4)</td>
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
    <td><a href="#get_user_schema"><CopyableCode code="get_user_schema" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-schemaId"><code>schemaId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the schema for a user type</td>
</tr>
<tr>
    <td><a href="#update_user_profile"><CopyableCode code="update_user_profile" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-schemaId"><code>schemaId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates a user schema. Use this request to update, add, or remove one or more profile properties in a user schema. If you specify `default` for the `schemaId`, updates will apply to the default user type.<br /><br />Unlike custom user profile properties, limited changes are allowed to base user profile properties (permissions, nullability of the `firstName` and `lastName` properties, or pattern for `login`).<br />You can't remove a property from the default schema if it's being referenced as a [`matchAttribute`](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/identityprovider/other/createidentityprovider#other/createidentityprovider/t=request&path=policy/subject/matchattribute) in `SAML2` IdPs.<br />Currently, all validation of SAML assertions are only performed against the default user type.<br /><br />&gt; **Note:** You must set properties explicitly to `null` to remove them from the schema; otherwise, `POST` is interpreted as a partial update.</td>
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
<tr id="parameter-schemaId">
    <td><CopyableCode code="schemaId" /></td>
    <td><code>string</code></td>
    <td>Schema ID. You can also use `default` to refer to the default user type schema.</td>
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
    defaultValue="get_user_schema"
    values={[
        { label: 'get_user_schema', value: 'get_user_schema' }
    ]}
>
<TabItem value="get_user_schema">

Retrieves the schema for a user type

```sql
SELECT
id,
name,
$schema,
_links,
created,
definitions,
lastUpdated,
properties,
title,
type
FROM okta.meta.user_schemas
WHERE schemaId = '{{ schemaId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_user_profile"
    values={[
        { label: 'update_user_profile', value: 'update_user_profile' }
    ]}
>
<TabItem value="update_user_profile">

Updates a user schema. Use this request to update, add, or remove one or more profile properties in a user schema. If you specify `default` for the `schemaId`, updates will apply to the default user type.<br /><br />Unlike custom user profile properties, limited changes are allowed to base user profile properties (permissions, nullability of the `firstName` and `lastName` properties, or pattern for `login`).<br />You can't remove a property from the default schema if it's being referenced as a [`matchAttribute`](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/identityprovider/other/createidentityprovider#other/createidentityprovider/t=request&path=policy/subject/matchattribute) in `SAML2` IdPs.<br />Currently, all validation of SAML assertions are only performed against the default user type.<br /><br />&gt; **Note:** You must set properties explicitly to `null` to remove them from the schema; otherwise, `POST` is interpreted as a partial update.

```sql
UPDATE okta.meta.user_schemas
SET 
definitions = '{{ definitions }}',
properties = '{{ properties }}',
title = '{{ title }}'
WHERE 
schemaId = '{{ schemaId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
$schema,
_links,
created,
definitions,
lastUpdated,
properties,
title,
type;
```
</TabItem>
</Tabs>
