# Text Processing

Read, search, transform, compare, extract, and combine text streams using composable Linux tools.

## What this section covers

- Command purpose and selection
- Safe syntax and common options
- Practical administrative workflows
- Verification after each change
- Troubleshooting and recovery
- Distribution and privilege differences

## Files in this section

- [Core Commands](Core-Commands.md), detailed reference with practical examples
- [Practical Workflows](Practical-Workflows.md), repeatable task sequences
- [Troubleshooting](Troubleshooting.md), diagnosis steps and common failure patterns

## How to use the examples

1. Read the command description before copying an example.
2. Replace placeholders such as `USER`, `HOST`, `DEVICE`, and `PATH`.
3. Test in a lab or non-production environment first.
4. Use read-only inspection commands before commands that change state.
5. Capture the current state and make a backup when rollback matters.
6. Run the verification command and confirm the intended result.

## Safety rules

- Never paste an unfamiliar privileged command into a shell.
- Treat recursive, destructive, storage, firewall, identity, and boot commands as high risk.
- Confirm the hostname, current user, working directory, and target before changing anything.
- Prefer `--dry-run`, validation modes, and explicit paths when available.
- Preserve evidence during incident response. Do not clean logs or restart services before collecting relevant state unless availability requires immediate mitigation.
- A command that works on one distribution may use different packages, paths, or service names on another.

## Shell notation

| Notation | Meaning |
| --- | --- |
| `COMMAND` | Run as the current user |
| `sudo COMMAND` | Requires authorized privilege |
| `<value>` | Replace with a real value, without the angle brackets |
| `[option]` | Optional argument |
| `|` | Send standard output to another command |
| `>` | Replace a file with standard output |
| `>>` | Append standard output to a file |
| `2>` | Redirect standard error |

## Related sections

Return to the [Command Index](../Command-Index.md) or open the [Cheat Sheets](../Cheat-Sheets/).

