# Decision Tree: SSH Unavailable

## Entry condition

Use this tree when the primary observable symptom matches the title. If security compromise or data corruption is possible, follow the incident process before routine troubleshooting.

## Establish context

```bash
date --iso-8601=seconds
hostname
id
uptime
```

Record impact, affected scope, first occurrence, last known good, and recent changes.

## Start with

```bash
Client `ssh -vvv`
server console
`ss -lntp`
`systemctl status sshd`
`sshd -t`
```

## Branches

1. Timeout before connection -> inspect route, firewall, security group, NAT, listener address, and return path.
2. Connection refused -> confirm sshd is listening on the expected address and port.
3. Host key warning -> verify whether the host was legitimately rebuilt; do not bypass an unexplained change.
4. Authentication rejected -> inspect key, account, method policy, PAM, and authentication logs.
5. Session closes after login -> inspect shell, home, profile scripts, command restrictions, and resource limits.
6. Only one source fails -> compare source policy, routing, bans, and address family.

## Decision discipline

At each branch:

1. Record the observation.
2. State which hypothesis it supports or rejects.
3. Choose the smallest safe next test.
4. Avoid changing the system until the failed layer is identified.
5. Preserve output needed for escalation.

## Mitigation and verification

Keep a working session open, validate configuration before reload, test a second session, and verify prohibited access remains blocked.

Verify the result through the same user or workload path that exposed the failure. Check logs, monitoring, dependencies, persistence, security controls, and recurrence.

## Stop and escalate

Stop when the next action could erase data, remove administrative access, weaken security controls, affect several systems, or requires authority not already granted.

