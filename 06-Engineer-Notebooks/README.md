# Engineer Notebooks

A working-record system for Linux System Administrators operating, investigating, maintaining and documenting real systems.

These notebooks turn operational activity into traceable evidence. They do not replace the learning path, command references, troubleshooting guides, projects or interview database. They provide the records engineers use while doing the work.

## Choose a notebook level

| Collection | Primary use | Expected ownership |
| --- | --- | --- |
| [Junior](Junior/) | Routine administration, checks, changes, escalation and handover | Follow approved procedures, explain actions and verify results |
| [Mid-Level](Mid-Level/) | Service ownership, cross-domain investigation, change and recovery | Make bounded decisions, test hypotheses and own operational outcomes |
| [Senior](Senior/) | Architecture, fleet risk, reliability, incident command and governance | Set objectives, manage uncertainty, control blast radius and lead review |
| [Shared Templates](Shared-Templates/) | Reusable evidence, change, decision and handover records | Apply at any level with appropriate review |
| [Completed Examples](Examples/) | Sanitized examples showing the expected standard | Study the structure, never copy conclusions without evidence |

## Start here

1. Read [How to Use the Notebooks](How-to-Use-the-Notebooks.md).
2. Apply the [Notebook Standards](Notebook-Standards.md).
3. Follow the [Evidence and Redaction Guide](Evidence-and-Redaction-Guide.md).
4. Use the [Naming and Timestamp Standard](Naming-and-Timestamp-Standard.md).
5. Select the narrowest notebook that fits the work.
6. Create a new record. Do not overwrite the blank template.
7. Complete the closeout quality gate before sharing or publishing.

## Required record chain

Every material record should show:

1. purpose and authorization;
2. exact target and before state;
3. expected result and risk;
4. actions with UTC timestamps;
5. evidence separated from interpretation;
6. functional and negative verification;
7. rollback or recovery;
8. final state, remaining risk and owner;
9. redaction and review.

## Safety and privacy

Use only systems that are owned or explicitly authorized. Never publish credentials, tokens, private keys, personal data, customer data, real internal topology, unrestricted logs or confidential ticket content. Replace sensitive values with consistent markers and retain originals only in approved protected systems.

## Repository relationship

- `01-Beginner-to-Advanced` teaches Linux.
- `02-Commands-and-Cheat-Sheets` explains commands.
- `03-Troubleshooting` teaches investigation and recovery.
- `04-Projects` provides complete implementations.
- `05-Interview-Preparation` prepares candidates for assessment.
- `06-Engineer-Notebooks` records real operational work.

## Governance and quality controls

- [Notebook Selection Guide](Notebook-Selection-Guide.md) helps choose the correct record.
- [Notebook Lifecycle](Notebook-Lifecycle.md) defines creation, review, completion, archival and disposal.
- [Review and Approval Matrix](Review-and-Approval-Matrix.md) scales oversight to risk.
- [Data Classification and Retention](Data-Classification-and-Retention.md) governs sensitive content.
- [Notebook Quality Checklist](Notebook-Quality-Checklist.md) provides the closeout gate.
- [Versioning](VERSIONING.md) protects completed records and manages template change.
