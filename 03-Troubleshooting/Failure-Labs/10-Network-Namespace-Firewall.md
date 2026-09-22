# Failure Lab: Firewall Drop in an Isolated Network Namespace

## Objective

Create one controlled symptom, investigate it using evidence, recover safely, and verify cleanup.

## Prerequisites

A disposable VM with root access, `ip`, and nftables. This lab uses isolated namespaces.

Read [Lab Safety](Lab-Safety.md) first.

## Learning outcomes

- Recognize the symptom without relying on the answer.
- Identify the first failed layer.
- Use read-only evidence before changing state.
- Explain why the recovery works.
- Verify both service recovery and lab cleanup.

## 1. Baseline

```bash
date --iso-8601=seconds
hostname
id
uptime
```

Record normal resource and service state relevant to this lab.

## 2. Prepare the lab

```bash
`sudo ip netns add lw-client`
`sudo ip netns add lw-server`
`sudo ip link add lw-c type veth peer name lw-s`
`sudo ip link set lw-c netns lw-client`
`sudo ip link set lw-s netns lw-server`
`sudo ip -n lw-client addr add 10.200.0.1/24 dev lw-c`
`sudo ip -n lw-server addr add 10.200.0.2/24 dev lw-s`
`sudo ip -n lw-client link set lo up`
`sudo ip -n lw-server link set lo up`
`sudo ip -n lw-client link set lw-c up`
`sudo ip -n lw-server link set lw-s up`
```

Confirm every created path, process, mount, unit, or namespace belongs to this lab.

## 3. Inject the failure

```bash
`sudo ip netns exec lw-server nft add table inet filter`
`sudo ip netns exec lw-server nft 'add chain inet filter input { type filter hook input priority 0; policy drop; }'`
`sudo ip netns exec lw-client ping -c 2 10.200.0.2 || true`
```

Do not continue if the observed effect extends beyond the lab boundary.

## 4. Observe and diagnose

```bash
`sudo ip netns exec lw-server nft list ruleset`
`sudo ip netns exec lw-client ip route`
`sudo ip netns exec lw-server ip -s link`
```

Write down:

1. The exact symptom
2. The affected scope
3. Two possible causes
4. The evidence that distinguishes them
5. The safest recovery step

## 5. Recover

Add a narrow ICMP accept rule in the namespace, verify counters and connectivity, then remove the namespaces.

Repeat the original failing operation and confirm the expected result.

## 6. Verify

- The original symptom is gone.
- No unrelated access or configuration changed.
- Logs contain the expected failure and recovery sequence.
- Resource usage returned to baseline.
- Monitoring would have detected the condition.
- The recovery remains valid for the intended lifecycle.

## 7. Cleanup

```bash
`sudo ip netns del lw-client 2>/dev/null || true`
`sudo ip netns del lw-server 2>/dev/null || true`
```

Confirm no named lab resource remains. Revert the disposable VM snapshot if cleanup is incomplete.

## Review questions

1. Which evidence was volatile?
2. Which tempting action would have hidden the cause?
3. How would production mitigation differ from lab recovery?
4. What alert would detect this earlier?
5. What engineering control would prevent recurrence?

