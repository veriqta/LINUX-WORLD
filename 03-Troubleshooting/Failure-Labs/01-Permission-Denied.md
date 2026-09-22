# Failure Lab: Permission Denied in a Lab Directory

## Objective

Create one controlled symptom, investigate it using evidence, recover safely, and verify cleanup.

## Prerequisites

A disposable non-root directory and two local test accounts or one alternate account.

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
`sudo mkdir -p /srv/linux-world-lab/permissions/data`
`sudo sh -c "printf 'lab-data\n' > /srv/linux-world-lab/permissions/data/report.txt"`
`sudo chown -R root:root /srv/linux-world-lab/permissions`
`sudo chmod 700 /srv/linux-world-lab/permissions/data`
```

Confirm every created path, process, mount, unit, or namespace belongs to this lab.

## 3. Inject the failure

```bash
`sudo -u LAB_USER cat /srv/linux-world-lab/permissions/data/report.txt`
```

Do not continue if the observed effect extends beyond the lab boundary.

## 4. Observe and diagnose

```bash
`id LAB_USER`
`namei -l /srv/linux-world-lab/permissions/data/report.txt`
`getfacl /srv/linux-world-lab/permissions/data/report.txt`
```

Write down:

1. The exact symptom
2. The affected scope
3. Two possible causes
4. The evidence that distinguishes them
5. The safest recovery step

## 5. Recover

Create an approved group or ACL for read access, then test as `LAB_USER`. Do not use mode 777.

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
`sudo rm -rf -- /srv/linux-world-lab/permissions`
```

Confirm no named lab resource remains. Revert the disposable VM snapshot if cleanup is incomplete.

## Review questions

1. Which evidence was volatile?
2. Which tempting action would have hidden the cause?
3. How would production mitigation differ from lab recovery?
4. What alert would detect this earlier?
5. What engineering control would prevent recurrence?

