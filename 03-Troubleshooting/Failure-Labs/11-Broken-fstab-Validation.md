# Failure Lab: Broken fstab Validation Without Reboot

## Objective

Create one controlled symptom, investigate it using evidence, recover safely, and verify cleanup.

## Prerequisites

A lab host. This exercise edits only a temporary copy, never `/etc/fstab`.

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
`cp /etc/fstab /tmp/linux-world-fstab`
`printf '/dev/does-not-exist /mnt/missing ext4 defaults 0 2\n' >> /tmp/linux-world-fstab`
```

Confirm every created path, process, mount, unit, or namespace belongs to this lab.

## 3. Inject the failure

```bash
`findmnt --verify --tab-file /tmp/linux-world-fstab || true`
```

Do not continue if the observed effect extends beyond the lab boundary.

## 4. Observe and diagnose

```bash
`tail -n 3 /tmp/linux-world-fstab`
`findmnt --verify --tab-file /tmp/linux-world-fstab`
```

Write down:

1. The exact symptom
2. The affected scope
3. Two possible causes
4. The evidence that distinguishes them
5. The safest recovery step

## 5. Recover

Remove or correct the intentionally invalid line in the temporary file and verify again. Explain why reboot is not a validation method.

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
`rm -f /tmp/linux-world-fstab`
```

Confirm no named lab resource remains. Revert the disposable VM snapshot if cleanup is incomplete.

## Review questions

1. Which evidence was volatile?
2. Which tempting action would have hidden the cause?
3. How would production mitigation differ from lab recovery?
4. What alert would detect this earlier?
5. What engineering control would prevent recurrence?

