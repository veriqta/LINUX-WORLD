# How to Use Linux World

Linux World is designed for active learning. The strongest results come from reading, typing, observing, breaking controlled lab systems, troubleshooting, and documenting what happened.

## Use the repository in four stages

### 1. Learn

Follow the 20-part [Linux Learning Path](../01-Learning-Path/) in order if Linux is new to you.

Each part builds on concepts introduced earlier. Skipping foundational sections may create gaps later, especially when working with permissions, services, networking, storage, scripting, and troubleshooting.

### 2. Practise

Run commands in a safe Linux lab. Do not only read command examples.

For each command:

- Identify the executable name.
- Explain every option and argument.
- Predict what the command will do.
- Run it without unnecessary privileges.
- Read the complete output.
- Check the exit status when relevant.
- Verify that the intended change occurred.
- Reverse or clean up the change when instructed.

### 3. Troubleshoot

When something fails, avoid random command execution. Use a repeatable process:

1. State the symptom precisely.
2. Confirm which users, services, files, or systems are affected.
3. Review recent changes.
4. Collect evidence from commands, logs, metrics, and configuration.
5. Form a small number of testable hypotheses.
6. Test the safest and most likely explanation first.
7. Identify the root cause.
8. Apply the smallest safe correction.
9. Verify recovery.
10. Record how to prevent recurrence.

### 4. Build

Complete labs and projects without copying solutions immediately. Try to plan the work, identify dependencies, verify each stage, and document decisions.

## How to study each Learning Path part

### Before starting

- Review the prerequisites.
- Start the lab environment.
- Take a virtual-machine snapshot when appropriate.
- Open a notes file.
- Confirm that no important data is at risk.

### During the lesson

- Type commands manually.
- Change example names to safe personal lab values.
- Read manual pages and `--help` output.
- Record unfamiliar terms.
- Stop when output differs significantly from the guide.
- Investigate the difference before continuing.

### After the lesson

- Complete the exercises without looking at examples.
- Explain the topic in plain language.
- Repeat important commands from memory.
- Perform the verification steps.
- Restore or clean up the lab.
- Update the [Progress Tracker](Progress-Tracker.md).

## How to take useful notes

A strong Linux note records more than a command. Include:

```text
Goal:
Command:
What each option means:
Expected result:
Actual result:
How I verified it:
Common failure:
How I fixed it:
Production caution:
```

## How to use root and sudo safely

- Work as a regular user by default.
- Use `sudo` only for a command that requires elevated privileges.
- Read the full command before pressing Enter.
- Confirm paths before recursive operations.
- Avoid running downloaded scripts as root.
- Do not use `sudo` merely to bypass an error that has not been understood.

## When output differs from the guide

Output can vary because of:

- Distribution and release
- Installed package version
- Shell
- User permissions
- Hardware or virtualization platform
- Network configuration
- Locale and timezone
- Service configuration

Record the difference, confirm the environment, check authoritative documentation, and investigate before changing the system.

## Recommended weekly routine

| Activity | Suggested approach |
| --- | --- |
| Learn | Study one focused section at a time |
| Practise | Repeat commands without copying |
| Review | Revisit notes and cheat sheets |
| Troubleshoot | Reproduce one safe failure |
| Build | Complete a lab or project milestone |
| Reflect | Record what worked, failed, and changed |

Study speed is less important than verified understanding.

## Getting help responsibly

Before requesting help:

1. Read the error message fully.
2. Confirm the command and current directory.
3. Check the relevant lesson and troubleshooting section.
4. Search existing repository issues.
5. Collect sanitized system information and output.

Never publish passwords, tokens, private keys, personal information, private hostnames, or confidential logs.

## Next step

New readers should continue to [Choose Your Learning Path](Choose-Your-Learning-Path.md).
