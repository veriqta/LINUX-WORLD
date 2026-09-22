# Files and Directories: Practical Workflows

These workflows provide a repeatable starting point. Adjust commands to the distribution, environment, change policy, and incident severity.

## Standard workflow

1. Confirm location before acting: `pwd` and `ls -la`.
2. Create a safe practice tree: `mkdir -p ~/linux-world-lab/{source,backup,archive}`.
3. Copy while preserving metadata: `cp -a source/. backup/`.
4. Compare source and copy: `diff -qr source backup`.
5. Find old logs without deleting them: `find /var/log -type f -name '*.log' -mtime +30 -print`.
6. Review sizes: `du -xhd1 PATH | sort -h`.
7. Delete only after reviewing the exact printed list.

## Evidence capture

Capture only what is relevant and protect sensitive data.

```bash
date --iso-8601=seconds
hostname
id
uname -a
```

Store investigation output in a restricted directory:

```bash
umask 077
case_dir="$HOME/linux-world-case-$(date +%Y%m%dT%H%M%S)"
mkdir -p "$case_dir"
```

Do not place passwords, private keys, tokens, session cookies, customer data, or unredacted production logs in a public issue.

## Change pattern

1. **Observe:** collect current state without changing it.
2. **Hypothesize:** state what evidence would support or reject the theory.
3. **Validate:** use syntax checks, dry runs, or a lab.
4. **Change:** make one controlled and documented change.
5. **Verify:** test the operating-system state and the user-facing outcome.
6. **Rollback:** reverse the change if verification fails.
7. **Record:** document cause, mitigation, final fix, and prevention.

## Completion criteria

A task is not complete merely because a command returned exit status zero. Confirm:

- The intended state exists.
- Dependent services remain healthy.
- Logs contain no new relevant errors.
- Monitoring and alerts return to normal.
- Access and security controls still work.
- The result survives restart or reboot when persistence is required.

