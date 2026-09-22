# Failure Lab: cgroup Memory Limit

## Objective

Create one controlled symptom, investigate it using evidence, recover safely, and verify cleanup.

## Prerequisites

A disposable systemd host with `stress-ng` installed.

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
`systemd-run --user --unit=linux-world-memory --property=MemoryMax=64M stress-ng --vm 1 --vm-bytes 256M --timeout 30s || true`
```

Confirm every created path, process, mount, unit, or namespace belongs to this lab.

## 3. Inject the failure

```bash
`systemctl --user status linux-world-memory --no-pager || true`
```

Do not continue if the observed effect extends beyond the lab boundary.

## 4. Observe and diagnose

```bash
`journalctl --user -u linux-world-memory --no-pager`
`systemctl --user show linux-world-memory -p MemoryCurrent -p MemoryMax -p Result`
`cat /proc/pressure/memory`
```

Write down:

1. The exact symptom
2. The affected scope
3. Two possible causes
4. The evidence that distinguishes them
5. The safest recovery step

## 5. Recover

Explain host memory versus cgroup memory. Lower workload memory or set a justified limit, then repeat and verify completion.

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
`systemctl --user stop linux-world-memory 2>/dev/null || true`
`systemctl --user reset-failed linux-world-memory 2>/dev/null || true`
```

Confirm no named lab resource remains. Revert the disposable VM snapshot if cleanup is incomplete.

## Review questions

1. Which evidence was volatile?
2. Which tempting action would have hidden the cause?
3. How would production mitigation differ from lab recovery?
4. What alert would detect this earlier?
5. What engineering control would prevent recurrence?

