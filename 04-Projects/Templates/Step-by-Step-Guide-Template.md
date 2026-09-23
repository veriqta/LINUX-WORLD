# {{PROJECT_NAME}}: Step-by-Step Guide

This guide is mandatory for Junior projects. Complete each checkpoint before continuing and never run destructive commands outside the isolated lab.

## Stage {{NUMBER}}: {{OUTCOME}}

### Understand

Explain the concept, why this stage exists, what changes, and what could go wrong.

### Inspect the current state

```bash
{{READ_ONLY_COMMANDS}}
```

Explain relevant fields and expected variation.

### Make the change

```bash
{{COMMAND}}
```

| Part | Meaning |
| --- | --- |
| `{{TOKEN}}` | {{EXPLANATION}} |

State why privilege is required, what changes, whether the command is idempotent, and how to undo it.

### Verify

```bash
{{VERIFICATION_COMMANDS}}
```

**Expected condition:** {{ASSERTION}}

### Practice failure safely

Describe one reversible mistake, expected symptom, evidence to inspect, and recovery.

### Checkpoint

- [ ] I can explain and reverse the change.
- [ ] The verification condition is true.
- [ ] I recorded sanitized evidence.

## Final challenge

Ask the learner to extend one feature without giving the final command. Supply success criteria and a hint, then place the comparison solution in `solutions/`.
