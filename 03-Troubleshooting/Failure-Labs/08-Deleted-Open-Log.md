# Failure Lab: Deleted Log File Held Open

## Objective

Create one controlled symptom, investigate it using evidence, recover safely, and verify cleanup.

## Prerequisites

A disposable host with `lsof`.

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
`mkdir -p /tmp/linux-world-open-log`
`bash -c 'exec 3>>/tmp/linux-world-open-log/app.log; echo $$ > /tmp/linux-world-open-log/pid; while :; do printf "event %s\n" "$(date +%s)" >&3; sleep 1; done' &`
```

Confirm every created path, process, mount, unit, or namespace belongs to this lab.

## 3. Inject the failure

```bash
`rm -f /tmp/linux-world-open-log/app.log`
```

Do not continue if the observed effect extends beyond the lab boundary.

## 4. Observe and diagnose

```bash
`sudo lsof +L1 | grep linux-world-open-log || true`
`du -sh /tmp/linux-world-open-log`
`df -h /tmp`
```

Write down:

1. The exact symptom
2. The affected scope
3. Two possible causes
4. The evidence that distinguishes them
5. The safest recovery step

## 5. Recover

Stop the writer gracefully so the descriptor closes. Explain why deleting the name did not immediately release held blocks.

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
`pid=$(cat /tmp/linux-world-open-log/pid); kill -TERM "$pid" 2>/dev/null || true`
`rm -rf -- /tmp/linux-world-open-log`
```

Confirm no named lab resource remains. Revert the disposable VM snapshot if cleanup is incomplete.

## Review questions

1. Which evidence was volatile?
2. Which tempting action would have hidden the cause?
3. How would production mitigation differ from lab recovery?
4. What alert would detect this earlier?
5. What engineering control would prevent recurrence?

