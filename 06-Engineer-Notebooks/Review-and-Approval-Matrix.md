# Review and Approval Matrix

Use organizational policy when it is stricter than this baseline.

| Risk | Typical scope | Authorization before action | Required review | Closeout authority |
| --- | --- | --- | --- | --- |
| Low | Read-only lab or routine documented check | Engineer or approved procedure | Self-review | Engineer |
| Medium | Reversible change to one noncritical service | Service owner or change delegate | Peer review | Implementer and reviewer |
| High | Production, security boundary, customer impact or difficult rollback | Change authority and service owner | Independent technical review | Change authority |
| Critical | Fleet-wide, destructive, irreversible, regulated or major-incident action | Incident/change executive defined by policy | Senior technical and risk review where time permits | Incident/change authority |

## Separation of duties

- Authors must not approve their own high-risk work when an independent reviewer is available.
- Emergency authorization must identify the decision owner, justification and retrospective review deadline.
- Reviewers verify evidence, target scope, rollback feasibility, security effects and acceptance tests.
- Approval is not transferable through a copied name or unchecked box.

## Review outcome

Record the reviewer, UTC time, decision, conditions, rejected concerns, exceptions, expiry and evidence link. A conditional approval remains open until its conditions are verified.
