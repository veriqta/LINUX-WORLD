# Failure Lab: Block Space Exhaustion on a Loopback Filesystem

## Objective

Create one controlled symptom, investigate it using evidence, recover safely, and verify cleanup.

## Prerequisites

A disposable VM with `sudo`, 128 MB free in `/tmp`, and ext4 tools.

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
`truncate -s 64M /tmp/linux-world-space.img`
`sudo mkfs.ext4 -F /tmp/linux-world-space.img`
`sudo mkdir -p /mnt/linux-world-space`
`sudo mount -o loop /tmp/linux-world-space.img /mnt/linux-world-space`
```

Confirm every created path, process, mount, unit, or namespace belongs to this lab.

## 3. Inject the failure

```bash
`sudo dd if=/dev/zero of=/mnt/linux-world-space/fill.bin bs=1M status=progress || true`
```

Do not continue if the observed effect extends beyond the lab boundary.

## 4. Observe and diagnose

```bash
`df -hT /mnt/linux-world-space`
`df -ih /mnt/linux-world-space`
`sudo du -xhd1 /mnt/linux-world-space`
```

Write down:

1. The exact symptom
2. The affected scope
3. Two possible causes
4. The evidence that distinguishes them
5. The safest recovery step

## 5. Recover

Remove the known filler file and confirm capacity returns. Explain why byte exhaustion differs from inode exhaustion.

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
`sudo rm -f /mnt/linux-world-space/fill.bin`
`sudo umount /mnt/linux-world-space`
`sudo rmdir /mnt/linux-world-space`
`rm -f /tmp/linux-world-space.img`
```

Confirm no named lab resource remains. Revert the disposable VM snapshot if cleanup is incomplete.

## Review questions

1. Which evidence was volatile?
2. Which tempting action would have hidden the cause?
3. How would production mitigation differ from lab recovery?
4. What alert would detect this earlier?
5. What engineering control would prevent recurrence?

