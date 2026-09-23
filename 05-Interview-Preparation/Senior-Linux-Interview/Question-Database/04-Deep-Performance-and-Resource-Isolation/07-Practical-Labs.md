# Deep Performance and Resource Isolation: Practical Labs

Run only in an authorized disposable environment. Each lab requires a before state, implementation, independent verification, controlled failure, recovery and cleanup.

## Lab 1: scheduler classes

1. Record the current scheduler classes state and relevant versions.
2. Define a measurable target related to Deep Performance and Resource Isolation.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `ps -eLo pid,tid,psr,cls,rtprio,ni,stat,comm`, `taskset -cp PID`, `numastat -p PID`, `memory.stat`, `io.stat`, `perf record`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 2: CPU affinity

1. Record the current CPU affinity state and relevant versions.
2. Define a measurable target related to Deep Performance and Resource Isolation.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `ps -eLo pid,tid,psr,cls,rtprio,ni,stat,comm`, `taskset -cp PID`, `numastat -p PID`, `memory.stat`, `io.stat`, `perf record`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 3: NUMA locality

1. Record the current NUMA locality state and relevant versions.
2. Define a measurable target related to Deep Performance and Resource Isolation.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `ps -eLo pid,tid,psr,cls,rtprio,ni,stat,comm`, `taskset -cp PID`, `numastat -p PID`, `memory.stat`, `io.stat`, `perf record`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 4: huge pages

1. Record the current huge pages state and relevant versions.
2. Define a measurable target related to Deep Performance and Resource Isolation.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `ps -eLo pid,tid,psr,cls,rtprio,ni,stat,comm`, `taskset -cp PID`, `numastat -p PID`, `memory.stat`, `io.stat`, `perf record`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 5: memory reclaim

1. Record the current memory reclaim state and relevant versions.
2. Define a measurable target related to Deep Performance and Resource Isolation.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `ps -eLo pid,tid,psr,cls,rtprio,ni,stat,comm`, `taskset -cp PID`, `numastat -p PID`, `memory.stat`, `io.stat`, `perf record`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 6: IO schedulers

1. Record the current IO schedulers state and relevant versions.
2. Define a measurable target related to Deep Performance and Resource Isolation.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `ps -eLo pid,tid,psr,cls,rtprio,ni,stat,comm`, `taskset -cp PID`, `numastat -p PID`, `memory.stat`, `io.stat`, `perf record`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 7: cgroup v2 and PSI

1. Record the current cgroup v2 and PSI state and relevant versions.
2. Define a measurable target related to Deep Performance and Resource Isolation.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `ps -eLo pid,tid,psr,cls,rtprio,ni,stat,comm`, `taskset -cp PID`, `numastat -p PID`, `memory.stat`, `io.stat`, `perf record`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.
