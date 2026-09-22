# Failure Lab: Inode Exhaustion on a Loopback Filesystem

## Objective

Create one controlled symptom, investigate it using evidence, recover safely, and verify cleanup.

## Prerequisites

A disposable VM, root access, and ext4 tools.

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
`truncate -s 64M /tmp/linux-world-inodes.img`
`sudo mkfs.ext4 -F -N 256 /tmp/linux-world-inodes.img`
`sudo mkdir -p /mnt/linux-world-inodes`
`sudo mount -o loop /tmp/linux-world-inodes.img /mnt/linux-world-inodes`
```

Confirm every created path, process, mount, unit, or namespace belongs to this lab.

## 3. Inject the failure

```bash
`sudo sh -c 'i=1; while touch /mnt/linux-world-inodes/file-$i 2>/dev/null; do i=$((i+1)); done'`
```

Do not continue if the observed effect extends beyond the lab boundary.

## 4. Observe and diagnose

```bash
`df -hT /mnt/linux-world-inodes`
`df -ih /mnt/linux-world-inodes`
`sudo find /mnt/linux-world-inodes -maxdepth 1 -type f | wc -l`
```

Write down:

1. The exact symptom
2. The affected scope
3. Two possible causes
4. The evidence that distinguishes them
5. The safest recovery step

## 5. Recover

Delete the known lab files in controlled batches, then confirm inode headroom and successful file creation.

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
`sudo find /mnt/linux-world-inodes -maxdepth 1 -type f -name 'file-*' -delete`
`sudo umount /mnt/linux-world-inodes`
`sudo rmdir /mnt/linux-world-inodes`
`rm -f /tmp/linux-world-inodes.img`
```

Confirm no named lab resource remains. Revert the disposable VM snapshot if cleanup is incomplete.

## Review questions

1. Which evidence was volatile?
2. Which tempting action would have hidden the cause?
3. How would production mitigation differ from lab recovery?
4. What alert would detect this earlier?
5. What engineering control would prevent recurrence?

