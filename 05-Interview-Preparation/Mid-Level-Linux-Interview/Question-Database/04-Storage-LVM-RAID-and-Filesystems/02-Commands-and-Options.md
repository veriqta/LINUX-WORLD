# Storage LVM RAID and Filesystems: Commands and Options

## 1. Explain and safely use `pvs`

**Model answer:** `pvs` reports LVM physical volumes. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 2. Explain and safely use `vgs`

**Model answer:** `vgs` reports LVM volume groups. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 3. Explain and safely use `lvs -a -o +devices`

**Model answer:** `lvs -a -o +devices` reports LVM logical volumes. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 4. Explain and safely use `mdadm --detail DEVICE`

**Model answer:** `mdadm --detail DEVICE` manages Linux software RAID. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 5. Explain and safely use `findmnt --verify`

**Model answer:** `findmnt --verify` queries the mount table and validates fstab. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 6. Explain and safely use `xfs_info MOUNT`

**Model answer:** `xfs_info MOUNT` reports XFS geometry. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 7. Explain and safely use `tune2fs -l DEVICE`

**Model answer:** `tune2fs -l DEVICE` reports or changes ext filesystem parameters. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.
