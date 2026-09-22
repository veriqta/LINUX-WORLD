# Networking: Practical Workflows

These workflows provide a repeatable starting point. Adjust commands to the distribution, environment, change policy, and incident severity.

## Standard workflow

1. Define the failed layer: link, address, route, DNS, transport, TLS, or application.
2. Inspect `ip -br link`, `ip -br addr`, and `ip route`.
3. Test local socket with `ss -lntup`.
4. Test IP reachability, then DNS separately.
5. Test the target port using `nc` or `curl`.
6. Inspect TLS with `openssl s_client` when relevant.
7. Capture packets only with an explicit interface and narrow filter; redact secrets.

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

