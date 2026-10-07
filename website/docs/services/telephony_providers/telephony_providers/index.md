--- 
title: telephony_providers
hide_title: false
hide_table_of_contents: false
keywords:
  - telephony_providers
  - telephony_providers
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

Creates, updates, deletes, gets or lists a <code>telephony_providers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="telephony_providers" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.telephony_providers.telephony_providers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_custom_telephony_provider_credential"
    values={[
        { label: 'get_custom_telephony_provider_credential', value: 'get_custom_telephony_provider_credential' },
        { label: 'list_all_custom_telephony_provider_credentials', value: 'list_all_custom_telephony_provider_credentials' }
    ]}
>
<TabItem value="get_custom_telephony_provider_credential">

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
    <td>ID of the custom telephony provider</td>
</tr>
<tr>
    <td><CopyableCode code="enabled" /></td>
    <td><code>boolean</code></td>
    <td>Indicates whether the provider is enabled and can be used</td>
</tr>
<tr>
    <td><CopyableCode code="isPrimaryProvider" /></td>
    <td><code>boolean</code></td>
    <td>Indicates whether the provider is the primary telephony provider</td>
</tr>
<tr>
    <td><CopyableCode code="providerCapability" /></td>
    <td><code>string</code></td>
    <td>The types of telephony operations (SMS or Voice) that you use with your telephony provider.  `ALL` is the only valid value. It indicates that your provider can handle both SMS messages and voice calls. You're not required to use both types of telephony operations, but your provider can support both. (ALL)</td>
</tr>
<tr>
    <td><CopyableCode code="providerName" /></td>
    <td><code>string</code></td>
    <td>Name of the telephony provider (TWILIO, TELESIGN)</td>
</tr>
<tr>
    <td><CopyableCode code="providerSettings" /></td>
    <td><code>object</code></td>
    <td>Settings for custom telephony provider.  These settings vary based on the telephony provider and the type of telephony operation (SMS or Voice). For `sms` and `call`, you can select one method per telephony operation (`sms` and `call`) for sending messages or voice calls.  &gt; **Note:** Configure your telephony provider settings before selecting the methods for sending SMS messages or making voice calls. For example, if you select Twilio as your telephony provider, and you want to send SMS messages using Twilio's Verify Service, ensure that you have the Verify Service set up in your Twilio account. You can then use the `twilioVerifySid` field under `sms` to provide the necessary SID.</td>
</tr>
<tr>
    <td><CopyableCode code="providerSid" /></td>
    <td><code>string</code></td>
    <td>The account string identifier (SID) for your telephony provider account. Your telephony provider gives you this SID.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_all_custom_telephony_provider_credentials">

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
    <td>ID of the custom telephony provider</td>
</tr>
<tr>
    <td><CopyableCode code="enabled" /></td>
    <td><code>boolean</code></td>
    <td>Indicates whether the provider is enabled and can be used</td>
</tr>
<tr>
    <td><CopyableCode code="isPrimaryProvider" /></td>
    <td><code>boolean</code></td>
    <td>Indicates whether the provider is the primary telephony provider</td>
</tr>
<tr>
    <td><CopyableCode code="providerCapability" /></td>
    <td><code>string</code></td>
    <td>The types of telephony operations (SMS or Voice) that you use with your telephony provider.  `ALL` is the only valid value. It indicates that your provider can handle both SMS messages and voice calls. You're not required to use both types of telephony operations, but your provider can support both. (ALL)</td>
</tr>
<tr>
    <td><CopyableCode code="providerName" /></td>
    <td><code>string</code></td>
    <td>Name of the telephony provider (TWILIO, TELESIGN)</td>
