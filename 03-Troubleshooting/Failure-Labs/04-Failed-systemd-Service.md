# Failure Lab: Failed systemd Service

## Objective

Create one controlled symptom, investigate it using evidence, recover safely, and verify cleanup.

## Prerequisites

A disposable systemd-based VM with root access.

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
`sudo sh -c "printf '[Unit]\nDescription=Linux World Failure Lab\n[Service]\nType=oneshot\nExecStart=/bin/sh -c \\\"echo lab-start; exit 1\\\"\n' > /etc/systemd/system/linux-world-fail.service"`
`sudo systemctl daemon-reload`
```

Confirm every created path, process, mount, unit, or namespace belongs to this lab.

## 3. Inject the failure

```bash
`sudo systemctl start linux-world-fail.service || true`
```

Do not continue if the observed effect extends beyond the lab boundary.

## 4. Observe and diagnose

```bash
`systemctl status linux-world-fail.service --no-pager -l`
`journalctl -u linux-world-fail.service -b --no-pager`
`systemctl cat linux-world-fail.service`
```

Write down:

1. The exact symptom
2. The affected scope
3. Two possible causes
4. The evidence that distinguishes them
5. The safest recovery step

## 5. Recover

Change the test exit to zero, reload unit definitions, reset failed state, start again, and verify the journal.

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
`sudo systemctl disable --now linux-world-fail.service 2>/dev/null || true`
`sudo rm -f /etc/systemd/system/linux-world-fail.service`
`sudo systemctl daemon-reload`
`sudo systemctl reset-failed`
```

Confirm no named lab resource remains. Revert the disposable VM snapshot if cleanup is incomplete.

## Review questions

1. Which evidence was volatile?
2. Which tempting action would have hidden the cause?
3. How would production mitigation differ from lab recovery?
4. What alert would detect this earlier?
5. What engineering control would prevent recurrence?

