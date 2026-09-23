# Systemd Services and Boot: Practical Labs

Run only in an authorized disposable environment. Each lab requires a before state, implementation, independent verification, controlled failure, recovery and cleanup.

## Lab 1: unit

1. Record the current unit state and relevant versions.
2. Define a measurable target related to Systemd Services and Boot.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemctl status UNIT`, `systemctl is-enabled UNIT`, `systemctl cat UNIT`, `systemctl list-dependencies UNIT`, `journalctl -u UNIT -b`, `systemd-analyze blame`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 2: target

1. Record the current target state and relevant versions.
2. Define a measurable target related to Systemd Services and Boot.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemctl status UNIT`, `systemctl is-enabled UNIT`, `systemctl cat UNIT`, `systemctl list-dependencies UNIT`, `journalctl -u UNIT -b`, `systemd-analyze blame`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 3: dependency

1. Record the current dependency state and relevant versions.
2. Define a measurable target related to Systemd Services and Boot.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemctl status UNIT`, `systemctl is-enabled UNIT`, `systemctl cat UNIT`, `systemctl list-dependencies UNIT`, `journalctl -u UNIT -b`, `systemd-analyze blame`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 4: enable versus start

1. Record the current enable versus start state and relevant versions.
2. Define a measurable target related to Systemd Services and Boot.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemctl status UNIT`, `systemctl is-enabled UNIT`, `systemctl cat UNIT`, `systemctl list-dependencies UNIT`, `journalctl -u UNIT -b`, `systemd-analyze blame`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 5: daemon reload

1. Record the current daemon reload state and relevant versions.
2. Define a measurable target related to Systemd Services and Boot.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemctl status UNIT`, `systemctl is-enabled UNIT`, `systemctl cat UNIT`, `systemctl list-dependencies UNIT`, `journalctl -u UNIT -b`, `systemd-analyze blame`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 6: journal

1. Record the current journal state and relevant versions.
2. Define a measurable target related to Systemd Services and Boot.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemctl status UNIT`, `systemctl is-enabled UNIT`, `systemctl cat UNIT`, `systemctl list-dependencies UNIT`, `journalctl -u UNIT -b`, `systemd-analyze blame`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 7: failed state and boot target

1. Record the current failed state and boot target state and relevant versions.
2. Define a measurable target related to Systemd Services and Boot.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemctl status UNIT`, `systemctl is-enabled UNIT`, `systemctl cat UNIT`, `systemctl list-dependencies UNIT`, `journalctl -u UNIT -b`, `systemd-analyze blame`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.
