# Storage Architecture and Data Integrity: Practical Labs

Run only in an authorized disposable environment. Each lab requires a before state, implementation, independent verification, controlled failure, recovery and cleanup.

## Lab 1: block stack

1. Record the current block stack state and relevant versions.
2. Define a measurable target related to Storage Architecture and Data Integrity.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `lsblk -o NAME,KNAME,TYPE,FSTYPE,MOUNTPOINTS`, `multipath -ll`, `mdadm --detail`, `dmsetup ls --tree`, `iostat -xz`, `smartctl -a`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 2: multipath

1. Record the current multipath state and relevant versions.
2. Define a measurable target related to Storage Architecture and Data Integrity.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `lsblk -o NAME,KNAME,TYPE,FSTYPE,MOUNTPOINTS`, `multipath -ll`, `mdadm --detail`, `dmsetup ls --tree`, `iostat -xz`, `smartctl -a`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 3: RAID

1. Record the current RAID state and relevant versions.
2. Define a measurable target related to Storage Architecture and Data Integrity.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `lsblk -o NAME,KNAME,TYPE,FSTYPE,MOUNTPOINTS`, `multipath -ll`, `mdadm --detail`, `dmsetup ls --tree`, `iostat -xz`, `smartctl -a`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 4: LVM

1. Record the current LVM state and relevant versions.
2. Define a measurable target related to Storage Architecture and Data Integrity.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `lsblk -o NAME,KNAME,TYPE,FSTYPE,MOUNTPOINTS`, `multipath -ll`, `mdadm --detail`, `dmsetup ls --tree`, `iostat -xz`, `smartctl -a`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 5: filesystem journal

1. Record the current filesystem journal state and relevant versions.
2. Define a measurable target related to Storage Architecture and Data Integrity.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `lsblk -o NAME,KNAME,TYPE,FSTYPE,MOUNTPOINTS`, `multipath -ll`, `mdadm --detail`, `dmsetup ls --tree`, `iostat -xz`, `smartctl -a`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 6: write cache

1. Record the current write cache state and relevant versions.
2. Define a measurable target related to Storage Architecture and Data Integrity.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `lsblk -o NAME,KNAME,TYPE,FSTYPE,MOUNTPOINTS`, `multipath -ll`, `mdadm --detail`, `dmsetup ls --tree`, `iostat -xz`, `smartctl -a`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 7: barriers

1. Record the current barriers state and relevant versions.
2. Define a measurable target related to Storage Architecture and Data Integrity.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `lsblk -o NAME,KNAME,TYPE,FSTYPE,MOUNTPOINTS`, `multipath -ll`, `mdadm --detail`, `dmsetup ls --tree`, `iostat -xz`, `smartctl -a`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 8: latency

1. Record the current latency state and relevant versions.
2. Define a measurable target related to Storage Architecture and Data Integrity.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `lsblk -o NAME,KNAME,TYPE,FSTYPE,MOUNTPOINTS`, `multipath -ll`, `mdadm --detail`, `dmsetup ls --tree`, `iostat -xz`, `smartctl -a`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 9: corruption and durability

1. Record the current corruption and durability state and relevant versions.
2. Define a measurable target related to Storage Architecture and Data Integrity.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `lsblk -o NAME,KNAME,TYPE,FSTYPE,MOUNTPOINTS`, `multipath -ll`, `mdadm --detail`, `dmsetup ls --tree`, `iostat -xz`, `smartctl -a`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.
