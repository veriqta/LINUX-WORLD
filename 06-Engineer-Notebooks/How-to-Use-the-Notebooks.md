# How to Use the Engineer Notebooks

## Select the right record

Choose by responsibility, not job title. A Senior engineer may use a Junior daily-check record. A Junior engineer should not approve a fleet-risk decision simply because a Senior template exists. Use Shared Templates when a focused record is enough.

## Create a working copy

Copy the template into an approved working location. Name it using the repository standard. Keep the blank source unchanged. Set classification before collecting evidence.

## Record before action

Write the objective, exact target, authorization, before state, expected outcome, risk, validation and rollback. If these cannot be stated, stop and clarify the work.

## Separate fact from interpretation

Evidence is what a source showed. Interpretation is what the engineer believes it means. Record both separately. Mark assumptions and confidence. Preserve failed hypotheses because they explain why actions were not taken.

## Record commands responsibly

Capture the working directory, identity, exact command, purpose, expected result, actual result and exit status. Redact secrets. Never publish a command that includes a credential. Explain destructive effects and target validation.

## Verify independently

Do not use the same action as proof of success. Validate effective state through a second tool, identity or user path. Include a negative test, security check, persistence test and monitoring observation when applicable.

## Close and review

Record the final state, remaining limitations, follow-up owner and review date. Remove temporary access and artifacts. Run the closeout gate, then obtain review appropriate to risk and classification.

## Do not use notebooks as

- a password store;
- unrestricted log storage;
- a replacement for tickets, source control or monitoring;
- an undocumented approval system;
- proof of work that was not actually performed;
- a place to rewrite facts after an incident.
