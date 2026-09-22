# Failure Lab: SSH Private Key Permission Rejection

## Objective

Create one controlled symptom, investigate it using evidence, recover safely, and verify cleanup.

## Prerequisites

A disposable SSH key. No server is required to observe the client-side warning on supported OpenSSH versions.

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
`mkdir -p /tmp/linux-world-ssh-lab`
`ssh-keygen -q -t ed25519 -N '' -f /tmp/linux-world-ssh-lab/lab_key`
`chmod 0644 /tmp/linux-world-ssh-lab/lab_key`
```

Confirm every created path, process, mount, unit, or namespace belongs to this lab.

## 3. Inject the failure

```bash
`ssh -i /tmp/linux-world-ssh-lab/lab_key -o BatchMode=yes -o ConnectTimeout=2 user@192.0.2.1 || true`
```

Do not continue if the observed effect extends beyond the lab boundary.

## 4. Observe and diagnose

```bash
`stat -c '%a %U:%G %n' /tmp/linux-world-ssh-lab/lab_key`
`ssh -G -i /tmp/linux-world-ssh-lab/lab_key example.invalid | head`
```

Write down:

1. The exact symptom
2. The affected scope
3. Two possible causes
4. The evidence that distinguishes them
5. The safest recovery step

## 5. Recover

Set the private key to mode 600 and explain private-key confidentiality. Do not upload or reuse the lab key.

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
`rm -rf -- /tmp/linux-world-ssh-lab`
```

Confirm no named lab resource remains. Revert the disposable VM snapshot if cleanup is incomplete.

## Review questions

1. Which evidence was volatile?
2. Which tempting action would have hidden the cause?
3. How would production mitigation differ from lab recovery?
4. What alert would detect this earlier?
5. What engineering control would prevent recurrence?