</tr>
<tr>
    <td><CopyableCode code="providerSettings" /></td>
    <td><code>object</code></td>
    <td>Settings for custom telephony provider.  These settings vary based on the telephony provider and the type of telephony operation (SMS or Voice). For `sms` and `call`, you can select one method per telephony operation (`sms` and `call`) for sending messages or voice calls.  &gt; **Note:** Configure your telephony provider settings before selecting the methods for sending SMS messages or making voice calls. For example, if you select Twilio as your telephony provider, and you want to send SMS messages using Twilio's Verify Service, ensure that you have the Verify Service set up in your Twilio account. You can then use the `twilioVerifySid` field under `sms` to provide the necessary SID.</td>
</tr>
<tr>
    <td><CopyableCode code="providerSid" /></td>
    <td><code>string</code></td>
    <td>The account string identifier (SID) for your telephony provider account. Your telephony provider gives you this SID.</td>
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
    <td><a href="#get_custom_telephony_provider_credential"><CopyableCode code="get_custom_telephony_provider_credential" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-customTelephonyProviderId"><code>customTelephonyProviderId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the details of a custom telephony provider by its ID</td>
</tr>
<tr>
    <td><a href="#list_all_custom_telephony_provider_credentials"><CopyableCode code="list_all_custom_telephony_provider_credentials" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all custom telephony providers that are configured in your org</td>
</tr>
<tr>
    <td><a href="#create_custom_telephony_provider_credentials"><CopyableCode code="create_custom_telephony_provider_credentials" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a custom telephony provider with the provided credentials</td>
</tr>
<tr>
    <td><a href="#update_custom_telephony_provider_credential"><CopyableCode code="update_custom_telephony_provider_credential" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-customTelephonyProviderId"><code>customTelephonyProviderId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates the credentials of an existing custom telephony provider</td>
</tr>
<tr>
    <td><a href="#delete_custom_telephony_provider_credential"><CopyableCode code="delete_custom_telephony_provider_credential" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-customTelephonyProviderId"><code>customTelephonyProviderId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a custom telephony provider by its ID.<br /><br />Before you delete a provider, ensure that it is [deactivated](https://developer.okta.com/docs/api/openapi/okta-management/management/customtelephonyprovider/deactivatecustomtelephonycredential). Consider setting up another telephony provider if you still plan to use telephony in your org. See [Set up an external telephony provider](https://help.okta.com/okta_help.htm?type=oie&id=about-telephony).</td>
</tr>
<tr>
    <td><a href="#activate_custom_telephony_credential"><CopyableCode code="activate_custom_telephony_credential" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-customTelephonyProviderId"><code>customTelephonyProviderId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a custom telephony provider by its ID. You must activate a provider before it can be used.</td>
</tr>
<tr>
    <td><a href="#deactivate_custom_telephony_credential"><CopyableCode code="deactivate_custom_telephony_credential" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-customTelephonyProviderId"><code>customTelephonyProviderId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates a custom telephony provider by its ID. Keep the following points in mind when you deactivate a provider:<br />* You must deactivate a provider before deleting it.<br />* If you have two telephony providers configured, and both are active, you can only deactivate the secondary provider. The second provider is the one that isn't set as the primary provider.</td>
</tr>
<tr>
    <td><a href="#set_as_primary_custom_telephony_credential"><CopyableCode code="set_as_primary_custom_telephony_credential" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-customTelephonyProviderId"><code>customTelephonyProviderId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Sets a custom telephony provider as the primary telephony provider for the org. You can only set one provider as a primary provider at a time.</td>
</tr>
<tr>
    <td><a href="#send_test_custom_telephony_provider_credential"><CopyableCode code="send_test_custom_telephony_provider_credential" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-customTelephonyProviderId"><code>customTelephonyProviderId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Sends a test message (SMS or call) using the specified custom telephony provider to verify that the provider is configured correctly.<br /><br />You must provide a valid phone number and country code to send the test message. Send it to a phone number that you have access to so you can confirm that the message was received.</td>
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
<tr id="parameter-customTelephonyProviderId">
    <td><CopyableCode code="customTelephonyProviderId" /></td>
    <td><code>string</code></td>
    <td>The ID of the custom telephony provider</td>
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
    defaultValue="get_custom_telephony_provider_credential"
    values={[
        { label: 'get_custom_telephony_provider_credential', value: 'get_custom_telephony_provider_credential' },
        { label: 'list_all_custom_telephony_provider_credentials', value: 'list_all_custom_telephony_provider_credentials' }
    ]}
