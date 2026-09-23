# Storage LVM RAID and Filesystems: Practical Labs

Run only in an authorized disposable environment. Each lab requires a before state, implementation, independent verification, controlled failure, recovery and cleanup.

## Lab 1: LVM layers

1. Record the current LVM layers state and relevant versions.
2. Define a measurable target related to Storage LVM RAID and Filesystems.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `pvs`, `vgs`, `lvs -a -o +devices`, `mdadm --detail DEVICE`, `findmnt --verify`, `xfs_info MOUNT`, `tune2fs -l DEVICE`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 2: RAID levels

1. Record the current RAID levels state and relevant versions.
2. Define a measurable target related to Storage LVM RAID and Filesystems.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `pvs`, `vgs`, `lvs -a -o +devices`, `mdadm --detail DEVICE`, `findmnt --verify`, `xfs_info MOUNT`, `tune2fs -l DEVICE`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 3: alignment

1. Record the current alignment state and relevant versions.
2. Define a measurable target related to Storage LVM RAID and Filesystems.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `pvs`, `vgs`, `lvs -a -o +devices`, `mdadm --detail DEVICE`, `findmnt --verify`, `xfs_info MOUNT`, `tune2fs -l DEVICE`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 4: online growth

1. Record the current online growth state and relevant versions.
2. Define a measurable target related to Storage LVM RAID and Filesystems.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `pvs`, `vgs`, `lvs -a -o +devices`, `mdadm --detail DEVICE`, `findmnt --verify`, `xfs_info MOUNT`, `tune2fs -l DEVICE`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 5: snapshots

1. Record the current snapshots state and relevant versions.
2. Define a measurable target related to Storage LVM RAID and Filesystems.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `pvs`, `vgs`, `lvs -a -o +devices`, `mdadm --detail DEVICE`, `findmnt --verify`, `xfs_info MOUNT`, `tune2fs -l DEVICE`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 6: discard

1. Record the current discard state and relevant versions.
2. Define a measurable target related to Storage LVM RAID and Filesystems.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `pvs`, `vgs`, `lvs -a -o +devices`, `mdadm --detail DEVICE`, `findmnt --verify`, `xfs_info MOUNT`, `tune2fs -l DEVICE`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 7: quotas

1. Record the current quotas state and relevant versions.
2. Define a measurable target related to Storage LVM RAID and Filesystems.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `pvs`, `vgs`, `lvs -a -o +devices`, `mdadm --detail DEVICE`, `findmnt --verify`, `xfs_info MOUNT`, `tune2fs -l DEVICE`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 8: fstab and filesystem repair

1. Record the current fstab and filesystem repair state and relevant versions.
2. Define a measurable target related to Storage LVM RAID and Filesystems.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `pvs`, `vgs`, `lvs -a -o +devices`, `mdadm --detail DEVICE`, `findmnt --verify`, `xfs_info MOUNT`, `tune2fs -l DEVICE`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.
