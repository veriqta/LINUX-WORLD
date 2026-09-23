# Highly Available Reverse Proxy: Commands Explained

The implementation uses commands appropriate to proxy configuration, backend services, health checks, TLS planning, logs, failure isolation. For each command, document purpose, options, privilege, input, output, exit status, persistent change, rollback, and portability.

## Inspection pattern

~~~bash
type COMMAND
COMMAND --help
man COMMAND
~~~

## Safe automation pattern

- Validate configuration before use.
- Quote every path and value.
- Use absolute paths in service or scheduled execution.
- Use bounded timeouts and retries.
- Refuse partial or ambiguous state.
- Preserve last known-good configuration.
- Emit machine-usable exit codes.
- Keep secrets out of arguments, logs, and repositories.

Read solutions/complete-solution.sh line by line before comparing it with the learner implementation.

