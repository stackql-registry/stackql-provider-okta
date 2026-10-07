--- 
title: users
hide_title: false
hide_table_of_contents: false
keywords:
  - users
  - users
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

Creates, updates, deletes, gets or lists a <code>users</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="users" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.users.users" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_user"
    values={[
        { label: 'get_user', value: 'get_user' },
        { label: 'list_users', value: 'list_users' }
    ]}
>
<TabItem value="get_user">

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
    <td>The unique key for the user</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resources related to the user using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://datatracker.ietf.org/doc/html/rfc8288) available for the current status of a user. The links object is used for dynamic discovery of related resources, lifecycle operations, and credential operations. The links object is read-only.  For an individual user result, the links object contains a full set of link relations available for that user as determined by your policies. For a collection of users, the links object contains only the `self` link. Operations that return a collection of users include [List all users](https://developer.okta.com/docs/api/openapi/okta-management/management/user/listusers) and [List all group member users](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Group/#tag/Group/operation/listGroupUsers).</td>
</tr>
<tr>
    <td><CopyableCode code="activated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the user status transitioned to `ACTIVE`</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the user was created</td>
</tr>
<tr>
    <td><CopyableCode code="credentials" /></td>
    <td><code>object</code></td>
    <td>Specifies primary authentication and recovery credentials for a user. Credential types and requirements vary depending on the provider and security policy of the org.</td>
</tr>
<tr>
    <td><CopyableCode code="lastLogin" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp of the last login</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the user was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="passwordChanged" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the user's password was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>Specifies the default and custom profile properties for a user.  The default user profile is based on the [System for Cross-domain Identity Management: Core Schema](https://datatracker.ietf.org/doc/html/rfc7643).  The only permitted customizations of the default profile are to update permissions, change whether the `firstName` and `lastName` properties are nullable, and specify a [pattern](https://developer.okta.com/docs/reference/api/schemas/#login-pattern-validation) for `login`. You can use the Profile Editor in the Admin Console or the [Schemas API](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UISchema/#tag/UISchema) to make schema modifications.  You can extend user profiles with custom properties. You must first add the custom property to the user profile schema before you reference it. You can use the Profile Editor in the Admin Console or the [Schemas API](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UISchema/#tag/UISchema) to manage schema extensions.  Custom attributes can contain HTML tags. It's the client's responsibility to escape or encode this data before displaying it. Use [best-practices](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html) to prevent cross-site scripting.</td>
