# Boot Process

This section explains how Linux transfer control from firmware to a fully initialized userspace.

Core objects include firmware, boot manager, bootloader, kernel image, command line, initramfs, root filesystem and PID 1.

## Articles

- [Boot Process Overview](Boot-Process-Overview.md)
- [Firmware BIOS and UEFI Boot](Firmware-BIOS-and-UEFI-Boot.md)
- [Partition Tables and the EFI System Partition](Partition-Tables-and-the-EFI-System-Partition.md)
- [Bootloaders and GRUB](Bootloaders-and-GRUB.md)
- [Kernel Image and Boot Parameters](Kernel-Image-and-Boot-Parameters.md)
- [initramfs and Early Userspace](initramfs-and-Early-Userspace.md)
- [Kernel Initialization](Kernel-Initialization.md)
- [Root Filesystem Discovery](Root-Filesystem-Discovery.md)
- [PID 1 and Userspace Initialization](PID-1-and-Userspace-Initialization.md)
- [systemd Boot Transaction](systemd-Boot-Transaction.md)
- [Targets Dependencies and Ordering](Targets-Dependencies-and-Ordering.md)
- [Emergency and Rescue Boot](Emergency-and-Rescue-Boot.md)
- [Boot Performance and Critical Path](Boot-Performance-and-Critical-Path.md)
- [Boot Failure Investigation](Boot-Failure-Investigation.md)

## Completion standard

A learner should be able to draw the principal flow, define the internal objects, observe live state safely, interpret evidence with its limits, and connect the subsystem to an operational symptom.
