--- 
title: keys
hide_title: false
hide_table_of_contents: false
keywords:
  - keys
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

Creates, updates, deletes, gets or lists a <code>keys</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="keys" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.apps.keys" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_application_key"
    values={[
        { label: 'get_application_key', value: 'get_application_key' },
        { label: 'list_application_keys', value: 'list_application_keys' }
    ]}
>
<TabItem value="get_application_key">

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
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created (example: 2017-03-28T01:11:10.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="e" /></td>
    <td><code>string</code></td>
    <td>RSA key value (public exponent) for Key binding</td>
</tr>
<tr>
    <td><CopyableCode code="expiresAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the certificate expires</td>
</tr>
<tr>
    <td><CopyableCode code="kid" /></td>
    <td><code>string</code></td>
    <td>Unique identifier for the certificate</td>
</tr>
<tr>
    <td><CopyableCode code="kty" /></td>
    <td><code>string</code></td>
    <td>Cryptographic algorithm family for the certificate's keypair. Valid value: `RSA`</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="n" /></td>
    <td><code>string</code></td>
    <td>RSA modulus value that is used by both the public and private keys and provides a link between them</td>
</tr>
<tr>
    <td><CopyableCode code="use" /></td>
    <td><code>string</code></td>
    <td>Acceptable use of the certificate. Valid value: `sig`</td>
</tr>
<tr>
    <td><CopyableCode code="x5c" /></td>
    <td><code>array</code></td>
    <td>X.509 certificate chain that contains a chain of one or more certificates</td>
</tr>
<tr>
    <td><CopyableCode code="x5t#S256" /></td>
    <td><code>string</code></td>
    <td>X.509 certificate SHA-256 thumbprint, which is the base64url-encoded SHA-256 thumbprint (digest) of the DER encoding of an X.509 certificate</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_application_keys">

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
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created (example: 2017-03-28T01:11:10.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="e" /></td>
    <td><code>string</code></td>
    <td>RSA key value (public exponent) for Key binding</td>
</tr>
<tr>
    <td><CopyableCode code="expiresAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the certificate expires</td>
</tr>
<tr>
    <td><CopyableCode code="kid" /></td>
    <td><code>string</code></td>
    <td>Unique identifier for the certificate</td>
</tr>
<tr>
    <td><CopyableCode code="kty" /></td>
    <td><code>string</code></td>
    <td>Cryptographic algorithm family for the certificate's keypair. Valid value: `RSA`</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="n" /></td>
    <td><code>string</code></td>
    <td>RSA modulus value that is used by both the public and private keys and provides a link between them</td>
</tr>
<tr>
    <td><CopyableCode code="use" /></td>
    <td><code>string</code></td>
    <td>Acceptable use of the certificate. Valid value: `sig`</td>
</tr>
<tr>
    <td><CopyableCode code="x5c" /></td>
    <td><code>array</code></td>
    <td>X.509 certificate chain that contains a chain of one or more certificates</td>
</tr>
<tr>
    <td><CopyableCode code="x5t#S256" /></td>
    <td><code>string</code></td>
    <td>X.509 certificate SHA-256 thumbprint, which is the base64url-encoded SHA-256 thumbprint (digest) of the DER encoding of an X.509 certificate</td>
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
    <td><a href="#get_application_key"><CopyableCode code="get_application_key" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-keyId"><code>keyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a specific application key credential by `kid`</td>
</tr>
<tr>
    <td><a href="#list_application_keys"><CopyableCode code="list_application_keys" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all key credentials for an app</td>
</tr>
<tr>
    <td><a href="#generate_application_key"><CopyableCode code="generate_application_key" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-validityYears"><code>validityYears</code></a>, <a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Generates a new X.509 certificate for an app key credential<br />&gt; **Note:** To update an app with the newly generated key credential, use the [Replace an Application](https://developer.okta.com/docs/api/openapi/okta-management/management/application/replaceapplication) request with the new [credentials.signing.kid](https://developer.okta.com/docs/api/openapi/okta-management/management/application/replaceapplication#application/replaceapplication/t=request&path=&d=0/credentials/signing/kid) value in the request body. You can provide just the [signing credential object](https://developer.okta.com/docs/api/openapi/okta-management/management/application/replaceapplication#application/replaceapplication/t=request&path=&d=0/credentials/signing) instead of the entire [application credential object](https://developer.okta.com/docs/api/openapi/okta-management/management/application/replaceapplication#application/replaceapplication/t=response&c=200&path=&d=0/credentials).</td>
</tr>
<tr>
    <td><a href="#clone_application_key"><CopyableCode code="clone_application_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-targetAid"><code>targetAid</code></a>, <a href="#parameter-appId"><code>appId</code></a>, <a href="#parameter-keyId"><code>keyId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Clones an X.509 certificate for an application key credential from a source app to a target app.<br /><br />For step-by-step instructions to clone a credential, see [Share application key credentials for IdPs across apps](https://developer.okta.com/docs/guides/sharing-cert/main/).<br />&gt; **Note:** Sharing certificates isn't a recommended security practice.</td>
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
<tr id="parameter-keyId">
    <td><CopyableCode code="keyId" /></td>
    <td><code>string</code></td>
    <td>ID of the Key Credential for the application</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>(default: my-org)</td>
</tr>
<tr id="parameter-targetAid">
    <td><CopyableCode code="targetAid" /></td>
    <td><code>string</code></td>
    <td>Unique key of the target app</td>
</tr>
<tr id="parameter-validityYears">
    <td><CopyableCode code="validityYears" /></td>
    <td><code>integer</code></td>
    <td>Expiry years of the application key credential</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_application_key"
    values={[
        { label: 'get_application_key', value: 'get_application_key' },
        { label: 'list_application_keys', value: 'list_application_keys' }
    ]}
>
<TabItem value="get_application_key">

Retrieves a specific application key credential by `kid`

```sql
SELECT
created,
e,
expiresAt,
kid,
kty,
lastUpdated,
n,
use,
x5c,
x5t#S256
FROM okta.apps.keys
WHERE appId = '{{ appId }}' -- required
AND keyId = '{{ keyId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_application_keys">

Lists all key credentials for an app

```sql
SELECT
created,
e,
expiresAt,
kid,
kty,
lastUpdated,
n,
use,
x5c,
x5t#S256
FROM okta.apps.keys
WHERE appId = '{{ appId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="generate_application_key"
    values={[
        { label: 'generate_application_key', value: 'generate_application_key' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="generate_application_key">

Generates a new X.509 certificate for an app key credential<br />&gt; **Note:** To update an app with the newly generated key credential, use the [Replace an Application](https://developer.okta.com/docs/api/openapi/okta-management/management/application/replaceapplication) request with the new [credentials.signing.kid](https://developer.okta.com/docs/api/openapi/okta-management/management/application/replaceapplication#application/replaceapplication/t=request&path=&d=0/credentials/signing/kid) value in the request body. You can provide just the [signing credential object](https://developer.okta.com/docs/api/openapi/okta-management/management/application/replaceapplication#application/replaceapplication/t=request&path=&d=0/credentials/signing) instead of the entire [application credential object](https://developer.okta.com/docs/api/openapi/okta-management/management/application/replaceapplication#application/replaceapplication/t=response&c=200&path=&d=0/credentials).

```sql
INSERT INTO okta.apps.keys (
validityYears,
appId,
subdomain
)
SELECT 
'{{ validityYears }}',
'{{ appId }}',
'{{ subdomain }}'
RETURNING
created,
e,
expiresAt,
kid,
kty,
lastUpdated,
n,
use,
x5c,
x5t#S256
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: keys
  props:
    - name: validityYears
      value: {{ validityYears }}
      description: Required parameter for the keys resource.
    - name: appId
      value: "{{ appId }}"
      description: Required parameter for the keys resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the keys resource.
`}</CodeBlock>

</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="clone_application_key"
    values={[
        { label: 'clone_application_key', value: 'clone_application_key' }
    ]}
>
<TabItem value="clone_application_key">

Clones an X.509 certificate for an application key credential from a source app to a target app.<br /><br />For step-by-step instructions to clone a credential, see [Share application key credentials for IdPs across apps](https://developer.okta.com/docs/guides/sharing-cert/main/).<br />&gt; **Note:** Sharing certificates isn't a recommended security practice.

```sql
EXEC okta.apps.keys.clone_application_key 
@targetAid='{{ targetAid }}' --required, 
@appId='{{ appId }}' --required, 
@keyId='{{ keyId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