>
<TabItem value="get_custom_telephony_provider_credential">

Retrieves the details of a custom telephony provider by its ID

```sql
SELECT
id,
enabled,
isPrimaryProvider,
providerCapability,
providerName,
providerSettings,
providerSid
FROM okta.telephony_providers.telephony_providers
WHERE customTelephonyProviderId = '{{ customTelephonyProviderId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_all_custom_telephony_provider_credentials">

Lists all custom telephony providers that are configured in your org

```sql
SELECT
id,
enabled,
isPrimaryProvider,
providerCapability,
providerName,
providerSettings,
providerSid
FROM okta.telephony_providers.telephony_providers
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_custom_telephony_provider_credentials"
    values={[
        { label: 'create_custom_telephony_provider_credentials', value: 'create_custom_telephony_provider_credentials' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_custom_telephony_provider_credentials">

Creates a custom telephony provider with the provided credentials

```sql
INSERT INTO okta.telephony_providers.telephony_providers (
providerAuthToken,
providerCapability,
providerName,
providerSettings,
providerSid,
subdomain
)
SELECT 
'{{ providerAuthToken }}',
'{{ providerCapability }}',
'{{ providerName }}',
'{{ providerSettings }}',
'{{ providerSid }}',
'{{ subdomain }}'
RETURNING
id,
enabled,
isPrimaryProvider,
providerCapability,
providerName,
providerSettings,
providerSid
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: telephony_providers
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the telephony_providers resource.
    - name: providerAuthToken
      value: "{{ providerAuthToken }}"
      description: |
        The authentication token that's used to authenticate requests to the telephony provider. Your telephony provider gives you this token.
    - name: providerCapability
      value: "{{ providerCapability }}"
      description: |
        The types of telephony operations (SMS or Voice) that you use with your telephony provider.
        \`ALL\` is the only valid value. It indicates that your provider can handle both SMS messages and voice calls. You're not required to use both types of telephony operations, but your provider can support both.
      valid_values: ['ALL']
    - name: providerName
      value: "{{ providerName }}"
      description: |
        The name of the telephony provider
      valid_values: ['TWILIO', 'TELESIGN']
    - name: providerSettings
      description: |
        Settings for custom telephony provider.
        These settings vary based on the telephony provider and the type of telephony operation (SMS or Voice). For \`sms\` and \`call\`, you can select one method per telephony operation (\`sms\` and \`call\`) for sending messages or voice calls.
        > **Note:** Configure your telephony provider settings before selecting the methods for sending SMS messages or making voice calls. For example, if you select Twilio as your telephony provider, and you want to send SMS messages using Twilio's Verify Service, ensure that you have the Verify Service set up in your Twilio account. You can then use the \`twilioVerifySid\` field under \`sms\` to provide the necessary SID.
      value:
        call:
          twilioVerifySid: "{{ twilioVerifySid }}"
          twilioPhoneNumber: "{{ twilioPhoneNumber }}"
          twilioCallerId: "{{ twilioCallerId }}"
          telesignService: "{{ telesignService }}"
        sms:
          twilioVerifySid: "{{ twilioVerifySid }}"
          twilioPhoneNumber: "{{ twilioPhoneNumber }}"
          twilioMessageSid: "{{ twilioMessageSid }}"
          telesignService: "{{ telesignService }}"
    - name: providerSid
      value: "{{ providerSid }}"
      description: |
        The account string identifier (SID) for your telephony provider account. Your telephony provider gives you this SID.
`}</CodeBlock>

</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_custom_telephony_provider_credential"
    values={[
        { label: 'update_custom_telephony_provider_credential', value: 'update_custom_telephony_provider_credential' }
    ]}
>
<TabItem value="update_custom_telephony_provider_credential">

Updates the credentials of an existing custom telephony provider

```sql
UPDATE okta.telephony_providers.telephony_providers
SET 
id = '{{ id }}',
providerAuthToken = '{{ providerAuthToken }}',
providerSettings = '{{ providerSettings }}',
providerSid = '{{ providerSid }}'
WHERE 
customTelephonyProviderId = '{{ customTelephonyProviderId }}' --required
AND subdomain = '{{ subdomain }}' --required
RETURNING
id,
enabled,
isPrimaryProvider,
providerCapability,
providerName,
providerSettings,
providerSid;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_custom_telephony_provider_credential"
    values={[
        { label: 'delete_custom_telephony_provider_credential', value: 'delete_custom_telephony_provider_credential' }
    ]}
>
<TabItem value="delete_custom_telephony_provider_credential">

Deletes a custom telephony provider by its ID.<br /><br />Before you delete a provider, ensure that it is [deactivated](https://developer.okta.com/docs/api/openapi/okta-management/management/customtelephonyprovider/deactivatecustomtelephonycredential). Consider setting up another telephony provider if you still plan to use telephony in your org. See [Set up an external telephony provider](https://help.okta.com/okta_help.htm?type=oie&id=about-telephony).

```sql
DELETE FROM okta.telephony_providers.telephony_providers
WHERE customTelephonyProviderId = '{{ customTelephonyProviderId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_custom_telephony_credential"
    values={[
        { label: 'activate_custom_telephony_credential', value: 'activate_custom_telephony_credential' },
        { label: 'deactivate_custom_telephony_credential', value: 'deactivate_custom_telephony_credential' },
        { label: 'set_as_primary_custom_telephony_credential', value: 'set_as_primary_custom_telephony_credential' },
        { label: 'send_test_custom_telephony_provider_credential', value: 'send_test_custom_telephony_provider_credential' }
    ]}
>
<TabItem value="activate_custom_telephony_credential">

Activates a custom telephony provider by its ID. You must activate a provider before it can be used.

```sql
EXEC okta.telephony_providers.telephony_providers.activate_custom_telephony_credential 
@customTelephonyProviderId='{{ customTelephonyProviderId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_custom_telephony_credential">

Deactivates a custom telephony provider by its ID. Keep the following points in mind when you deactivate a provider:<br />* You must deactivate a provider before deleting it.<br />* If you have two telephony providers configured, and both are active, you can only deactivate the secondary provider. The second provider is the one that isn't set as the primary provider.

```sql
EXEC okta.telephony_providers.telephony_providers.deactivate_custom_telephony_credential 
@customTelephonyProviderId='{{ customTelephonyProviderId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="set_as_primary_custom_telephony_credential">

Sets a custom telephony provider as the primary telephony provider for the org. You can only set one provider as a primary provider at a time.

```sql
EXEC okta.telephony_providers.telephony_providers.set_as_primary_custom_telephony_credential 
@customTelephonyProviderId='{{ customTelephonyProviderId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="send_test_custom_telephony_provider_credential">

Sends a test message (SMS or call) using the specified custom telephony provider to verify that the provider is configured correctly.<br /><br />You must provide a valid phone number and country code to send the test message. Send it to a phone number that you have access to so you can confirm that the message was received.

```sql
EXEC okta.telephony_providers.telephony_providers.send_test_custom_telephony_provider_credential 
@customTelephonyProviderId='{{ customTelephonyProviderId }}' --required, 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"countryCodeIso2": "{{ countryCodeIso2 }}", 
"factor": "{{ factor }}", 
"phoneNumber": "{{ phoneNumber }}"
}'
;
```
</TabItem>
</Tabs>
