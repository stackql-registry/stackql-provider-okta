--- 
title: custom_domains
hide_title: false
hide_table_of_contents: false
keywords:
  - custom_domains
  - domains
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

Creates, updates, deletes, gets or lists a <code>custom_domains</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><CopyableCode code="custom_domains" /></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.domains.custom_domains" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_custom_domain"
    values={[
        { label: 'get_custom_domain', value: 'get_custom_domain' },
        { label: 'list_custom_domains', value: 'list_custom_domains' }
    ]}
>
<TabItem value="get_custom_domain">

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
    <td>Unique ID of the domain (example: OcDz6iRyjkaCTXkdo0g3)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="brandId" /></td>
    <td><code>string</code></td>
    <td>The ID number of the brand (example: bndul904tTZ6kWVhP0g3)</td>
</tr>
<tr>
    <td><CopyableCode code="certificateSourceType" /></td>
    <td><code>string</code></td>
    <td>Certificate source type that indicates whether the certificate is provided by the user or Okta. (MANUAL, OKTA_MANAGED)</td>
</tr>
<tr>
    <td><CopyableCode code="dnsRecords" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="domain" /></td>
    <td><code>string</code></td>
    <td>Custom domain name (example: login.example.com)</td>
</tr>
<tr>
    <td><CopyableCode code="publicCertificate" /></td>
    <td><code>object</code></td>
    <td>Certificate metadata for the domain</td>
</tr>
<tr>
    <td><CopyableCode code="validationStatus" /></td>
    <td><code>string</code></td>
    <td>Status of the domain (COMPLETED, IN_PROGRESS, NOT_STARTED, VERIFIED) (example: VERIFIED)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_custom_domains">

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
    <td><CopyableCode code="domains" /></td>
    <td><code>array</code></td>
    <td>Each element of the array defines an individual domain</td>
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
    <td><a href="#get_custom_domain"><CopyableCode code="get_custom_domain" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-domainId"><code>domainId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a custom domain by `domainId`</td>
</tr>
<tr>
    <td><a href="#list_custom_domains"><CopyableCode code="list_custom_domains" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all verified custom domains for the org</td>
</tr>
<tr>
    <td><a href="#create_custom_domain"><CopyableCode code="create_custom_domain" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-certificateSourceType"><code>certificateSourceType</code></a>, <a href="#parameter-domain"><code>domain</code></a></td>
    <td></td>
    <td>Creates your custom domain</td>
</tr>
<tr>
    <td><a href="#replace_custom_domain"><CopyableCode code="replace_custom_domain" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-domainId"><code>domainId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-brandId"><code>brandId</code></a></td>
    <td></td>
    <td>Replaces a custom domain's brand</td>
</tr>
<tr>
    <td><a href="#delete_custom_domain"><CopyableCode code="delete_custom_domain" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-domainId"><code>domainId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a custom domain by `domainId`</td>
</tr>
<tr>
    <td><a href="#upsert_certificate"><CopyableCode code="upsert_certificate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-domainId"><code>domainId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-certificate"><code>certificate</code></a>, <a href="#parameter-certificateChain"><code>certificateChain</code></a>, <a href="#parameter-privateKey"><code>privateKey</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Upserts (creates or renews) the `MANUAL` certificate for the custom domain<br /><br />&gt; **Notes:**<br />&gt; * If the existing `certificateSourceType` is `OKTA_MANAGED`, this operation changes the source type to `MANUAL`. Okta no longer manages and renews certificates for this domain after you provide a user-managed certificate.<br />&gt; * Okta supports TLS certificates and private keys that are PEM-encoded and 2048, 3072, or 4096 bits. See the [Custom domain guide](https://developer.okta.com/docs/guides/custom-url-domain/main/) for more details.</td>
</tr>
<tr>
    <td><a href="#verify_domain"><CopyableCode code="verify_domain" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-domainId"><code>domainId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Verifies the custom domain and validity of DNS records by `domainId`. Verify your custom domain to confirm that you own or control the domain and that you have properly configured the required DNS records. Furthermore, if the `certificateSourceType` in the domain is `OKTA_MANAGED`, then an attempt is made to obtain and install a certificate. After a certificate is obtained and installed by Okta, Okta manages the certificate including certificate renewal.<br /><br />Verify your custom domain after you've [created it](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/CustomDomain/#tag/CustomDomain/operation/createCustomDomain) and after you've added your DNS records to your domain provider. Okta doesn't verify your domain automatically. You must use the API to verify your custom domain if you change your DNS records or if you encounter issues with domain validation.<br /><br />&gt; **Note:** DNS record changes can take time to propagate. If you recently updated your DNS records, you may need to wait before verifying your custom domain. If you encounter issues with domain verification, double-check your DNS records and ensure that they're correctly configured. See [Update your DNS records](https://developer.okta.com/docs/guides/custom-url-domain/main/#update-your-dns-txt).</td>
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
<tr id="parameter-domainId">
    <td><CopyableCode code="domainId" /></td>
    <td><code>string</code></td>
    <td>`id` of the Domain</td>
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
    defaultValue="get_custom_domain"
    values={[
        { label: 'get_custom_domain', value: 'get_custom_domain' },
        { label: 'list_custom_domains', value: 'list_custom_domains' }
    ]}
