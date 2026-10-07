--- 
title: csrs
hide_title: false
hide_table_of_contents: false
keywords:
  - csrs
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

Creates, updates, deletes, gets or lists a <code>csrs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="csrs" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.idps.csrs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_csr_for_identity_provider"
    values={[
        { label: 'get_csr_for_identity_provider', value: 'get_csr_for_identity_provider' },
        { label: 'list_csrs_for_identity_provider', value: 'list_csrs_for_identity_provider' }
    ]}
>
<TabItem value="get_csr_for_identity_provider">

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
    <td>Unique identifier for the CSR (example: h9zkutaSe7fZX0SwN1GqDApofgD1OW8g2B5l2azha50)</td>
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
    <td><CopyableCode code="csr" /></td>
    <td><code>string</code></td>
    <td>Base64-encoded CSR in DER format (example: MIIC4DCCAcgCAQAwcTELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xEzARBgNVBAoMCk9rdGEsIEluYy4xDDAKBgNVBAsMA0RldjESMBAGA1UEAwwJU1AgSXNzdWVyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA6m8jHVCr9/tKvvbFN59T4raoCs/78KRm4fSefHQOv1TKLXo4wTLbsqYWRWc5u0sd5orUMQgPQOyj3i6qh13mALY4BzrT057EG1BUNjGg29QgYlnOk2iX890e5BIDMQQEIKFrvOi2V8cLUkLvE2ydRn0VO1Q1frbUkYeStJYC5Api2JQsYRwa+1ZeDH1ITnIzUaugWhW2WB2lSnwZkenne5KtffxMPYVu+IhNRHoKaRA6Z51YNhMJIx17JM2hs/H4Ka3drk6kzDf7ofk/yBpb9yBWyU7CTSQhdoHidxqFprMDaT66W928t3AeOENHBuwn8c2K9WeGG+bELNyQRJVmawIDAQABoCowKAYJKoZIhvcNAQkOMRswGTAXBgNVHREEEDAOggxkZXYub2t0YS5jb20wDQYJKoZIhvcNAQELBQADggEBAA2hsVJRVM+A83X9MekjTnIbt19UNT8wX7wlE9jUKirWsxceLiZBpVGn9qfKhhVIpvdaIRSeoFYS2Kg/m1G6bCvjmZLcrQ5FcEBjZH2NKfNppGVnfC2ugtUkBtCB+UUzOhKhRKJtGugenKbP33zRWWIqnd2waF6Cy8TIuqQVPbwEDN9bCbAs7ND6CFYNguY7KYjWzQOeAR716eqpEEXuPYAS4nx/ty4ylonR8cv+gpq51rvq80A4k/36aoeM0Y6I4w64vhTfuvWW2UYFUD+/+y2FA2CSP4JfctySrf1s525v6fzTFZ3qZbB5OZQtP2b8xYWktMzywsxGKDoVDB4wkH4=)</td>
</tr>
<tr>
    <td><CopyableCode code="kty" /></td>
    <td><code>string</code></td>
    <td>Cryptographic algorithm family for the CSR's keypair (example: RSA)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_csrs_for_identity_provider">

Defines a CSR for a signature or decryption credential for an IdP

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
    <td>Unique identifier for the CSR (example: h9zkutaSe7fZX0SwN1GqDApofgD1OW8g2B5l2azha50)</td>
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
    <td><CopyableCode code="csr" /></td>
    <td><code>string</code></td>
    <td>Base64-encoded CSR in DER format (example: MIIC4DCCAcgCAQAwcTELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xEzARBgNVBAoMCk9rdGEsIEluYy4xDDAKBgNVBAsMA0RldjESMBAGA1UEAwwJU1AgSXNzdWVyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA6m8jHVCr9/tKvvbFN59T4raoCs/78KRm4fSefHQOv1TKLXo4wTLbsqYWRWc5u0sd5orUMQgPQOyj3i6qh13mALY4BzrT057EG1BUNjGg29QgYlnOk2iX890e5BIDMQQEIKFrvOi2V8cLUkLvE2ydRn0VO1Q1frbUkYeStJYC5Api2JQsYRwa+1ZeDH1ITnIzUaugWhW2WB2lSnwZkenne5KtffxMPYVu+IhNRHoKaRA6Z51YNhMJIx17JM2hs/H4Ka3drk6kzDf7ofk/yBpb9yBWyU7CTSQhdoHidxqFprMDaT66W928t3AeOENHBuwn8c2K9WeGG+bELNyQRJVmawIDAQABoCowKAYJKoZIhvcNAQkOMRswGTAXBgNVHREEEDAOggxkZXYub2t0YS5jb20wDQYJKoZIhvcNAQELBQADggEBAA2hsVJRVM+A83X9MekjTnIbt19UNT8wX7wlE9jUKirWsxceLiZBpVGn9qfKhhVIpvdaIRSeoFYS2Kg/m1G6bCvjmZLcrQ5FcEBjZH2NKfNppGVnfC2ugtUkBtCB+UUzOhKhRKJtGugenKbP33zRWWIqnd2waF6Cy8TIuqQVPbwEDN9bCbAs7ND6CFYNguY7KYjWzQOeAR716eqpEEXuPYAS4nx/ty4ylonR8cv+gpq51rvq80A4k/36aoeM0Y6I4w64vhTfuvWW2UYFUD+/+y2FA2CSP4JfctySrf1s525v6fzTFZ3qZbB5OZQtP2b8xYWktMzywsxGKDoVDB4wkH4=)</td>