</tr>
<tr>
    <td><CopyableCode code="realmId" /></td>
    <td><code>string</code></td>
    <td>The ID of the realm in which the user is residing. See [Realms](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/realm). (example: guo1bfiNtSnZYILxO0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The current status of the user.  The status of a user changes in response to explicit events, such as admin-driven lifecycle changes, user login, or self-service password recovery. Okta doesn't asynchronously sweep through users and update their password expiry state, for example. Instead, Okta evaluates password policy at login time, notices the password has expired, and moves the user to the expired state. When running reports, remember that the data is valid as of the last login or lifecycle event for that user.  &gt; **Note:** The `ACTIVATING` status is a transitional status that occurs when a user is being activated but hasn't completed the activation process. This status isn't directly settable through the API, nor should you use it for any of your user management workflows. (ACTIVE, DEPROVISIONED, LOCKED_OUT, PASSWORD_EXPIRED, PROVISIONED, RECOVERY, STAGED, SUSPENDED)</td>
</tr>
<tr>
    <td><CopyableCode code="statusChanged" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the status of the user last changed</td>
</tr>
<tr>
    <td><CopyableCode code="transitioningToStatus" /></td>
    <td><code>string</code></td>
    <td>The target status of an in-progress asynchronous status transition. This property is only returned if the user's state is transitioning. (ACTIVE, DEPROVISIONED, PROVISIONED)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>object</code></td>
    <td>The user type that determines the schema for the user's profile. The `type` property is a map that identifies the [User Types](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UserType/#tag/UserType).  Currently it contains a single element, `id`. It can be specified when creating a new user, and can be updated by an admin on a full replace of an existing user (but not a partial update).</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_users">

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
    <td>The unique key for the user</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resources related to the user using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://datatracker.ietf.org/doc/html/rfc8288) available for the current status of a user. The links object is used for dynamic discovery of related resources, lifecycle operations, and credential operations. The links object is read-only.  For an individual user result, the links object contains a full set of link relations available for that user as determined by your policies. For a collection of users, the links object contains only the `self` link. Operations that return a collection of users include [List all users](https://developer.okta.com/docs/api/openapi/okta-management/management/user/listusers) and [List all group member users](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Group/#tag/Group/operation/listGroupUsers).</td>
</tr>
<tr>
    <td><CopyableCode code="activated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the user status transitioned to `ACTIVE`</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the user was created</td>
</tr>
<tr>
    <td><CopyableCode code="credentials" /></td>
    <td><code>object</code></td>
    <td>Specifies primary authentication and recovery credentials for a user. Credential types and requirements vary depending on the provider and security policy of the org.</td>
</tr>
<tr>
    <td><CopyableCode code="lastLogin" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp of the last login</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the user was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="passwordChanged" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the user's password was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>Specifies the default and custom profile properties for a user.  The default user profile is based on the [System for Cross-domain Identity Management: Core Schema](https://datatracker.ietf.org/doc/html/rfc7643).  The only permitted customizations of the default profile are to update permissions, change whether the `firstName` and `lastName` properties are nullable, and specify a [pattern](https://developer.okta.com/docs/reference/api/schemas/#login-pattern-validation) for `login`. You can use the Profile Editor in the Admin Console or the [Schemas API](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UISchema/#tag/UISchema) to make schema modifications.  You can extend user profiles with custom properties. You must first add the custom property to the user profile schema before you reference it. You can use the Profile Editor in the Admin Console or the [Schemas API](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UISchema/#tag/UISchema) to manage schema extensions.  Custom attributes can contain HTML tags. It's the client's responsibility to escape or encode this data before displaying it. Use [best-practices](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html) to prevent cross-site scripting.</td>
</tr>
<tr>
    <td><CopyableCode code="realmId" /></td>
    <td><code>string</code></td>
    <td>The ID of the realm in which the user is residing. See [Realms](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/realm). (example: guo1bfiNtSnZYILxO0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The current status of the user.  The status of a user changes in response to explicit events, such as admin-driven lifecycle changes, user login, or self-service password recovery. Okta doesn't asynchronously sweep through users and update their password expiry state, for example. Instead, Okta evaluates password policy at login time, notices the password has expired, and moves the user to the expired state. When running reports, remember that the data is valid as of the last login or lifecycle event for that user.  &gt; **Note:** The `ACTIVATING` status is a transitional status that occurs when a user is being activated but hasn't completed the activation process. This status isn't directly settable through the API, nor should you use it for any of your user management workflows. (ACTIVE, DEPROVISIONED, LOCKED_OUT, PASSWORD_EXPIRED, PROVISIONED, RECOVERY, STAGED, SUSPENDED)</td>
</tr>
<tr>
    <td><CopyableCode code="statusChanged" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp when the status of the user last changed</td>
</tr>
<tr>
    <td><CopyableCode code="transitioningToStatus" /></td>
    <td><code>string</code></td>
    <td>The target status of an in-progress asynchronous status transition. This property is only returned if the user's state is transitioning. (ACTIVE, DEPROVISIONED, PROVISIONED)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>object</code></td>
    <td>The user type that determines the schema for the user's profile. The `type` property is a map that identifies the [User Types](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UserType/#tag/UserType).  Currently it contains a single element, `id`. It can be specified when creating a new user, and can be updated by an admin on a full replace of an existing user (but not a partial update).</td>
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
    <td><a href="#get_user"><CopyableCode code="get_user" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-Content-Type"><code>Content-Type</code></a>, <a href="#parameter-expand"><code>expand</code></a></td>
    <td>Retrieves a user from your Okta org.<br /><br />You can substitute `me` for the `id` to fetch the current user linked to an API token or session cookie.<br /> * The request returns the user linked to the API token that is specified in the Authorization header, not the user linked to the active session. Details of the admin user who granted the API token is returned.<br /> * When the end user has an active Okta session, it is typically a CORS request from the browser. Therefore, it's possible to retrieve the current user without the Authorization header.<br /><br />When fetching a user by `login` or `login shortname`, [URL encode](https://developer.mozilla.org/en-US/docs/Glossary/Percent-encoding) the request parameter to ensure that special characters are escaped properly. Logins with a `/` character can only be fetched by `id` due to URL issues with escaping the `/` character. If you don't know a user's ID, you can use the [List all users](https://developer.okta.com/docs/api/openapi/okta-management/management/user/listusers) endpoint to find it.<br /><br />&gt; **Note:** Some browsers block third-party cookies by default, which disrupts Okta functionality in certain flows. See [Mitigate the impact of third-party cookie deprecation](https://help.okta.com/okta_help.htm?type=oie&id=ext-third-party-cookies).</td>
</tr>
<tr>
    <td><a href="#list_users"><CopyableCode code="list_users" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-Content-Type"><code>Content-Type</code></a>, <a href="#parameter-search"><code>search</code></a>, <a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-q"><code>q</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-sortBy"><code>sortBy</code></a>, <a href="#parameter-sortOrder"><code>sortOrder</code></a>, <a href="#parameter-fields"><code>fields</code></a>, <a href="#parameter-expand"><code>expand</code></a></td>
    <td>Lists users in your org, with pagination in most cases.<br /><br />A subset of users can be returned that match a supported filter expression or search criteria. Different results are returned depending on specified queries in the request.<br /><br />&gt; **Notes:**<br />&gt;  * This operation omits users that have a status of `DEPROVISIONED` in the response. To return all users, use a filter or search query instead.<br />&gt;  * The `search` parameter results are sourced from an eventually consistent datasource and may not reflect the latest information.</td>
</tr>
<tr>
    <td><a href="#create_user"><CopyableCode code="create_user" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-profile"><code>profile</code></a></td>
    <td><a href="#parameter-activate"><code>activate</code></a>, <a href="#parameter-provider"><code>provider</code></a>, <a href="#parameter-nextLogin"><code>nextLogin</code></a></td>
    <td>Creates a new user in your Okta org with or without credentials.<br /><br />&gt; **Legal Disclaimer**<br />&gt;<br />&gt; After a user is added to the Okta directory, they receive an activation email. As part of signing up for this service,<br />&gt; you agreed not to use Okta's service/product to spam and/or send unsolicited messages.<br />&gt; Please refrain from adding unrelated accounts to the directory as Okta is not responsible for, and disclaims any and all<br />&gt; liability associated with, the activation email's content. You, and you alone, bear responsibility for the emails sent to any recipients.<br /><br />All responses return the created user. Activation of a user is an asynchronous operation. The system performs group reconciliation during activation and assigns the user to all apps via direct or indirect relationships (group memberships).<br />* The user's `transitioningToStatus` property is `ACTIVE` during activation to indicate that the user hasn't completed the asynchronous operation.<br />* The user's `status` is `ACTIVE` when the activation process is complete.<br /><br />The user is emailed a one-time activation token if activated without a password.<br /><br />&gt; **Note:** If the user is assigned to an app that is configured for provisioning, the activation process triggers downstream provisioning to the app.  It is possible for a user to sign in before these apps have been successfully provisioned for the user.<br /><br />&gt; **Important:** Do not generate or send a one-time activation token when activating users with an assigned password. Users should sign in with their assigned password.<br /><br />For more information about the various scenarios of creating a user listed in the examples, see the [User creation scenarios](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/user/section/user-status#section/User-creation-scenarios) section.</td>
</tr>
<tr>
    <td><a href="#update_user"><CopyableCode code="update_user" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-strict"><code>strict</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Updates a user's profile or credentials with partial update semantics.<br /><br />&gt; **Important:** Use the `POST` method for partial updates. Unspecified properties are set to null with `PUT`.<br /><br />`profile` and `credentials` can be updated independently or together with a single request.<br /><br />&gt; **Notes:**<br />&gt; * Currently, the user type of a user can only be changed using a full replacement `PUT` operation. If the request parameters of a partial update include the `type` element from the user object,<br />the value must match the existing type of the user. Only admins are permitted to change the user type of a user; end users are not allowed to change their own user type.<br />&gt;<br />&gt; * To update a current user's profile with partial semantics, you can use the `/api/v1/users/me` endpoint. But, a user can only update profile properties that they have write access for. Within the profile, if the user tries to update the primary or the secondary email IDs, verification emails are sent to those email IDs, and the fields are updated only upon verification.<br />&gt;<br />&gt; * You can update user profiles of users in the `DEPROVISIONED` status if you have the **Edit Deactivated User Profile Updates** option turned on in the Admin Console. See [deactivated user profiles](https://help.okta.com/okta_help.htm?type=oie&id=edit-deactivated-users).<br /><br />If you are using this endpoint to set a password, it sets a password without validating existing user credentials. This is an administrative operation. For operations that validate credentials, refer to the [Reset password](https://developer.okta.com/docs/api/openapi/okta-management/management/usercred/resetpassword), [Start forgot password flow](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UserCred/#tag/UserCred/operation/forgotPassword), and [Update password](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UserCred/#tag/UserCred/operation/changePassword) endpoints.</td>
</tr>
<tr>
    <td><a href="#replace_user"><CopyableCode code="replace_user" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-strict"><code>strict</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Replaces a user's profile, credentials, or both using strict-update semantics.<br /><br />All profile properties must be specified when updating a user's profile with a `PUT` method. Any property not specified in the request is deleted.<br />&gt; **Important:** Don't use a `PUT` method for partial updates.</td>
</tr>
<tr>
    <td><a href="#delete_user"><CopyableCode code="delete_user" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-sendEmail"><code>sendEmail</code></a>, <a href="#parameter-Prefer"><code>Prefer</code></a></td>
    <td>Deletes a user permanently. This operation can only be performed on users that have a `DEPROVISIONED` status.<br /><br />&gt; **Warning:** This action can't be recovered!<br /><br />This operation on a user that hasn't been deactivated causes that user to be deactivated. A second delete operation is required to delete the user.<br /><br />&gt; **Note:** You can also perform user deletion asynchronously. To invoke asynchronous user deletion, pass an HTTP header `Prefer: respond-async` with the request.<br /><br />This header is also supported by user deactivation, which is performed if the delete endpoint is invoked on a user that hasn't been deactivated.</td>
</tr>
<tr>
    <td><a href="#activate_user"><CopyableCode code="activate_user" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-sendEmail"><code>sendEmail</code></a></td>
    <td>Activates a user.<br /><br />Perform this operation only on users with a `STAGED` or `DEPROVISIONED` status. Activation of a user is an asynchronous operation.<br />* The user has the `transitioningToStatus` property with an `ACTIVE` value during activation. This indicates that the user hasn't completed the asynchronous operation.<br />* The user has an `ACTIVE` status when the activation process completes.<br /><br />Users who don't have a password must complete the welcome flow by visiting the activation link to complete the transition to `ACTIVE` status.<br /><br />&gt; **Note:** If you want to send a branded user activation email, change the subdomain of your request to the custom domain that's associated with the brand.<br />&gt; For example, change `subdomain.okta.com` to `custom.domain.one`. See [Multibrand and custom domains](https://developer.okta.com/docs/concepts/brands/#multibrand-and-custom-domains).<br /><br />&gt; **Note:** If you have optional password enabled, visiting the activation link is optional for users who aren't required to enroll a password.<br />&gt; See [Create user with optional password](https://developer.okta.com/docs/api/openapi/okta-management/management/user/create-user-with-optional-password#user/Create-user-with-optional-password).<br /><br />&gt; **Legal disclaimer**<br />&gt; After a user is added to the Okta directory, they receive an activation email. As part of signing up for this service,<br />&gt; you agreed not to use Okta's service/product to spam and/or send unsolicited messages.<br />&gt; Please refrain from adding unrelated accounts to the directory as Okta is not responsible for, and disclaims any and all<br />&gt; liability associated with, the activation email's content. You, and you alone, bear responsibility for the emails sent to any recipients.</td>
</tr>
<tr>
    <td><a href="#deactivate_user"><CopyableCode code="deactivate_user" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-sendEmail"><code>sendEmail</code></a>, <a href="#parameter-Prefer"><code>Prefer</code></a></td>
    <td>Deactivates a user.<br /><br />Perform this operation only on users that do not have a `DEPROVISIONED` status.<br />* The user's `transitioningToStatus` property is `DEPROVISIONED` during deactivation to indicate that the user hasn't completed the asynchronous operation.<br />* The user's status is `DEPROVISIONED` when the deactivation process is complete.<br /><br />&gt; **Important:** Deactivating a user is a **destructive** operation. The user is deprovisioned from all assigned apps, which might destroy their data such as email or files.<br />**This action cannot be recovered!**<br /><br />You can also perform user deactivation asynchronously. To invoke asynchronous user deactivation, pass an HTTP header `Prefer: respond-async` with the request.<br /><br />&gt; **Note:** Users with the `DEPROVISIONED` status won't have their profiles updated when running the [Update a user](https://developer.okta.com/docs/api/openapi/okta-management/management/user/updateuser) endpoint unless you have the **Edit Deactived User Profile Updates** option turned on in the Admin Console. See [Edit deactivated user profiles](https://help.okta.com/okta_help.htm?type=oie&id=edit-deactivated-users).</td>
</tr>
<tr>
    <td><a href="#expire_password"><CopyableCode code="expire_password" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Expires the password. This operation transitions the user status to `PASSWORD_EXPIRED` so that the user must change their password the next time that they sign in.<br /><br /><br />If you have integrated Okta with your on-premises Active Directory (AD), then setting a user's password as expired in Okta also expires the password in AD.<br />When the user tries to sign in to Okta, delegated authentication finds the password-expired status in AD,<br />and the user is presented with the password-expired page where they can change their password.<br /><br />&gt; **Note:** The Okta account management policy doesn't support the `/users/&#123;id&#125;/lifecycle/expire_password` endpoint. See [Configure an Okta account management policy](https://developer.okta.com/docs/guides/okta-account-management-policy/main/).</td>
</tr>
<tr>
    <td><a href="#expire_password_with_temp_password"><CopyableCode code="expire_password_with_temp_password" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-revokeSessions"><code>revokeSessions</code></a></td>
    <td>Expires the password and resets the user's password to a temporary password. This operation transitions the user status to `PASSWORD_EXPIRED` so that the user must change their password the next time that they sign in.<br />The user's password is reset to a temporary password that's returned, and then the user's password is expired.<br />If `revokeSessions` is included in the request with a value of `true`, the user's current outstanding sessions are revoked and require re-authentication.<br /><br />If you have integrated Okta with your on-premises Active Directory (AD), then setting a user's password as expired in Okta also expires the password in AD.<br />When the user tries to sign in to Okta, delegated authentication finds the password-expired status in AD, and the user is presented with the password-expired page where they can change their password.</td>
</tr>
<tr>
    <td><a href="#reactivate_user"><CopyableCode code="reactivate_user" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-sendEmail"><code>sendEmail</code></a></td>
    <td>Reactivates a user.<br /><br />Perform this operation only on users with a `PROVISIONED` or `RECOVERY` [status](https://developer.okta.com/docs/api/openapi/okta-management/management/user/listusers#user/listusers/t=response&c=200&path=status).<br />This operation restarts the activation workflow if for some reason the user activation wasn't completed when using the `activationToken` from [Activate User](https://developer.okta.com/docs/api/openapi/okta-management/management/userlifecycle/activateuser).<br /><br />Users that don't have a password must complete the flow by completing the [Reset password](https://developer.okta.com/docs/api/openapi/okta-management/management/usercred/resetpassword) flow and MFA enrollment steps to transition the user to `ACTIVE` status.<br /><br />If `sendEmail` is `false`, returns an activation link for the user to set up their account. The activation token can be used to create a custom activation link.</td>
</tr>
<tr>
    <td><a href="#reset_factors"><CopyableCode code="reset_factors" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Resets all factors for the specified user. All MFA factor enrollments return to the unenrolled state. The user's status remains `ACTIVE`. This link is present only if the user is currently enrolled in one or more MFA factors.</td>
</tr>
<tr>
    <td><a href="#reset_password"><CopyableCode code="reset_password" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-sendEmail"><code>sendEmail</code></a>, <a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-revokeSessions"><code>revokeSessions</code></a></td>
    <td>Resets a password. Generates a one-time token (OTT) that you can use to reset a user's password. You can automatically email the OTT link to the user or return the OTT to the API caller and distribute using a custom flow.<br /><br />This operation transitions the user to the `RECOVERY` status. The user is then not able to sign in or initiate a forgot password flow until they complete the reset flow.<br /><br />This operation provides an option to delete all the user's sessions. However, if the request is made in the context of a session owned by the specified user, that session isn't cleared.<br />&gt; **Note:** You can also use this API to convert a user with the Okta credential provider to use a federated provider. After this conversion, the user can't directly sign in with a password.<br />&gt; To convert a federated user back to an Okta user, use the default API call.<br /><br />If an email address is associated with multiple users, keep in mind the following to ensure a successful password recovery lookup:<br />  * Okta no longer includes deactivated users in the lookup.<br />  * The lookup searches sign-in IDs first, then primary email addresses, and then secondary email addresses.<br />  If `sendEmail` is `false`, returns a link for the user to reset their password.</td>
</tr>
<tr>
    <td><a href="#suspend_user"><CopyableCode code="suspend_user" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Suspends a user. Perform this operation only on users with an `ACTIVE` status. The user has a `SUSPENDED` status when the process completes.<br /><br />Suspended users can't sign in to Okta. They can only be unsuspended or deactivated. Their group and app assignments are retained.</td>
</tr>
<tr>
    <td><a href="#unlock_user"><CopyableCode code="unlock_user" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unlocks a user with a `LOCKED_OUT` status or unlocks a user with an `ACTIVE` status that's blocked from unknown devices. Unlocked users have an `ACTIVE` status and can sign in with their current password.<br />&gt; **Note:** This operation works with Okta-sourced users. It doesn't support directory-sourced accounts such as Active Directory.</td>
</tr>
<tr>
    <td><a href="#unsuspend_user"><CopyableCode code="unsuspend_user" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unsuspends a user and returns them to the `ACTIVE` state. This operation can only be performed on users that have a `SUSPENDED` status.</td>
</tr>
<tr>
    <td><a href="#change_password"><CopyableCode code="change_password" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-strict"><code>strict</code></a></td>
    <td>Updates a user's password by validating the user's current password.<br /><br />This operation provides an option to delete all the sessions of the specified user. However, if the request is made in the context of a session owned by the specified user, that session isn't cleared.<br /><br />You can only perform this operation on users in `STAGED`, `ACTIVE`, `PASSWORD_EXPIRED`, or `RECOVERY` status that have a valid [password credential](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/User/#tag/User/operation/createUser!path=credentials/password&t=request).<br /><br />The user transitions to `ACTIVE` status when successfully invoked in `RECOVERY` status.<br /><br />&gt; **Note:** The Okta account management policy doesn't support the `/users/&#123;userId&#125;/credentials/change_password` endpoint. See [Configure an Okta account management policy](https://developer.okta.com/docs/guides/okta-account-management-policy/main/).</td>
</tr>
<tr>
    <td><a href="#change_recovery_question"><CopyableCode code="change_recovery_question" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates a user's recovery question and answer credential by validating the user's current password.<br />You can only perform this operation on users in `STAGED`, `ACTIVE`, or `RECOVERY` status that have a valid [password credential](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/User/#tag/User/operation/createUser!path=credentials/password&t=request).</td>
</tr>
<tr>
    <td><a href="#forgot_password"><CopyableCode code="forgot_password" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-sendEmail"><code>sendEmail</code></a></td>
    <td>Starts the forgot password flow.<br /><br />Generates a one-time token (OTT) that you can use to reset a user's password.<br /><br />The user must validate their security question's answer when visiting the reset link. Perform this operation only on users with an `ACTIVE` status and<br />a valid [recovery question credential](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/User/#tag/User/operation/createUser!path=credentials/recovery_question&t=request).<br /><br />&gt; **Note:** If you have migrated to Identity Engine, you can allow users to recover passwords with any enrolled MFA authenticator. See [Self-service account recovery](https://help.okta.com/oie/en-us/content/topics/identity-engine/authenticators/configure-sspr.htm?cshid=ext-config-sspr).<br /><br />If an email address is associated with multiple users, keep in mind the following to ensure a successful password recovery lookup:<br />  * Okta no longer includes deactivated users in the lookup.<br />  * The lookup searches sign-in IDs first, then primary email addresses, and then secondary email addresses.<br /><br />If `sendEmail` is `false`, returns a link for the user to reset their password. This operation doesn't affect the status of the user.</td>
</tr>
<tr>
    <td><a href="#forgot_password_set_new_password"><CopyableCode code="forgot_password_set_new_password" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-sendEmail"><code>sendEmail</code></a></td>
    <td>Resets the user's password to the specified password if the provided answer to the recovery question is correct.<br />You must include the recovery question answer with the submission.</td>
</tr>
<tr>
    <td><a href="#revoke_user_sessions"><CopyableCode code="revoke_user_sessions" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-oauthTokens"><code>oauthTokens</code></a>, <a href="#parameter-forgetDevices"><code>forgetDevices</code></a></td>
    <td>Revokes all active identity provider sessions of the user. This forces the user to authenticate on the next operation. Optionally revokes OpenID Connect and OAuth refresh and access tokens issued to the user.<br /><br />You can also clear the user's remembered factors for all devices using the `forgetDevices` parameter. See [forgetDevices](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UserSessions/#tag/UserSessions/operation/revokeUserSessions!in=query&path=forgetDevices&t=request).<br />&gt; **Note:** This operation doesn't clear the sessions created for web or native apps.</td>
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
<tr id="parameter-id">
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>An ID, login, or login shortname (as long as the shortname is unambiguous) of an existing Okta user</td>
</tr>
<tr id="parameter-sendEmail">
    <td><CopyableCode code="sendEmail" /></td>
    <td><code>string</code></td>
    <td></td>
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
<tr id="parameter-Content-Type">
    <td><CopyableCode code="Content-Type" /></td>
    <td><code>string</code></td>
    <td>Specifies the media type of the resource. Optional `okta-response` value can be included for performance optimization.  Complex DelAuth configurations may degrade performance when fetching specific parts of the response, and passing this parameter can omit these parts, bypassing the bottleneck.  Enum values for `okta-response`:   * `omitCredentials`: Omits the credentials subobject from the response.   * `omitCredentialsLinks`: Omits the following HAL links from the response: Update password, Change recovery question, Start forgot password flow, Reset password, Reset factors, Unlock.   * `omitTransitioningToStatus`: Omits the `transitioningToStatus` field from the response.</td>
</tr>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>The ETag value of the user's expected current state. This becomes a conditional request used for concurrency control. See [Conditional Requests and Entity Tags]https://developer.okta.com/docs/api#conditional-requests-and-entity-tags. (example: W/"1234567890abcdef")</td>
</tr>
<tr id="parameter-Prefer">
    <td><CopyableCode code="Prefer" /></td>
    <td><code>string</code></td>
    <td>Request asynchronous processing</td>
</tr>
<tr id="parameter-activate">
    <td><CopyableCode code="activate" /></td>
    <td><code>string</code></td>
    <td>Executes an [activation lifecycle](https://developer.okta.com/docs/api/openapi/okta-management/management/userlifecycle/activateuser) operation when creating the user</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](https://developer.okta.com/docs/api/#pagination) and [Link header](https://developer.okta.com/docs/api/#link-header).</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>&lt;x-lifecycle-container&gt;&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt;&lt;/x-lifecycle-container&gt;A parameter to include metadata in the `_embedded` property. Supported value: `classification`.</td>
</tr>
<tr id="parameter-fields">
    <td><CopyableCode code="fields" /></td>
    <td><code>string</code></td>
    <td>Specifies a select set of user properties to query. Any other properties will be filtered out of the returned users. This is often called field projections in APIs, which can reduce payload size, improve performance, and limit unneccessary data exposure.  Requested fields should be comma-separated. Comma-separate the fields and place sub-fields in the profile object inside a `profile:()` directive, for example `profile:(firstName, city)`. The `id` field is always included, regardless of whether it's specified in the `fields` parameter.</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>Filters users with a supported expression for a subset of properties.  &gt; **Note:** Returned users include those with the `DEPROVISIONED` status.  This requires [URL encoding](https://developer.mozilla.org/en-US/docs/Glossary/Percent-encoding). For example, `filter=lastUpdated gt "2013-06-01T00:00:00.000Z"` is encoded as `filter=lastUpdated%20gt%20%222013-06-01T00:00:00.000Z%22`. Filtering is case-sensitive for property names and query values, while operators are case-insensitive.  Filtering supports the following limited number of properties: `status`, `lastUpdated`, `id`, `profile.login`, `profile.email`, `profile.firstName`, and `profile.lastName`.  Additionally, filtering supports only the equal `eq` operator from the standard Okta API filtering semantics, except in the case of the `lastUpdated` property. This property can also use the inequality operators (`gt`, `ge`, `lt`, and `le`). For logical operators, only the logical operators `and` and `or` are supported. The `not` operator isn't supported. See [Filter](https://developer.okta.com/docs/api/#filter) and [Operators](https://developer.okta.com/docs/api/#operators).</td>
</tr>
<tr id="parameter-forgetDevices">
    <td><CopyableCode code="forgetDevices" /></td>
    <td><code>string</code></td>
    <td>Clears the user's remembered factors for all devices. &gt; **Note:** This parameter defaults to false in Classic Engine.</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of results returned. Defaults to 10 if `q` is provided.  You can use `limit` with `after` to define the cursor location in the data set and manage the user records per page.</td>
</tr>
<tr id="parameter-nextLogin">
    <td><CopyableCode code="nextLogin" /></td>
    <td><code>string</code></td>
    <td>With `activate=true`, if `nextLogin=changePassword`, a user is created, activated, and the password is set to `EXPIRED`. The user must change it the next time they sign in.</td>
</tr>
<tr id="parameter-oauthTokens">
    <td><CopyableCode code="oauthTokens" /></td>
    <td><code>string</code></td>
    <td>Revokes issued OpenID Connect and OAuth refresh and access tokens</td>
</tr>
<tr id="parameter-provider">
    <td><CopyableCode code="provider" /></td>
    <td><code>string</code></td>
    <td>Indicates whether to create a user with a specified authentication provider.</td>
</tr>
<tr id="parameter-q">
    <td><CopyableCode code="q" /></td>
    <td><code>string</code></td>
    <td>Finds users who match the specified query. Use the `q` parameter for simple queries, such as a lookup of users by name when creating a people picker.  The value of `q` is matched against `firstName`, `lastName`, or `email`. This performs a `startsWith` match, but this is an implementation detail and can change without notice. You don't need to specify `firstName`, `lastName`, or `email`.  &gt; **Notes:** &gt; * Using the `q` parameter in a request omits users that have a status of `DEPROVISIONED`. To return all users, use a `filter` or `search` query instead. &gt; * This doesn't support pagination, but you can use `limit`. &gt; * This isn't designed for large data sets. For optimal performance, use the `search` parameter instead.</td>
</tr>
<tr id="parameter-revokeSessions">
    <td><CopyableCode code="revokeSessions" /></td>
    <td><code>string</code></td>
    <td>Revokes all user sessions, except for the current session, if set to `true`</td>
</tr>
<tr id="parameter-search">
    <td><CopyableCode code="search" /></td>
    <td><code>string</code></td>
    <td>Searches for users with a supported filtering expression for most properties. Okta recommends this query parameter because it provides the largest range of search options and optimal performance.  &gt; **Note:** Using an overly complex or long search query can result in an error.  This operation supports [pagination](https://developer.okta.com/docs/api/#pagination). Use an ID lookup for records that you update to ensure your results contain the latest data. Returned users include those with the `DEPROVISIONED` status.  Property names in the search parameter are case sensitive, whereas operators (`eq`, `sw`, and so on) and string values are case insensitive. Unlike with user logins, diacritical marks are significant in search string values: a search for `isaac.brock` finds `Isaac.Brock`, but doesn't find a property whose value is `isáàc.bröck`.  This operation requires [URL encoding](https://developer.mozilla.org/en-US/docs/Glossary/Percent-encoding). See [Special characters](https://developer.okta.com/docs/api/#special-characters).  This operation searches many properties:   * Any user profile attribute, including custom-defined attributes   * The top-level properties: `id`, `status`, `created`, `activated`, `statusChanged`, and `lastUpdated`   * The [user type](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UserType/#tag/UserType/operation/updateUserType) accessed as `type.id`   * Properties that have array values  &gt; **Note:** &lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; The ability to search by user classification is available as an [Early Access](https://developer.okta.com/docs/api/openapi/okta-management/guides/release-lifecycle/#early-access-ea) feature. The `classification.type` property cannot be used in conjunction with other search terms. You can search using `classification.type eq "LITE"` or `classification.type eq "STANDARD"`.  You can also use `sortBy` and `sortOrder` parameters. The `ne` (not equal) operator isn't supported, but you can obtain the same result by using `lt ... or ... gt`. For example, to see all users except those that have a status of `STAGED`, use `(status lt "STAGED" or status gt "STAGED")`.  You can search properties that are arrays. If any element matches the search term, the entire array (object) is returned. Okta follows the [SCIM Protocol Specification](https://tools.ietf.org/html/rfc7644#section-3.4.2.2) for searching arrays. You can search multiple arrays, multiple values in an array, as well as using the standard logical and filtering operators. See [Filter](https://developer.okta.com/docs/reference/core-okta-api/#filter).  Searches for users can be filtered by the following operators: `sw`, `eq`, and `co`. You can only use `co` with these select user profile attributes: `profile.firstName`, `profile.lastName`, `profile.email`, and `profile.login`. See [Operators](https://developer.okta.com/docs/api/#operators).</td>
</tr>
<tr id="parameter-sendEmail">
    <td><CopyableCode code="sendEmail" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-sortBy">
    <td><CopyableCode code="sortBy" /></td>
    <td><code>string</code></td>
    <td>Specifies the field to sort by (for search queries only). This can be any single property, for example `sortBy=profile.lastName`. Users with the same value for the `sortBy` property are ordered by `id`. Use with `sortOrder` to control the order of results.</td>
</tr>
<tr id="parameter-sortOrder">
    <td><CopyableCode code="sortOrder" /></td>
    <td><code>string</code></td>
    <td>Specifies sort order: `asc` or `desc` (for search queries only). This parameter is ignored if `sortBy` isn't present.</td>
</tr>
<tr id="parameter-strict">
    <td><CopyableCode code="strict" /></td>
    <td><code>string</code></td>
    <td>If true, validates against the password minimum age policy</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_user"
    values={[
        { label: 'get_user', value: 'get_user' },
        { label: 'list_users', value: 'list_users' }
    ]}
>
<TabItem value="get_user">

Retrieves a user from your Okta org.<br /><br />You can substitute `me` for the `id` to fetch the current user linked to an API token or session cookie.<br /> * The request returns the user linked to the API token that is specified in the Authorization header, not the user linked to the active session. Details of the admin user who granted the API token is returned.<br /> * When the end user has an active Okta session, it is typically a CORS request from the browser. Therefore, it's possible to retrieve the current user without the Authorization header.<br /><br />When fetching a user by `login` or `login shortname`, [URL encode](https://developer.mozilla.org/en-US/docs/Glossary/Percent-encoding) the request parameter to ensure that special characters are escaped properly. Logins with a `/` character can only be fetched by `id` due to URL issues with escaping the `/` character. If you don't know a user's ID, you can use the [List all users](https://developer.okta.com/docs/api/openapi/okta-management/management/user/listusers) endpoint to find it.<br /><br />&gt; **Note:** Some browsers block third-party cookies by default, which disrupts Okta functionality in certain flows. See [Mitigate the impact of third-party cookie deprecation](https://help.okta.com/okta_help.htm?type=oie&id=ext-third-party-cookies).

```sql
SELECT
id,
_embedded,
_links,
activated,
created,
credentials,
lastLogin,
lastUpdated,
passwordChanged,
profile,
realmId,
status,
statusChanged,
transitioningToStatus,
type
FROM okta.users.users
WHERE id = '{{ id }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND Content-Type = '{{ Content-Type }}'
AND expand = '{{ expand }}'
;
```
</TabItem>
<TabItem value="list_users">

Lists users in your org, with pagination in most cases.<br /><br />A subset of users can be returned that match a supported filter expression or search criteria. Different results are returned depending on specified queries in the request.<br /><br />&gt; **Notes:**<br />&gt;  * This operation omits users that have a status of `DEPROVISIONED` in the response. To return all users, use a filter or search query instead.<br />&gt;  * The `search` parameter results are sourced from an eventually consistent datasource and may not reflect the latest information.

```sql
SELECT
id,
_embedded,
_links,
activated,
created,
credentials,
lastLogin,
lastUpdated,
passwordChanged,
profile,
realmId,
status,
statusChanged,
transitioningToStatus,
type
FROM okta.users.users
WHERE subdomain = '{{ subdomain }}' -- required
AND Content-Type = '{{ Content-Type }}'
AND search = '{{ search }}'
AND filter = '{{ filter }}'
AND q = '{{ q }}'
AND after = '{{ after }}'
AND limit = '{{ limit }}'
AND sortBy = '{{ sortBy }}'
AND sortOrder = '{{ sortOrder }}'
AND fields = '{{ fields }}'
AND expand = '{{ expand }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_user"
    values={[
        { label: 'create_user', value: 'create_user' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_user">

Creates a new user in your Okta org with or without credentials.<br /><br />&gt; **Legal Disclaimer**<br />&gt;<br />&gt; After a user is added to the Okta directory, they receive an activation email. As part of signing up for this service,<br />&gt; you agreed not to use Okta's service/product to spam and/or send unsolicited messages.<br />&gt; Please refrain from adding unrelated accounts to the directory as Okta is not responsible for, and disclaims any and all<br />&gt; liability associated with, the activation email's content. You, and you alone, bear responsibility for the emails sent to any recipients.<br /><br />All responses return the created user. Activation of a user is an asynchronous operation. The system performs group reconciliation during activation and assigns the user to all apps via direct or indirect relationships (group memberships).<br />* The user's `transitioningToStatus` property is `ACTIVE` during activation to indicate that the user hasn't completed the asynchronous operation.<br />* The user's `status` is `ACTIVE` when the activation process is complete.<br /><br />The user is emailed a one-time activation token if activated without a password.<br /><br />&gt; **Note:** If the user is assigned to an app that is configured for provisioning, the activation process triggers downstream provisioning to the app.  It is possible for a user to sign in before these apps have been successfully provisioned for the user.<br /><br />&gt; **Important:** Do not generate or send a one-time activation token when activating users with an assigned password. Users should sign in with their assigned password.<br /><br />For more information about the various scenarios of creating a user listed in the examples, see the [User creation scenarios](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/user/section/user-status#section/User-creation-scenarios) section.

```sql
INSERT INTO okta.users.users (
credentials,
groupIds,
profile,
realmId,
type,
subdomain,
activate,
provider,
nextLogin
)
SELECT 
'{{ credentials }}',
'{{ groupIds }}',
'{{ profile }}' /* required */,
'{{ realmId }}',
'{{ type }}',
'{{ subdomain }}',
'{{ activate }}',
'{{ provider }}',
'{{ nextLogin }}'
RETURNING
id,
_embedded,
_links,
activated,
created,
credentials,
lastLogin,
lastUpdated,
passwordChanged,
profile,
realmId,
status,
statusChanged,
transitioningToStatus,
type
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: users
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the users resource.
    - name: credentials
      description: |
        Specifies primary authentication and recovery credentials for a user. Credential types and requirements vary depending on the provider and security policy of the org.
      value:
        password:
          hash:
            algorithm: "{{ algorithm }}"
            digestAlgorithm: "{{ digestAlgorithm }}"
            iterationCount: {{ iterationCount }}
            keySize: {{ keySize }}
            salt: "{{ salt }}"
            saltOrder: "{{ saltOrder }}"
            value: "{{ value }}"
            workFactor: {{ workFactor }}
          hook:
            type: "{{ type }}"
          value: "{{ value }}"
        provider:
          name: "{{ name }}"
          type: "{{ type }}"
        recovery_question:
          answer: "{{ answer }}"
          question: "{{ question }}"
    - name: groupIds
      value:
        - "{{ groupIds }}"
      description: |
        The list of group IDs of groups that the user is added to at the time of creation
    - name: profile
      description: |
        Specifies the default and custom profile properties for a user.
        The default user profile is based on the [System for Cross-domain Identity Management: Core Schema](https://datatracker.ietf.org/doc/html/rfc7643).
        The only permitted customizations of the default profile are to update permissions, change whether the \`firstName\` and \`lastName\` properties are nullable, and specify a [pattern](https://developer.okta.com/docs/reference/api/schemas/#login-pattern-validation) for \`login\`. You can use the Profile Editor in the Admin Console or the [Schemas API](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UISchema/#tag/UISchema) to make schema modifications.
        You can extend user profiles with custom properties. You must first add the custom property to the user profile schema before you reference it.
        You can use the Profile Editor in the Admin Console or the [Schemas API](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UISchema/#tag/UISchema) to manage schema extensions.
        Custom attributes can contain HTML tags. It's the client's responsibility to escape or encode this data before displaying it. Use [best-practices](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html) to prevent cross-site scripting.
      value:
        city: "{{ city }}"
        costCenter: "{{ costCenter }}"
        countryCode: "{{ countryCode }}"
        department: "{{ department }}"
        displayName: "{{ displayName }}"
        division: "{{ division }}"
        email: "{{ email }}"
        employeeNumber: "{{ employeeNumber }}"
        firstName: "{{ firstName }}"
        honorificPrefix: "{{ honorificPrefix }}"
        honorificSuffix: "{{ honorificSuffix }}"
        lastName: "{{ lastName }}"
        locale: "{{ locale }}"
        login: "{{ login }}"
        manager: "{{ manager }}"
        managerId: "{{ managerId }}"
        middleName: "{{ middleName }}"
        mobilePhone: "{{ mobilePhone }}"
        nickName: "{{ nickName }}"
        organization: "{{ organization }}"
        postalAddress: "{{ postalAddress }}"
        preferredLanguage: "{{ preferredLanguage }}"
        primaryPhone: "{{ primaryPhone }}"
        profileUrl: "{{ profileUrl }}"
        secondEmail: "{{ secondEmail }}"
        state: "{{ state }}"
        streetAddress: "{{ streetAddress }}"
        timezone: "{{ timezone }}"
        title: "{{ title }}"
        userType: "{{ userType }}"
        zipCode: "{{ zipCode }}"
    - name: realmId
      value: "{{ realmId }}"
      description: |
        The ID of the realm in which the user is residing. See [Realms](https://developer.okta.com/docs/api/openapi/okta-management/management/tags/realm).
    - name: type
      description: |
        The ID of the user type. Add this value if you want to create a user with a non-default [User Type](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UserType/).
        The user type determines which [schema](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Schema/) applies to that user. After a user has been created, the user can
        only be assigned a different user type by an administrator through a full replacement (\`PUT\`) operation.
      value:
        id: "{{ id }}"
    - name: activate
      value: "{{ activate }}"
      description: Executes an [activation lifecycle](https://developer.okta.com/docs/api/openapi/okta-management/management/userlifecycle/activateuser) operation when creating the user
      description: Executes an [activation lifecycle](https://developer.okta.com/docs/api/openapi/okta-management/management/userlifecycle/activateuser) operation when creating the user
    - name: provider
      value: "{{ provider }}"
      description: Indicates whether to create a user with a specified authentication provider.
      description: Indicates whether to create a user with a specified authentication provider.
    - name: nextLogin
      value: "{{ nextLogin }}"
      description: With \`activate=true\`, if \`nextLogin=changePassword\`, a user is created, activated, and the password is set to \`EXPIRED\`. The user must change it the next time they sign in.
      description: With \`activate=true\`, if \`nextLogin=changePassword\`, a user is created, activated, and the password is set to \`EXPIRED\`. The user must change it the next time they sign in.
`}</CodeBlock>

</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_user"
    values={[
        { label: 'update_user', value: 'update_user' }
    ]}
>
<TabItem value="update_user">

Updates a user's profile or credentials with partial update semantics.<br /><br />&gt; **Important:** Use the `POST` method for partial updates. Unspecified properties are set to null with `PUT`.<br /><br />`profile` and `credentials` can be updated independently or together with a single request.<br /><br />&gt; **Notes:**<br />&gt; * Currently, the user type of a user can only be changed using a full replacement `PUT` operation. If the request parameters of a partial update include the `type` element from the user object,<br />the value must match the existing type of the user. Only admins are permitted to change the user type of a user; end users are not allowed to change their own user type.<br />&gt;<br />&gt; * To update a current user's profile with partial semantics, you can use the `/api/v1/users/me` endpoint. But, a user can only update profile properties that they have write access for. Within the profile, if the user tries to update the primary or the secondary email IDs, verification emails are sent to those email IDs, and the fields are updated only upon verification.<br />&gt;<br />&gt; * You can update user profiles of users in the `DEPROVISIONED` status if you have the **Edit Deactivated User Profile Updates** option turned on in the Admin Console. See [deactivated user profiles](https://help.okta.com/okta_help.htm?type=oie&id=edit-deactivated-users).<br /><br />If you are using this endpoint to set a password, it sets a password without validating existing user credentials. This is an administrative operation. For operations that validate credentials, refer to the [Reset password](https://developer.okta.com/docs/api/openapi/okta-management/management/usercred/resetpassword), [Start forgot password flow](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UserCred/#tag/UserCred/operation/forgotPassword), and [Update password](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UserCred/#tag/UserCred/operation/changePassword) endpoints.

```sql
UPDATE okta.users.users
SET 
credentials = '{{ credentials }}',
profile = '{{ profile }}',
realmId = '{{ realmId }}',
type = '{{ type }}'
WHERE 
id = '{{ id }}' --required
AND subdomain = '{{ subdomain }}' --required
AND strict = '{{ strict}}'
AND If-Match = '{{ If-Match}}'
RETURNING
id,
_embedded,
_links,
activated,
created,
credentials,
lastLogin,
lastUpdated,
passwordChanged,
profile,
realmId,
status,
statusChanged,
transitioningToStatus,
type;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_user"
    values={[
        { label: 'replace_user', value: 'replace_user' }
    ]}
>
<TabItem value="replace_user">

Replaces a user's profile, credentials, or both using strict-update semantics.<br /><br />All profile properties must be specified when updating a user's profile with a `PUT` method. Any property not specified in the request is deleted.<br />&gt; **Important:** Don't use a `PUT` method for partial updates.

```sql
REPLACE okta.users.users
SET 
credentials = '{{ credentials }}',
profile = '{{ profile }}',
realmId = '{{ realmId }}',
type = '{{ type }}'
WHERE 
id = '{{ id }}' --required
AND subdomain = '{{ subdomain }}' --required
AND strict = '{{ strict}}'
AND If-Match = '{{ If-Match}}'
RETURNING
id,
_embedded,
_links,
activated,
created,
credentials,
lastLogin,
lastUpdated,
passwordChanged,
profile,
realmId,
status,
statusChanged,
transitioningToStatus,
type;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_user"
    values={[
        { label: 'delete_user', value: 'delete_user' }
    ]}
>
<TabItem value="delete_user">

Deletes a user permanently. This operation can only be performed on users that have a `DEPROVISIONED` status.<br /><br />&gt; **Warning:** This action can't be recovered!<br /><br />This operation on a user that hasn't been deactivated causes that user to be deactivated. A second delete operation is required to delete the user.<br /><br />&gt; **Note:** You can also perform user deletion asynchronously. To invoke asynchronous user deletion, pass an HTTP header `Prefer: respond-async` with the request.<br /><br />This header is also supported by user deactivation, which is performed if the delete endpoint is invoked on a user that hasn't been deactivated.

```sql
DELETE FROM okta.users.users
WHERE id = '{{ id }}' --required
AND subdomain = '{{ subdomain }}' --required
AND sendEmail = '{{ sendEmail }}'
AND Prefer = '{{ Prefer }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_user"
    values={[
        { label: 'activate_user', value: 'activate_user' },
        { label: 'deactivate_user', value: 'deactivate_user' },
        { label: 'expire_password', value: 'expire_password' },
        { label: 'expire_password_with_temp_password', value: 'expire_password_with_temp_password' },
        { label: 'reactivate_user', value: 'reactivate_user' },
        { label: 'reset_factors', value: 'reset_factors' },
        { label: 'reset_password', value: 'reset_password' },
        { label: 'suspend_user', value: 'suspend_user' },
        { label: 'unlock_user', value: 'unlock_user' },
        { label: 'unsuspend_user', value: 'unsuspend_user' },
        { label: 'change_password', value: 'change_password' },
        { label: 'change_recovery_question', value: 'change_recovery_question' },
        { label: 'forgot_password', value: 'forgot_password' },
        { label: 'forgot_password_set_new_password', value: 'forgot_password_set_new_password' },
        { label: 'revoke_user_sessions', value: 'revoke_user_sessions' }
    ]}
>
<TabItem value="activate_user">

Activates a user.<br /><br />Perform this operation only on users with a `STAGED` or `DEPROVISIONED` status. Activation of a user is an asynchronous operation.<br />* The user has the `transitioningToStatus` property with an `ACTIVE` value during activation. This indicates that the user hasn't completed the asynchronous operation.<br />* The user has an `ACTIVE` status when the activation process completes.<br /><br />Users who don't have a password must complete the welcome flow by visiting the activation link to complete the transition to `ACTIVE` status.<br /><br />&gt; **Note:** If you want to send a branded user activation email, change the subdomain of your request to the custom domain that's associated with the brand.<br />&gt; For example, change `subdomain.okta.com` to `custom.domain.one`. See [Multibrand and custom domains](https://developer.okta.com/docs/concepts/brands/#multibrand-and-custom-domains).<br /><br />&gt; **Note:** If you have optional password enabled, visiting the activation link is optional for users who aren't required to enroll a password.<br />&gt; See [Create user with optional password](https://developer.okta.com/docs/api/openapi/okta-management/management/user/create-user-with-optional-password#user/Create-user-with-optional-password).<br /><br />&gt; **Legal disclaimer**<br />&gt; After a user is added to the Okta directory, they receive an activation email. As part of signing up for this service,<br />&gt; you agreed not to use Okta's service/product to spam and/or send unsolicited messages.<br />&gt; Please refrain from adding unrelated accounts to the directory as Okta is not responsible for, and disclaims any and all<br />&gt; liability associated with, the activation email's content. You, and you alone, bear responsibility for the emails sent to any recipients.

```sql
EXEC okta.users.users.activate_user 
@id='{{ id }}' --required, 
@subdomain='{{ subdomain }}' --required, 
@sendEmail='{{ sendEmail }}'
;
```
</TabItem>
<TabItem value="deactivate_user">

Deactivates a user.<br /><br />Perform this operation only on users that do not have a `DEPROVISIONED` status.<br />* The user's `transitioningToStatus` property is `DEPROVISIONED` during deactivation to indicate that the user hasn't completed the asynchronous operation.<br />* The user's status is `DEPROVISIONED` when the deactivation process is complete.<br /><br />&gt; **Important:** Deactivating a user is a **destructive** operation. The user is deprovisioned from all assigned apps, which might destroy their data such as email or files.<br />**This action cannot be recovered!**<br /><br />You can also perform user deactivation asynchronously. To invoke asynchronous user deactivation, pass an HTTP header `Prefer: respond-async` with the request.<br /><br />&gt; **Note:** Users with the `DEPROVISIONED` status won't have their profiles updated when running the [Update a user](https://developer.okta.com/docs/api/openapi/okta-management/management/user/updateuser) endpoint unless you have the **Edit Deactived User Profile Updates** option turned on in the Admin Console. See [Edit deactivated user profiles](https://help.okta.com/okta_help.htm?type=oie&id=edit-deactivated-users).

```sql
EXEC okta.users.users.deactivate_user 
@id='{{ id }}' --required, 
@subdomain='{{ subdomain }}' --required, 
@sendEmail='{{ sendEmail }}', 
@Prefer='{{ Prefer }}'
;
```
</TabItem>
<TabItem value="expire_password">

Expires the password. This operation transitions the user status to `PASSWORD_EXPIRED` so that the user must change their password the next time that they sign in.<br /><br /><br />If you have integrated Okta with your on-premises Active Directory (AD), then setting a user's password as expired in Okta also expires the password in AD.<br />When the user tries to sign in to Okta, delegated authentication finds the password-expired status in AD,<br />and the user is presented with the password-expired page where they can change their password.<br /><br />&gt; **Note:** The Okta account management policy doesn't support the `/users/&#123;id&#125;/lifecycle/expire_password` endpoint. See [Configure an Okta account management policy](https://developer.okta.com/docs/guides/okta-account-management-policy/main/).

```sql
EXEC okta.users.users.expire_password 
@id='{{ id }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="expire_password_with_temp_password">

Expires the password and resets the user's password to a temporary password. This operation transitions the user status to `PASSWORD_EXPIRED` so that the user must change their password the next time that they sign in.<br />The user's password is reset to a temporary password that's returned, and then the user's password is expired.<br />If `revokeSessions` is included in the request with a value of `true`, the user's current outstanding sessions are revoked and require re-authentication.<br /><br />If you have integrated Okta with your on-premises Active Directory (AD), then setting a user's password as expired in Okta also expires the password in AD.<br />When the user tries to sign in to Okta, delegated authentication finds the password-expired status in AD, and the user is presented with the password-expired page where they can change their password.

```sql
EXEC okta.users.users.expire_password_with_temp_password 
@id='{{ id }}' --required, 
@subdomain='{{ subdomain }}' --required, 
@revokeSessions='{{ revokeSessions }}'
;
```
</TabItem>
<TabItem value="reactivate_user">

Reactivates a user.<br /><br />Perform this operation only on users with a `PROVISIONED` or `RECOVERY` [status](https://developer.okta.com/docs/api/openapi/okta-management/management/user/listusers#user/listusers/t=response&c=200&path=status).<br />This operation restarts the activation workflow if for some reason the user activation wasn't completed when using the `activationToken` from [Activate User](https://developer.okta.com/docs/api/openapi/okta-management/management/userlifecycle/activateuser).<br /><br />Users that don't have a password must complete the flow by completing the [Reset password](https://developer.okta.com/docs/api/openapi/okta-management/management/usercred/resetpassword) flow and MFA enrollment steps to transition the user to `ACTIVE` status.<br /><br />If `sendEmail` is `false`, returns an activation link for the user to set up their account. The activation token can be used to create a custom activation link.

```sql
EXEC okta.users.users.reactivate_user 
@id='{{ id }}' --required, 
@subdomain='{{ subdomain }}' --required, 
@sendEmail='{{ sendEmail }}'
;
```
</TabItem>
<TabItem value="reset_factors">

Resets all factors for the specified user. All MFA factor enrollments return to the unenrolled state. The user's status remains `ACTIVE`. This link is present only if the user is currently enrolled in one or more MFA factors.

```sql
EXEC okta.users.users.reset_factors 
@id='{{ id }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="reset_password">

Resets a password. Generates a one-time token (OTT) that you can use to reset a user's password. You can automatically email the OTT link to the user or return the OTT to the API caller and distribute using a custom flow.<br /><br />This operation transitions the user to the `RECOVERY` status. The user is then not able to sign in or initiate a forgot password flow until they complete the reset flow.<br /><br />This operation provides an option to delete all the user's sessions. However, if the request is made in the context of a session owned by the specified user, that session isn't cleared.<br />&gt; **Note:** You can also use this API to convert a user with the Okta credential provider to use a federated provider. After this conversion, the user can't directly sign in with a password.<br />&gt; To convert a federated user back to an Okta user, use the default API call.<br /><br />If an email address is associated with multiple users, keep in mind the following to ensure a successful password recovery lookup:<br />  * Okta no longer includes deactivated users in the lookup.<br />  * The lookup searches sign-in IDs first, then primary email addresses, and then secondary email addresses.<br />  If `sendEmail` is `false`, returns a link for the user to reset their password.

```sql
EXEC okta.users.users.reset_password 
@sendEmail='{{ sendEmail }}' --required, 
@id='{{ id }}' --required, 
@subdomain='{{ subdomain }}' --required, 
@revokeSessions='{{ revokeSessions }}'
;
```
</TabItem>
<TabItem value="suspend_user">

Suspends a user. Perform this operation only on users with an `ACTIVE` status. The user has a `SUSPENDED` status when the process completes.<br /><br />Suspended users can't sign in to Okta. They can only be unsuspended or deactivated. Their group and app assignments are retained.

```sql
EXEC okta.users.users.suspend_user 
@id='{{ id }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="unlock_user">

Unlocks a user with a `LOCKED_OUT` status or unlocks a user with an `ACTIVE` status that's blocked from unknown devices. Unlocked users have an `ACTIVE` status and can sign in with their current password.<br />&gt; **Note:** This operation works with Okta-sourced users. It doesn't support directory-sourced accounts such as Active Directory.

```sql
EXEC okta.users.users.unlock_user 
@id='{{ id }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="unsuspend_user">

Unsuspends a user and returns them to the `ACTIVE` state. This operation can only be performed on users that have a `SUSPENDED` status.

```sql
EXEC okta.users.users.unsuspend_user 
@id='{{ id }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="change_password">

Updates a user's password by validating the user's current password.<br /><br />This operation provides an option to delete all the sessions of the specified user. However, if the request is made in the context of a session owned by the specified user, that session isn't cleared.<br /><br />You can only perform this operation on users in `STAGED`, `ACTIVE`, `PASSWORD_EXPIRED`, or `RECOVERY` status that have a valid [password credential](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/User/#tag/User/operation/createUser!path=credentials/password&t=request).<br /><br />The user transitions to `ACTIVE` status when successfully invoked in `RECOVERY` status.<br /><br />&gt; **Note:** The Okta account management policy doesn't support the `/users/&#123;userId&#125;/credentials/change_password` endpoint. See [Configure an Okta account management policy](https://developer.okta.com/docs/guides/okta-account-management-policy/main/).

```sql
EXEC okta.users.users.change_password 
@userId='{{ userId }}' --required, 
@subdomain='{{ subdomain }}' --required, 
@strict='{{ strict }}' 
@@json=
'{
"newPassword": "{{ newPassword }}", 
"oldPassword": "{{ oldPassword }}", 
"revokeSessions": {{ revokeSessions }}
}'
;
```
</TabItem>
<TabItem value="change_recovery_question">

Updates a user's recovery question and answer credential by validating the user's current password.<br />You can only perform this operation on users in `STAGED`, `ACTIVE`, or `RECOVERY` status that have a valid [password credential](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/User/#tag/User/operation/createUser!path=credentials/password&t=request).

```sql
EXEC okta.users.users.change_recovery_question 
@userId='{{ userId }}' --required, 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"password": "{{ password }}", 
"recovery_question": "{{ recovery_question }}"
}'
;
```
</TabItem>
<TabItem value="forgot_password">

Starts the forgot password flow.<br /><br />Generates a one-time token (OTT) that you can use to reset a user's password.<br /><br />The user must validate their security question's answer when visiting the reset link. Perform this operation only on users with an `ACTIVE` status and<br />a valid [recovery question credential](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/User/#tag/User/operation/createUser!path=credentials/recovery_question&t=request).<br /><br />&gt; **Note:** If you have migrated to Identity Engine, you can allow users to recover passwords with any enrolled MFA authenticator. See [Self-service account recovery](https://help.okta.com/oie/en-us/content/topics/identity-engine/authenticators/configure-sspr.htm?cshid=ext-config-sspr).<br /><br />If an email address is associated with multiple users, keep in mind the following to ensure a successful password recovery lookup:<br />  * Okta no longer includes deactivated users in the lookup.<br />  * The lookup searches sign-in IDs first, then primary email addresses, and then secondary email addresses.<br /><br />If `sendEmail` is `false`, returns a link for the user to reset their password. This operation doesn't affect the status of the user.

```sql
EXEC okta.users.users.forgot_password 
@userId='{{ userId }}' --required, 
@subdomain='{{ subdomain }}' --required, 
@sendEmail='{{ sendEmail }}'
;
```
</TabItem>
<TabItem value="forgot_password_set_new_password">

Resets the user's password to the specified password if the provided answer to the recovery question is correct.<br />You must include the recovery question answer with the submission.

```sql
EXEC okta.users.users.forgot_password_set_new_password 
@userId='{{ userId }}' --required, 
@subdomain='{{ subdomain }}' --required, 
@sendEmail='{{ sendEmail }}' 
@@json=
'{
"password": "{{ password }}", 
"recovery_question": "{{ recovery_question }}"
}'
;
```
</TabItem>
<TabItem value="revoke_user_sessions">

Revokes all active identity provider sessions of the user. This forces the user to authenticate on the next operation. Optionally revokes OpenID Connect and OAuth refresh and access tokens issued to the user.<br /><br />You can also clear the user's remembered factors for all devices using the `forgetDevices` parameter. See [forgetDevices](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UserSessions/#tag/UserSessions/operation/revokeUserSessions!in=query&path=forgetDevices&t=request).<br />&gt; **Note:** This operation doesn't clear the sessions created for web or native apps.

```sql
EXEC okta.users.users.revoke_user_sessions 
@userId='{{ userId }}' --required, 
@subdomain='{{ subdomain }}' --required, 
@oauthTokens='{{ oauthTokens }}', 
@forgetDevices='{{ forgetDevices }}'
;
```
</TabItem>
</Tabs>
