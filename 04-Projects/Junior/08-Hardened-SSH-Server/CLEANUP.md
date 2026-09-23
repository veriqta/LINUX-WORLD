# Hardened SSH Server: Cleanup

## Run cleanup

~~~bash
bash scripts/cleanup.sh
~~~

## Verify cleanup

~~~bash
bash scripts/verify.sh
printf 'verification_after_cleanup=%s\n' "$?"
~~~

A nonzero verification result may be expected after removal. Read its message and confirm it identifies missing project state rather than unrelated damage.

## Manual audit

Confirm:

- No project process remains.
- No project service, timer, account, group, rule, mount, or listener remains.
- No temporary file remains outside the project directory.
- No unrelated package or configuration was removed.
- Intentionally retained reports are restricted and sanitized.
- The VM can be reverted or deleted safely.

## Cleanup rule

Never replace documented paths with broad variables, globs, the filesystem root, or a home directory in a recursive removal command.