</tr>
<tr>
    <td><CopyableCode code="kty" /></td>
    <td><code>string</code></td>
    <td>Cryptographic algorithm family for the CSR's keypair (example: RSA)</td>
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
    <td><a href="#get_csr_for_identity_provider"><CopyableCode code="get_csr_for_identity_provider" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-idpId"><code>idpId</code></a>, <a href="#parameter-idpCsrId"><code>idpCsrId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a specific certificate signing request (CSR) by `id`</td>
</tr>
<tr>
    <td><a href="#list_csrs_for_identity_provider"><CopyableCode code="list_csrs_for_identity_provider" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-idpId"><code>idpId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all certificate signing requests (CSRs) for an identity provider (IdP)</td>
</tr>
<tr>
    <td><a href="#generate_csr_for_identity_provider"><CopyableCode code="generate_csr_for_identity_provider" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-idpId"><code>idpId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Generates a new key pair and returns a certificate signing request (CSR) for it<br />&gt; **Note:** The private key isn't listed in the [signing key credentials for the identity provider (IdP)](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/IdentityProviderSigningKeys/#tag/IdentityProviderSigningKeys/operation/listIdentityProviderSigningKeys) until it's published.</td>
</tr>
<tr>
    <td><a href="#revoke_csr_for_identity_provider"><CopyableCode code="revoke_csr_for_identity_provider" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-idpId"><code>idpId</code></a>, <a href="#parameter-idpCsrId"><code>idpCsrId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Revokes a certificate signing request (CSR) and deletes the key pair from the identity provider (IdP)</td>
</tr>
<tr>
    <td><a href="#publish_csr_for_identity_provider"><CopyableCode code="publish_csr_for_identity_provider" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-idpId"><code>idpId</code></a>, <a href="#parameter-idpCsrId"><code>idpCsrId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Publishes the certificate signing request (CSR) with a signed X.509 certificate and adds it into the signing key credentials for the identity provider (IdP)<br />&gt; **Notes:**<br />&gt; * Publishing a certificate completes the lifecycle of the CSR, and it's no longer accessible.<br />&gt; * If the validity period of the certificate is less than 90 days, a 400 error response is returned.</td>
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
<tr id="parameter-idpCsrId">
    <td><CopyableCode code="idpCsrId" /></td>
    <td><code>string</code></td>
    <td>`id` of the IdP CSR</td>
</tr>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_csr_for_identity_provider"
    values={[
        { label: 'get_csr_for_identity_provider', value: 'get_csr_for_identity_provider' },
        { label: 'list_csrs_for_identity_provider', value: 'list_csrs_for_identity_provider' }
    ]}
>
<TabItem value="get_csr_for_identity_provider">

Retrieves a specific certificate signing request (CSR) by `id`

```sql
SELECT
id,
_links,
created,
csr,
kty
FROM okta.idps.csrs
WHERE idpId = '{{ idpId }}' -- required
AND idpCsrId = '{{ idpCsrId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_csrs_for_identity_provider">

Lists all certificate signing requests (CSRs) for an identity provider (IdP)

```sql
SELECT
id,
_links,
created,
csr,
kty
FROM okta.idps.csrs
WHERE idpId = '{{ idpId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="generate_csr_for_identity_provider"
    values={[
        { label: 'generate_csr_for_identity_provider', value: 'generate_csr_for_identity_provider' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="generate_csr_for_identity_provider">

Generates a new key pair and returns a certificate signing request (CSR) for it<br />&gt; **Note:** The private key isn't listed in the [signing key credentials for the identity provider (IdP)](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/IdentityProviderSigningKeys/#tag/IdentityProviderSigningKeys/operation/listIdentityProviderSigningKeys) until it's published.

```sql
INSERT INTO okta.idps.csrs (
subject,
subjectAltNames,
idpId,
subdomain
)
SELECT 
'{{ subject }}',
'{{ subjectAltNames }}',
'{{ idpId }}',
'{{ subdomain }}'
RETURNING
id,
_links,
created,
csr,
kty
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: csrs
  props:
    - name: idpId
      value: "{{ idpId }}"
      description: Required parameter for the csrs resource.
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the csrs resource.
    - name: subject
      value:
        commonName: "{{ commonName }}"
        countryName: "{{ countryName }}"
        localityName: "{{ localityName }}"
        organizationalUnitName: "{{ organizationalUnitName }}"
        organizationName: "{{ organizationName }}"
        stateOrProvinceName: "{{ stateOrProvinceName }}"
    - name: subjectAltNames
      value:
        dnsNames:
          - "{{ dnsNames }}"
`}</CodeBlock>

</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="revoke_csr_for_identity_provider"
    values={[
        { label: 'revoke_csr_for_identity_provider', value: 'revoke_csr_for_identity_provider' }
    ]}
>
<TabItem value="revoke_csr_for_identity_provider">

Revokes a certificate signing request (CSR) and deletes the key pair from the identity provider (IdP)

```sql
DELETE FROM okta.idps.csrs
WHERE idpId = '{{ idpId }}' --required
AND idpCsrId = '{{ idpCsrId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="publish_csr_for_identity_provider"
    values={[
        { label: 'publish_csr_for_identity_provider', value: 'publish_csr_for_identity_provider' }
    ]}
>
<TabItem value="publish_csr_for_identity_provider">

Publishes the certificate signing request (CSR) with a signed X.509 certificate and adds it into the signing key credentials for the identity provider (IdP)<br />&gt; **Notes:**<br />&gt; * Publishing a certificate completes the lifecycle of the CSR, and it's no longer accessible.<br />&gt; * If the validity period of the certificate is less than 90 days, a 400 error response is returned.

```sql
EXEC okta.idps.csrs.publish_csr_for_identity_provider 
@idpId='{{ idpId }}' --required, 
@idpCsrId='{{ idpCsrId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
