# Failure Lab: TCP Port Conflict

## Objective

Create one controlled symptom, investigate it using evidence, recover safely, and verify cleanup.

## Prerequisites

A disposable host with `nc` and either `python3 -m http.server` or another simple lab server.

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
`mkdir -p /tmp/linux-world-port-lab`
`cd /tmp/linux-world-port-lab`
`python3 -m http.server 18080 >server-one.log 2>&1 &`
`printf '%s\n' "$!" > server-one.pid`
```

Confirm every created path, process, mount, unit, or namespace belongs to this lab.

## 3. Inject the failure

```bash
`python3 -m http.server 18080 >server-two.log 2>&1 || true`
```

Do not continue if the observed effect extends beyond the lab boundary.

## 4. Observe and diagnose

```bash
`ss -lntp 'sport = :18080'`
`cat server-two.log`
`curl -I http://127.0.0.1:18080/`
```

Write down:

1. The exact symptom
2. The affected scope
3. Two possible causes
4. The evidence that distinguishes them
5. The safest recovery step

## 5. Recover

Identify the legitimate listener. Use a different approved port or stop the old process gracefully. Never kill by guessed PID.

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
`kill -TERM "$(cat /tmp/linux-world-port-lab/server-one.pid)" 2>/dev/null || true`
`rm -rf -- /tmp/linux-world-port-lab`
```

Confirm no named lab resource remains. Revert the disposable VM snapshot if cleanup is incomplete.

## Review questions

1. Which evidence was volatile?
2. Which tempting action would have hidden the cause?
3. How would production mitigation differ from lab recovery?
4. What alert would detect this earlier?
5. What engineering control would prevent recurrence?

