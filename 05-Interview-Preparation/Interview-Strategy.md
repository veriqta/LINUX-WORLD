# Linux Interview Strategy

## Before the interview

Study the role description, distribution family, environment size, support model, business-critical services and likely on-call responsibility. Prepare five truthful stories: difficult diagnosis, failed change, automation, security improvement and cross-team incident.

## During technical questions

Clarify whether the interviewer wants a definition, command, procedure, design or incident response. Start with the portable concept, then give distribution-specific examples. Narrate assumptions. Never invent a flag or output. Say how you would verify it.

## During troubleshooting

Do not jump to restart or reinstall. Establish impact, time, recent changes and a baseline. Use evidence to narrow from user request to name resolution, route, socket, process, service, resources, storage, identity, security policy and dependencies.

## During hands-on tasks

Read every task, inspect before changing, back up configuration, validate syntax, make one change, verify effective state, run a negative test, prove persistence and clean up. Use local manual pages when allowed.

## Questions to ask the employer

- Which Linux distributions and versions are supported?
- How large is the fleet, and how is configuration managed?
- What are the most important services and failure modes?
- How are on-call, escalation and incident command organized?
- What is the change, rollback and review process?
- Which reliability and security objectives define success?
- What should the successful candidate improve in the first 90 days?

## Red flags

Avoid absolute claims, command dumping, unsafe shortcuts, blame, secret disclosure, fake production experience, and answers that end before verification.
