# Linux Architecture and Kernel Behavior: Practical Labs

Run only in an authorized disposable environment. Each lab requires a before state, implementation, independent verification, controlled failure, recovery and cleanup.

## Lab 1: system calls

1. Record the current system calls state and relevant versions.
2. Define a measurable target related to Linux Architecture and Kernel Behavior.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `strace -f -ttT -p PID`, `perf top`, `slabtop`, `numastat`, `cat /proc/PID/smaps_rollup`, `bpftool prog list`, `sysctl -a`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 2: scheduler

1. Record the current scheduler state and relevant versions.
2. Define a measurable target related to Linux Architecture and Kernel Behavior.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `strace -f -ttT -p PID`, `perf top`, `slabtop`, `numastat`, `cat /proc/PID/smaps_rollup`, `bpftool prog list`, `sysctl -a`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 3: virtual memory

1. Record the current virtual memory state and relevant versions.
2. Define a measurable target related to Linux Architecture and Kernel Behavior.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `strace -f -ttT -p PID`, `perf top`, `slabtop`, `numastat`, `cat /proc/PID/smaps_rollup`, `bpftool prog list`, `sysctl -a`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 4: page cache

1. Record the current page cache state and relevant versions.
2. Define a measurable target related to Linux Architecture and Kernel Behavior.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `strace -f -ttT -p PID`, `perf top`, `slabtop`, `numastat`, `cat /proc/PID/smaps_rollup`, `bpftool prog list`, `sysctl -a`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 5: interrupts

1. Record the current interrupts state and relevant versions.
2. Define a measurable target related to Linux Architecture and Kernel Behavior.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `strace -f -ttT -p PID`, `perf top`, `slabtop`, `numastat`, `cat /proc/PID/smaps_rollup`, `bpftool prog list`, `sysctl -a`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 6: NUMA

1. Record the current NUMA state and relevant versions.
2. Define a measurable target related to Linux Architecture and Kernel Behavior.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `strace -f -ttT -p PID`, `perf top`, `slabtop`, `numastat`, `cat /proc/PID/smaps_rollup`, `bpftool prog list`, `sysctl -a`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 7: cgroups

1. Record the current cgroups state and relevant versions.
2. Define a measurable target related to Linux Architecture and Kernel Behavior.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `strace -f -ttT -p PID`, `perf top`, `slabtop`, `numastat`, `cat /proc/PID/smaps_rollup`, `bpftool prog list`, `sysctl -a`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 8: namespaces and kernel interfaces

1. Record the current namespaces and kernel interfaces state and relevant versions.
2. Define a measurable target related to Linux Architecture and Kernel Behavior.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `strace -f -ttT -p PID`, `perf top`, `slabtop`, `numastat`, `cat /proc/PID/smaps_rollup`, `bpftool prog list`, `sysctl -a`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.