>
<TabItem value="get_custom_domain">

Retrieves a custom domain by `domainId`

```sql
SELECT
id,
_links,
brandId,
certificateSourceType,
dnsRecords,
domain,
publicCertificate,
validationStatus
FROM okta.domains.custom_domains
WHERE domainId = '{{ domainId }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="list_custom_domains">

Lists all verified custom domains for the org

```sql
SELECT
domains
FROM okta.domains.custom_domains
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_custom_domain"
    values={[
        { label: 'create_custom_domain', value: 'create_custom_domain' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_custom_domain">

Creates your custom domain

```sql
INSERT INTO okta.domains.custom_domains (
certificateSourceType,
domain,
subdomain
)
SELECT 
'{{ certificateSourceType }}' /* required */,
'{{ domain }}' /* required */,
'{{ subdomain }}'
RETURNING
id,
_links,
brandId,
certificateSourceType,
dnsRecords,
domain,
publicCertificate,
validationStatus
;
```
</TabItem>
<TabItem value="manifest">

<CodeBlock language="yaml">{`# Description fields are for documentation purposes
- name: custom_domains
  props:
    - name: subdomain
      value: "{{ subdomain }}"
      description: Required parameter for the custom_domains resource.
    - name: certificateSourceType
      value: "{{ certificateSourceType }}"
      description: |
        Certificate source type that indicates whether the certificate is provided by the user or Okta.
      valid_values: ['MANUAL', 'OKTA_MANAGED']
    - name: domain
      value: "{{ domain }}"
      description: |
        Custom domain name
        > **Note:** You can't use the reserved \`drapp.{yourOrgSubDomain}.okta.com\` domain.
`}</CodeBlock>

</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_custom_domain"
    values={[
        { label: 'replace_custom_domain', value: 'replace_custom_domain' }
    ]}
>
<TabItem value="replace_custom_domain">

Replaces a custom domain's brand

```sql
REPLACE okta.domains.custom_domains
SET 
brandId = '{{ brandId }}'
WHERE 
domainId = '{{ domainId }}' --required
AND subdomain = '{{ subdomain }}' --required
AND brandId = '{{ brandId }}' --required
RETURNING
id,
_links,
brandId,
certificateSourceType,
dnsRecords,
domain,
publicCertificate,
validationStatus;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_custom_domain"
    values={[
        { label: 'delete_custom_domain', value: 'delete_custom_domain' }
    ]}
>
<TabItem value="delete_custom_domain">

Deletes a custom domain by `domainId`

```sql
DELETE FROM okta.domains.custom_domains
WHERE domainId = '{{ domainId }}' --required
AND subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="upsert_certificate"
    values={[
        { label: 'upsert_certificate', value: 'upsert_certificate' },
        { label: 'verify_domain', value: 'verify_domain' }
    ]}
>
<TabItem value="upsert_certificate">

Upserts (creates or renews) the `MANUAL` certificate for the custom domain<br /><br />&gt; **Notes:**<br />&gt; * If the existing `certificateSourceType` is `OKTA_MANAGED`, this operation changes the source type to `MANUAL`. Okta no longer manages and renews certificates for this domain after you provide a user-managed certificate.<br />&gt; * Okta supports TLS certificates and private keys that are PEM-encoded and 2048, 3072, or 4096 bits. See the [Custom domain guide](https://developer.okta.com/docs/guides/custom-url-domain/main/) for more details.

```sql
EXEC okta.domains.custom_domains.upsert_certificate 
@domainId='{{ domainId }}' --required, 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"certificate": "{{ certificate }}", 
"certificateChain": "{{ certificateChain }}", 
"privateKey": "{{ privateKey }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
<TabItem value="verify_domain">

Verifies the custom domain and validity of DNS records by `domainId`. Verify your custom domain to confirm that you own or control the domain and that you have properly configured the required DNS records. Furthermore, if the `certificateSourceType` in the domain is `OKTA_MANAGED`, then an attempt is made to obtain and install a certificate. After a certificate is obtained and installed by Okta, Okta manages the certificate including certificate renewal.<br /><br />Verify your custom domain after you've [created it](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/CustomDomain/#tag/CustomDomain/operation/createCustomDomain) and after you've added your DNS records to your domain provider. Okta doesn't verify your domain automatically. You must use the API to verify your custom domain if you change your DNS records or if you encounter issues with domain validation.<br /><br />&gt; **Note:** DNS record changes can take time to propagate. If you recently updated your DNS records, you may need to wait before verifying your custom domain. If you encounter issues with domain verification, double-check your DNS records and ensure that they're correctly configured. See [Update your DNS records](https://developer.okta.com/docs/guides/custom-url-domain/main/#update-your-dns-txt).

```sql
EXEC okta.domains.custom_domains.verify_domain 
@domainId='{{ domainId }}' --required, 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
