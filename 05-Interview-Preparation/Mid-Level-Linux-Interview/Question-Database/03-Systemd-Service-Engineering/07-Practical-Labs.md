# Systemd Service Engineering: Practical Labs

Run only in an authorized disposable environment. Each lab requires a before state, implementation, independent verification, controlled failure, recovery and cleanup.

## Lab 1: unit dependency graph

1. Record the current unit dependency graph state and relevant versions.
2. Define a measurable target related to Systemd Service Engineering.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemctl show UNIT`, `systemctl edit UNIT`, `systemd-analyze verify FILE`, `systemd-run --scope`, `systemd-analyze security UNIT`, `journalctl -o json-pretty -u UNIT`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 2: readiness

1. Record the current readiness state and relevant versions.
2. Define a measurable target related to Systemd Service Engineering.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemctl show UNIT`, `systemctl edit UNIT`, `systemd-analyze verify FILE`, `systemd-run --scope`, `systemd-analyze security UNIT`, `journalctl -o json-pretty -u UNIT`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 3: restart policy

1. Record the current restart policy state and relevant versions.
2. Define a measurable target related to Systemd Service Engineering.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemctl show UNIT`, `systemctl edit UNIT`, `systemd-analyze verify FILE`, `systemd-run --scope`, `systemd-analyze security UNIT`, `journalctl -o json-pretty -u UNIT`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 4: resource control

1. Record the current resource control state and relevant versions.
2. Define a measurable target related to Systemd Service Engineering.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemctl show UNIT`, `systemctl edit UNIT`, `systemd-analyze verify FILE`, `systemd-run --scope`, `systemd-analyze security UNIT`, `journalctl -o json-pretty -u UNIT`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 5: credentials

1. Record the current credentials state and relevant versions.
2. Define a measurable target related to Systemd Service Engineering.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemctl show UNIT`, `systemctl edit UNIT`, `systemd-analyze verify FILE`, `systemd-run --scope`, `systemd-analyze security UNIT`, `journalctl -o json-pretty -u UNIT`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 6: sandboxing

1. Record the current sandboxing state and relevant versions.
2. Define a measurable target related to Systemd Service Engineering.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemctl show UNIT`, `systemctl edit UNIT`, `systemd-analyze verify FILE`, `systemd-run --scope`, `systemd-analyze security UNIT`, `journalctl -o json-pretty -u UNIT`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 7: timers and drop-ins

1. Record the current timers and drop-ins state and relevant versions.
2. Define a measurable target related to Systemd Service Engineering.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemctl show UNIT`, `systemctl edit UNIT`, `systemd-analyze verify FILE`, `systemd-run --scope`, `systemd-analyze security UNIT`, `journalctl -o json-pretty -u UNIT`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.
