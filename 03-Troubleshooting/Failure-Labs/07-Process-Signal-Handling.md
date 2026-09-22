# Failure Lab: Process Signal Handling

## Objective

Create one controlled symptom, investigate it using evidence, recover safely, and verify cleanup.

## Prerequisites

A non-production shell with Bash.

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
`mkdir -p /tmp/linux-world-signal-lab`
`bash -c 'trap "echo TERM-received >> /tmp/linux-world-signal-lab/events.log; exit 0" TERM; echo $$ > /tmp/linux-world-signal-lab/pid; while :; do sleep 1; done' &`
```

Confirm every created path, process, mount, unit, or namespace belongs to this lab.

## 3. Inject the failure

```bash
`kill -TERM "$(cat /tmp/linux-world-signal-lab/pid)"`
```

Do not continue if the observed effect extends beyond the lab boundary.

## 4. Observe and diagnose

```bash
`cat /tmp/linux-world-signal-lab/events.log`
`ps -p "$(cat /tmp/linux-world-signal-lab/pid)" -o pid,stat,cmd`
```

Write down:

1. The exact symptom
2. The affected scope
3. Two possible causes
4. The evidence that distinguishes them
5. The safest recovery step

## 5. Recover

Confirm graceful handling. Repeat with a process that ignores TERM only in the disposable lab and explain why SIGKILL skips cleanup.

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
`pid=$(cat /tmp/linux-world-signal-lab/pid 2>/dev/null || true); [ -z "$pid" ] || kill -KILL "$pid" 2>/dev/null || true`
`rm -rf -- /tmp/linux-world-signal-lab`
```

Confirm no named lab resource remains. Revert the disposable VM snapshot if cleanup is incomplete.

## Review questions

1. Which evidence was volatile?
2. Which tempting action would have hidden the cause?
3. How would production mitigation differ from lab recovery?
4. What alert would detect this earlier?
5. What engineering control would prevent recurrence?

