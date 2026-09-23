# Boot Kernel and Systemd Diagnostics: Practical Labs

Run only in an authorized disposable environment. Each lab requires a before state, implementation, independent verification, controlled failure, recovery and cleanup.

## Lab 1: firmware

1. Record the current firmware state and relevant versions.
2. Define a measurable target related to Boot Kernel and Systemd Diagnostics.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl -b -1`, `cat /proc/cmdline`, `systemctl --failed`, `systemctl list-dependencies --reverse UNIT`, `systemd-analyze critical-chain`, `lsinitrd or lsinitramfs`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 2: bootloader

1. Record the current bootloader state and relevant versions.
2. Define a measurable target related to Boot Kernel and Systemd Diagnostics.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl -b -1`, `cat /proc/cmdline`, `systemctl --failed`, `systemctl list-dependencies --reverse UNIT`, `systemd-analyze critical-chain`, `lsinitrd or lsinitramfs`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 3: kernel command line

1. Record the current kernel command line state and relevant versions.
2. Define a measurable target related to Boot Kernel and Systemd Diagnostics.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl -b -1`, `cat /proc/cmdline`, `systemctl --failed`, `systemctl list-dependencies --reverse UNIT`, `systemd-analyze critical-chain`, `lsinitrd or lsinitramfs`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 4: initramfs

1. Record the current initramfs state and relevant versions.
2. Define a measurable target related to Boot Kernel and Systemd Diagnostics.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl -b -1`, `cat /proc/cmdline`, `systemctl --failed`, `systemctl list-dependencies --reverse UNIT`, `systemd-analyze critical-chain`, `lsinitrd or lsinitramfs`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 5: PID 1

1. Record the current PID 1 state and relevant versions.
2. Define a measurable target related to Boot Kernel and Systemd Diagnostics.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl -b -1`, `cat /proc/cmdline`, `systemctl --failed`, `systemctl list-dependencies --reverse UNIT`, `systemd-analyze critical-chain`, `lsinitrd or lsinitramfs`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 6: targets

1. Record the current targets state and relevant versions.
2. Define a measurable target related to Boot Kernel and Systemd Diagnostics.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl -b -1`, `cat /proc/cmdline`, `systemctl --failed`, `systemctl list-dependencies --reverse UNIT`, `systemd-analyze critical-chain`, `lsinitrd or lsinitramfs`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 7: dependencies

1. Record the current dependencies state and relevant versions.
2. Define a measurable target related to Boot Kernel and Systemd Diagnostics.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl -b -1`, `cat /proc/cmdline`, `systemctl --failed`, `systemctl list-dependencies --reverse UNIT`, `systemd-analyze critical-chain`, `lsinitrd or lsinitramfs`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 8: ordering and rescue

1. Record the current ordering and rescue state and relevant versions.
2. Define a measurable target related to Boot Kernel and Systemd Diagnostics.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl -b -1`, `cat /proc/cmdline`, `systemctl --failed`, `systemctl list-dependencies --reverse UNIT`, `systemd-analyze critical-chain`, `lsinitrd or lsinitramfs`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.
