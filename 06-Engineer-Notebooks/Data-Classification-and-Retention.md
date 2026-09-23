# Data Classification and Retention

Classify the record by its most sensitive content and keep sensitive source evidence in an approved protected system.

| Class | Public repository treatment | Examples |
| --- | --- | --- |
| Public | May be published after review | Synthetic hostnames, documentation, sanitized examples |
| Internal | Do not publish without authorization | Internal procedures, nonpublic inventory, staff contacts |
| Confidential | Store only in approved restricted systems | Customer data, detailed topology, incident evidence |
| Restricted | Never place in a public notebook | Passwords, tokens, private keys, regulated identifiers |

## Retention rules

The organization, not this repository, sets retention periods. Record the policy identifier, retention trigger, disposal date, legal hold and system of record. Preserve integrity metadata when evidence may support an incident, audit or legal process.

## Public-example rule

Use documentation ranges, synthetic identities and altered timestamps. Remove secrets rather than masking only part of them. Redaction must not conceal the reasoning needed to understand the example. Complete the redaction review in [Evidence and Redaction Guide](Evidence-and-Redaction-Guide.md).
