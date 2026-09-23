# Evidence and Redaction Guide

## Evidence classes

| Type | Examples | Preferred record |
| --- | --- | --- |
| System state | Effective configuration, process, socket, mount | Bounded text or structured output |
| Event evidence | Journal entry, audit event, alert | Timestamped excerpt with source |
| Change evidence | Diff, package transaction, deployment ID | Versioned link and summary |
| Performance evidence | Metric query, profile, time series | Query, window, units and interpretation |
| Decision evidence | Approval, incident decision, ADR | Stable reference and owner |
| Recovery evidence | Restore result, integrity check, user test | Test record with RPO and RTO |

## Redact before publication

- passwords, tokens, session cookies and private keys;
- personal or customer data;
- private addresses, internal hostnames and account identifiers;
- confidential ticket or chat content;
- unrestricted logs and packet payloads;
- certificate private material and secret paths;
- environment variables that may contain credentials.

## Consistent markers

Use markers that retain meaning: `<REDACTED_TOKEN>`, `<INTERNAL_HOST_A>`, `<PRIVATE_IP_A>`, `<USER_ID_A>`, `<TICKET_ID>`. Do not replace every value with the same marker when relationships matter.

## Preserve technical meaning

Keep timestamps, units, error codes, protocol state and ordering. Replace sensitive identifiers consistently. State whether output was shortened, transformed or sampled. Never alter evidence to make a conclusion look stronger.

## Evidence integrity

For high-impact work, preserve the original in approved storage, record the collector and collection time, restrict access and calculate a digest when policy requires it. The public notebook should link to an approved reference, not contain restricted evidence.

## Redaction review

Search the final record for key, token, secret, password, authorization headers, private key markers, email addresses, public addresses, internal domains and account IDs. Review images separately because text search does not inspect every screenshot.
