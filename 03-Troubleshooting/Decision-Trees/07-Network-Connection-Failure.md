# Decision Tree: Network Connection Failure

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
`ip -br link`
`ip -br addr`
`ip route get IP`
`ss -lntup`
`nc -vz HOST PORT`
```

## Branches

1. Link down -> inspect interface, virtual network, cable, driver, or administrative state.
2. No address -> inspect DHCP or static configuration and duplicate-address evidence.
3. No route -> correct route selection, policy routing, gateway, or namespace.
4. Timeout -> inspect filters, return path, upstream load balancer, and server saturation.
5. Refused -> nothing accepts the port or a policy actively rejects it.
6. Handshake succeeds, request fails -> continue with TLS and application-layer evidence.

## Decision discipline

At each branch:

1. Record the observation.
2. State which hypothesis it supports or rejects.
3. Choose the smallest safe next test.
4. Avoid changing the system until the failed layer is identified.
5. Preserve output needed for escalation.

## Mitigation and verification

Verify the complete application transaction from the affected source, not only ping or TCP connection.

Verify the result through the same user or workload path that exposed the failure. Check logs, monitoring, dependencies, persistence, security controls, and recurrence.

## Stop and escalate

Stop when the next action could erase data, remove administrative access, weaken security controls, affect several systems, or requires authority not already granted.

