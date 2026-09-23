# Firewall Audit

Reports detected host firewall state and rules.

## Safety classification

- Default behavior: Read-only
- Production use: Requires local authorization and target confirmation
- Privilege: Run unprivileged unless the command reports that required evidence is inaccessible
- Network access: None unless an endpoint argument is explicitly supplied
- Sensitive data: Output may contain hostnames, usernames, paths, addresses, or configuration facts

## Requirements

- A supported Linux distribution
- Bash 4.4 or newer
- Commands documented by the tool's dependency check
- An isolated lab for initial use

## Usage

```bash
./audit-firewall.sh --help
```

Read the help output before running the tool. Replace examples with approved targets only. Do not use production credentials in command-line arguments.

## Operational workflow

1. Confirm the host, environment, and authorization.
2. Read the help output and inspect defaults.
3. Run against test data or a disposable lab.
4. Review output for sensitive values before sharing it.
5. Interpret warnings in service context.
6. Preserve evidence with a UTC timestamp when used during an incident.

## Output and exit codes

| Code | Meaning |
|---:|---|
| 0 | Success or healthy |
| 1 | Warning or differences found |
| 2 | Critical condition |
| 3 | Unknown or insufficient evidence |
| 64 | Invalid usage |
| 66 | Required input is unavailable |
| 69 | Required dependency or service is unavailable |
| 70 | Internal failure |
| 77 | Permission denied |
| 78 | Invalid configuration |

## Testing

```bash
./tests/smoke-test.sh
```

The smoke test checks syntax, help output, and a safe execution path. It does not prove suitability for a specific production environment.

## Files

- Tool: `audit-firewall.sh`
- Tests: `tests/`
- Examples: `examples/`

## Limitations

Distribution commands and output formats differ. Containers may not expose systemd, kernel logs, block devices, or complete host metrics. A successful collection proves only that the requested evidence was available.

## Related material

- [Toolkit safety](../../Toolkit-Safety.md)
- [Exit codes and output](../../Exit-Codes-and-Output-Standard.md)
- [Testing and validation](../../Testing-and-Validation-Standard.md)
- [Security Audits overview](../README.md)
