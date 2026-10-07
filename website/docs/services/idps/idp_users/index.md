--- 
title: idp_users
hide_title: false
hide_table_of_contents: false
keywords:
  - idp_users
  - idps
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

Creates, updates, deletes, gets or lists an <code>idp_users</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="idp_users" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.idps.idp_users" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_identity_provider_application_user"
    values={[
        { label: 'get_identity_provider_application_user', value: 'get_identity_provider_application_user' },
        { label: 'list_identity_provider_application_users', value: 'list_identity_provider_application_users' }
    ]}
>
<TabItem value="get_identity_provider_application_user">

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
    <td>Unique key of the user</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resources related to the IdP user</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="externalId" /></td>
    <td><code>string</code></td>
    <td>Unique IdP-specific identifier for the user (example: saml.jackson@example.com)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>IdP-specific profile for the user.   IdP user profiles are IdP-specific but may be customized by the Profile Editor in the Admin Console.  &gt; **Note:** Okta variable names have reserved characters that may conflict with the name of an IdP assertion attribute. You can use the **External name** to define the attribute name as defined in an IdP assertion such as a SAML attribute name.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_identity_provider_application_users">

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
    <td>Unique key of the user</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resources related to the IdP user</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="externalId" /></td>
    <td><code>string</code></td>
    <td>Unique IdP-specific identifier for the user (example: saml.jackson@example.com)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>IdP-specific profile for the user.   IdP user profiles are IdP-specific but may be customized by the Profile Editor in the Admin Console.  &gt; **Note:** Okta variable names have reserved characters that may conflict with the name of an IdP assertion attribute. You can use the **External name** to define the attribute name as defined in an IdP assertion such as a SAML attribute name.</td>
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
    <td><a href="#get_identity_provider_application_user"><CopyableCode code="get_identity_provider_application_user" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-idpId"><code>idpId</code></a>, <a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a linked identity provider (IdP) user by ID</td>
</tr>
<tr>
    <td><a href="#list_identity_provider_application_users"><CopyableCode code="list_identity_provider_application_users" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-idpId"><code>idpId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-q"><code>q</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-expand"><code>expand</code></a></td>
    <td>Lists all the users linked to an identity provider (IdP)</td>
</tr>
<tr>
    <td><a href="#unlink_user_from_identity_provider"><CopyableCode code="unlink_user_from_identity_provider" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-idpId"><code>idpId</code></a>, <a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unlinks the Okta user and the identity provider (IdP) user. The next time the user federates into Okta through this IdP, they have to re-link their account according to the account link policy.</td>
</tr>
<tr>
    <td><a href="#link_user_to_identity_provider"><CopyableCode code="link_user_to_identity_provider" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-idpId"><code>idpId</code></a>, <a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Links an Okta user to an existing SAML or social identity provider (IdP).<br /><br />The SAML IdP must have `honorPersistentNameId` set to `true` to use this API.<br />The [Name Identifier Format](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/IdentityProvider/#tag/IdentityProvider/operation/replaceIdentityProvider!path=protocol/0/settings&t=request) of the incoming assertion must be `urn:oasis:names:tc:SAML:2.0:nameid-format:persistent`.</td>
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
<tr id="parameter-idpId">
    <td><CopyableCode code="idpId" /></td>
    <td><code>string</code></td>
    <td>`id` of IdP</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-userId">
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>ID of an existing Okta user</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](https://developer.okta.com/docs/api/#pagination) and [Link header](https://developer.okta.com/docs/api/#link-header).</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>Expand user data</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer</code></td>
    <td>A limit on the number of objects to return</td>
</tr>
<tr id="parameter-q">
    <td><CopyableCode code="q" /></td>
    <td><code>string</code></td>
    <td>Searches the records for matching value</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_identity_provider_application_user"
    values={[
        { label: 'get_identity_provider_application_user', value: 'get_identity_provider_application_user' },
        { label: 'list_identity_provider_application_users', value: 'list_identity_provider_application_users' }
    ]}
>
<TabItem value="get_identity_provider_application_user">

Retrieves a linked identity provider (IdP) user by ID

```sql
SELECT
id,
_embedded,
_links,
created,
externalId,
lastUpdated,
profile
FROM okta.idps.idp_users
WHERE idpId = '{{ idpId }}' -- required
AND userId = '{{ userId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_identity_provider_application_users">

Lists all the users linked to an identity provider (IdP)

```sql
SELECT
id,
_embedded,
_links,
created,
externalId,
lastUpdated,
profile
FROM okta.idps.idp_users
WHERE idpId = '{{ idpId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND q = '{{ q }}'
AND after = '{{ after }}'
AND limit = '{{ limit }}'
AND expand = '{{ expand }}'
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="unlink_user_from_identity_provider"
    values={[
        { label: 'unlink_user_from_identity_provider', value: 'unlink_user_from_identity_provider' }
    ]}
>
<TabItem value="unlink_user_from_identity_provider">

Unlinks the Okta user and the identity provider (IdP) user. The next time the user federates into Okta through this IdP, they have to re-link their account according to the account link policy.

```sql
DELETE FROM okta.idps.idp_users
WHERE idpId = '{{ idpId }}' --required
AND userId = '{{ userId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="link_user_to_identity_provider"
    values={[
        { label: 'link_user_to_identity_provider', value: 'link_user_to_identity_provider' }
    ]}
>
<TabItem value="link_user_to_identity_provider">

Links an Okta user to an existing SAML or social identity provider (IdP).<br /><br />The SAML IdP must have `honorPersistentNameId` set to `true` to use this API.<br />The [Name Identifier Format](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/IdentityProvider/#tag/IdentityProvider/operation/replaceIdentityProvider!path=protocol/0/settings&t=request) of the incoming assertion must be `urn:oasis:names:tc:SAML:2.0:nameid-format:persistent`.

```sql
EXEC okta.idps.idp_users.link_user_to_identity_provider 
@idpId='{{ idpId }}' --required, 
@userId='{{ userId }}' --required, 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"externalId": "{{ externalId }}"
}'
;
```
</TabItem>
</Tabs>
