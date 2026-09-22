# Decision Tree: DNS Failure

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
`resolvectl status`
`cat /etc/resolv.conf`
`dig NAME`
`getent hosts NAME`
```

## Branches

1. No resolver configured -> restore the approved resolver source and configuration owner.
2. Resolver unreachable -> test route and port 53 over UDP and TCP.
3. One server disagrees -> compare authoritative data, replication, cache, views, and serials.
4. Only large responses fail -> test TCP fallback, EDNS, fragmentation, and path MTU.
5. System lookup differs from dig -> inspect NSS order, local hosts, search domains, and application resolver behavior.
6. Intermittent failure -> compare resolver instances, negative caching, TTL, load, and packet loss.

## Decision discipline

At each branch:

1. Record the observation.
2. State which hypothesis it supports or rejects.
3. Choose the smallest safe next test.
4. Avoid changing the system until the failed layer is identified.
5. Preserve output needed for escalation.

## Mitigation and verification

Verify intended record types through every resolver path and from the affected application environment.

Verify the result through the same user or workload path that exposed the failure. Check logs, monitoring, dependencies, persistence, security controls, and recurrence.

## Stop and escalate

Stop when the next action could erase data, remove administrative access, weaken security controls, affect several systems, or requires authority not already granted.

