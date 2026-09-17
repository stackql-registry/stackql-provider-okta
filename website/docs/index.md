---
title: okta
hide_title: false
hide_table_of_contents: false
keywords:
  - okta
  - stackql
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage Okta resources using SQL
custom_edit_url: null
image: /img/stackql-okta-provider-featured-image.png
id: 'provider-intro'
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';

Authentication and authorization services.  

:::info[Provider Summary] 

total services: __55__  
total resources: __245__  

:::

See also:   
[[` SHOW `]](https://stackql.io/docs/language-spec/show) [[` DESCRIBE `]](https://stackql.io/docs/language-spec/describe)  [[` REGISTRY `]](https://stackql.io/docs/language-spec/registry)
* * * 

## Installation

To pull the latest version of the `okta` provider, run the following command:  

```bash
REGISTRY PULL okta;
```
> To view previous provider versions or to pull a specific provider version, see [here](https://stackql.io/docs/language-spec/registry).  

## Authentication

The following system environment variables are used for authentication by default:  

- <CopyableCode code="OKTA_API_TOKEN" /> - Okta API Token (see <a href="https://developer.okta.com/docs/guides/create-an-api-token/">Creating an Okta API Token</a>)
  
These variables are sourced at runtime (from the local machine or as CI variables/secrets).  

<details>

<summary>Using different environment variables</summary>

To use different environment variables (instead of the defaults), use the `--auth` flag of the `stackql` program.  For example:  

```bash

AUTH='{ "okta": { "type": "api_key", "valuePrefix": "SSWS ", "credentialsenvvar": "YOUR_OKTA_API_TOKEN_VAR" }}'
stackql shell --auth="${AUTH}"

```
or using PowerShell:  

```powershell

$Auth = "{ 'okta': { 'type': 'api_key',  'valuePrefix': 'SSWS ', 'credentialsenvvar': 'YOUR_OKTA_API_TOKEN_VAR' }}"
stackql.exe shell --auth=$Auth

```
</details>


## Server Parameters


The following parameter is required for the `okta` provider:  

- <CopyableCode code="subdomain" /> - The Okta tenant domain, for example <code>my-company</code> would be supplied if your Okta domain is <code>my-company.okta.com</code>

This parameter must be supplied to the `WHERE` clause of each `SELECT` statement.

## Example Queries

Try the following queries using `stackql shell`, or run them from a script or CI pipeline with `stackql exec`.

### Users with status and last sign-in

Every user with login, department, lifecycle status, last sign-in and the provider that validates the password:

```sql
SELECT id,
       json_extract(profile, '$.login') AS login,
       json_extract(profile, '$.department') AS department,
       status, lastLogin, passwordChanged,
       json_extract(credentials, '$.provider.type') AS auth_provider
FROM okta.users.users
WHERE subdomain = '{{ subdomain }}'
ORDER BY lastLogin;
```

### Groups and their members

Groups with member counts (`expand = 'stats'` populates `_embedded.stats.usersCount`), then the members of one group:

```sql
SELECT id,
       json_extract(profile, '$.name') AS name,
       type,
       json_extract(_embedded, '$.stats.usersCount') AS member_count,
       lastMembershipUpdated
FROM okta.groups.groups
WHERE subdomain = '{{ subdomain }}'
  AND expand = 'stats'
ORDER BY member_count DESC;

SELECT id,
       json_extract(profile, '$.login') AS login,
       status, lastLogin
FROM okta.groups.users
WHERE groupId = '{{ groupId }}'
  AND subdomain = '{{ subdomain }}';
```

### Applications with status and sign-on mode

Every app instance with its sign-on mode and lifecycle status:

```sql
SELECT id, label, signOnMode, status, created, lastUpdated
FROM okta.apps.applications
WHERE subdomain = '{{ subdomain }}'
ORDER BY signOnMode, label;
```

### Groups assigned to an application

The group assignments of one application, with the group name looked up from the groups resource:

```sql
SELECT g.id,
       json_extract(g.profile, '$.name') AS group_name,
       g.type,
       ga.priority, ga.lastUpdated
FROM okta.apps.group_assignments ga
JOIN okta.groups.groups g
  ON g.id = ga.id
WHERE ga.appId = '{{ appId }}'
  AND ga.subdomain = '{{ subdomain }}'
  AND g.subdomain = '{{ subdomain }}'
ORDER BY ga.priority;
```

### Sign-on policies and their rules

Sign-on policies in priority order (`type` is a required parameter of the policies resource), then the rules of one policy:

```sql
SELECT id, name, status, priority, system, lastUpdated
FROM okta.policies.policies
WHERE type = 'OKTA_SIGN_ON'
  AND subdomain = '{{ subdomain }}'
ORDER BY priority;

SELECT id, name, status, priority, system, type
FROM okta.policies.policy_rules
WHERE policyId = '{{ policyId }}'
  AND subdomain = '{{ subdomain }}'
ORDER BY priority;
```

### Failed sign-ins from the system log

Failed sign-in attempts since a given time, with the `filter` expression evaluated by Okta rather than after the fact:

```sql
SELECT published, eventType, displayMessage,
       json_extract(actor, '$.alternateId') AS actor_login,
       json_extract(client, '$.ipAddress') AS ip_address,
       json_extract(client, '$.geographicalContext.country') AS country,
       json_extract(outcome, '$.reason') AS reason
FROM okta.logs.system_log_events
WHERE subdomain = '{{ subdomain }}'
  AND since = '2026-09-10T00:00:00.000Z'
  AND filter = 'eventType eq "user.session.start" and outcome.result eq "FAILURE"'
ORDER BY published DESC;
```

### API tokens by expiry

Active API tokens with the owning user, client and expiry:

```sql
SELECT id, name, clientName, userId, created, lastUpdated, expiresAt, tokenWindow
FROM okta.api_tokens.api_tokens
WHERE subdomain = '{{ subdomain }}'
ORDER BY expiresAt;
```

### Users by status

Number of users in each lifecycle status (the default listing omits users with the `DEPROVISIONED` status):

```sql
SELECT status, COUNT(*) AS user_count
FROM okta.users.users
WHERE subdomain = '{{ subdomain }}'
GROUP BY status
ORDER BY user_count DESC;
```

### Group provisioning

Create a group, replace its profile (the groups resource exposes `replace` rather than `update`), then delete it:

```sql
INSERT INTO okta.groups.groups (data__profile, subdomain)
SELECT '{"name": "finance-readers", "description": "Read-only access to finance apps"}',
       '{{ subdomain }}';

REPLACE okta.groups.groups
SET data__profile = '{"name": "finance-readers", "description": "Read-only access to finance and billing apps"}'
WHERE groupId = '{{ groupId }}'
  AND subdomain = '{{ subdomain }}';

DELETE FROM okta.groups.groups
WHERE groupId = '{{ groupId }}'
  AND subdomain = '{{ subdomain }}';
```

### Lifecycle operations

Lifecycle methods are `EXEC` calls, for example suspending a user or deactivating an application:

```sql
EXEC okta.users.users.suspend_user
  @id = '{{ userId }}',
  @subdomain = '{{ subdomain }}';

EXEC okta.apps.applications.deactivate_application
  @appId = '{{ appId }}',
  @subdomain = '{{ subdomain }}';
```

## Services
<div class="row">
<div class="providerDocColumn">
<a href="/services/agentpools/">agentpools</a><br />
<a href="/services/api_tokens/">api_tokens</a><br />
<a href="/services/apps/">apps</a><br />
<a href="/services/attack_protection/">attack_protection</a><br />
<a href="/services/authenticators/">authenticators</a><br />
<a href="/services/authorizationservers/">authorizationservers</a><br />
<a href="/services/behaviors/">behaviors</a><br />
<a href="/services/brands/">brands</a><br />
<a href="/services/captchas/">captchas</a><br />
<a href="/services/device_access/">device_access</a><br />
<a href="/services/device_assurances/">device_assurances</a><br />
<a href="/services/device_integrations/">device_integrations</a><br />
<a href="/services/device_posture_checks/">device_posture_checks</a><br />
<a href="/services/devices/">devices</a><br />
<a href="/services/directories/">directories</a><br />
<a href="/services/domains/">domains</a><br />
<a href="/services/email_domains/">email_domains</a><br />
<a href="/services/email_servers/">email_servers</a><br />
<a href="/services/eventhooks/">eventhooks</a><br />
<a href="/services/features/">features</a><br />
<a href="/services/first_party_app_settings/">first_party_app_settings</a><br />
<a href="/services/groups/">groups</a><br />
<a href="/services/hook_keys/">hook_keys</a><br />
<a href="/services/iam/">iam</a><br />
<a href="/services/identity_sources/">identity_sources</a><br />
<a href="/services/idps/">idps</a><br />
<a href="/services/inlinehooks/">inlinehooks</a><br />
<a href="/services/integrations/">integrations</a><br />
</div>
<div class="providerDocColumn">
<a href="/services/logs/">logs</a><br />
<a href="/services/logstreams/">logstreams</a><br />
<a href="/services/mappings/">mappings</a><br />
<a href="/services/meta/">meta</a><br />
<a href="/services/oauth2/">oauth2</a><br />
<a href="/services/okta_personal_settings/">okta_personal_settings</a><br />
<a href="/services/org/">org</a><br />
<a href="/services/orgs/">orgs</a><br />
<a href="/services/policies/">policies</a><br />
<a href="/services/principal_rate_limits/">principal_rate_limits</a><br />
<a href="/services/privileged_access/">privileged_access</a><br />
<a href="/services/push_providers/">push_providers</a><br />
<a href="/services/rate_limit_settings/">rate_limit_settings</a><br />
<a href="/services/realm_assignments/">realm_assignments</a><br />
<a href="/services/realms/">realms</a><br />
<a href="/services/risk/">risk</a><br />
<a href="/services/roles/">roles</a><br />
<a href="/services/security/">security</a><br />
<a href="/services/security_events_providers/">security_events_providers</a><br />
<a href="/services/sessions/">sessions</a><br />
<a href="/services/ssf/">ssf</a><br />
<a href="/services/templates/">templates</a><br />
<a href="/services/threats/">threats</a><br />
<a href="/services/trustedorigins/">trustedorigins</a><br />
<a href="/services/users/">users</a><br />
<a href="/services/webauthn_registration/">webauthn_registration</a><br />
<a href="/services/zones/">zones</a><br />
</div>
</div>
