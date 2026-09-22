# Frequently Asked Questions

## Is Linux World suitable for a complete beginner?

Yes. The Beginner-to-Advanced course begins with Linux foundations and builds progressively toward administration, troubleshooting, scripting, automation, security, and a complete final project.

Read [Prerequisites](Prerequisites.md), prepare a lab, and begin with Part 1.

## Where should a new reader begin?

Follow this order:

1. Prerequisites
2. Lab Environment Setup
3. Lab Safety
4. How to Use Linux World
5. Choose Your Learning Path
6. Progress Tracker
7. Beginner-to-Advanced Part 1

## Which Linux distribution should I use?

Ubuntu Server LTS is the primary learning environment. It provides a consistent baseline for beginners.

The underlying Linux concepts transfer to other distributions. Where important differences exist, consult the distribution-specific notes. Repeating selected exercises on Rocky Linux later can provide useful experience with a RHEL-compatible system.

## Do I need to install Linux directly on my computer?

No. A virtual machine is recommended because it is isolated, recoverable, and suitable for most lessons.

WSL, cloud virtual machines, spare computers, and containers can also support specific types of practice. Read [Lab Environment Setup](Lab-Environment-Setup.md).

## Can I use Windows Subsystem for Linux?

Yes, for many command-line, filesystem, package, text-processing, scripting, and networking exercises.

Use a full virtual machine when practising boot behavior, storage devices, low-level networking, recovery, or other features that differ from a conventional Linux server.

## Can I use a Mac?

Yes. Run an Ubuntu Server virtual machine using a virtualization platform compatible with the Mac and its processor architecture.

The macOS terminal is Unix-like, but macOS is not Linux. Commands, options, package management, filesystems, services, and system behavior can differ. Use the Linux lab for Linux World exercises.

## Can I use a cloud server?

Yes, especially for SSH and remote-administration practice. Cloud servers can create charges and may be exposed to the internet.

Set budgets, restrict network access, use SSH keys, protect credentials, and remove unused resources. Beginners should understand basic access control and firewall concepts before exposing a server publicly.

## Must the 20 parts be completed in order?

Complete beginners should follow the order. Later parts rely on concepts introduced earlier.

Experienced readers may use assessments and exercises to identify gaps, but should review any topic they cannot explain or complete independently.

## How long will the Beginner-to-Advanced course take?

There is no fixed duration. Completion depends on previous experience, study frequency, practice depth, and troubleshooting time.

The goal is verified ability, not speed.

## Should commands be memorized?

Memorize frequently used command patterns through repeated practice, not forced repetition alone.

More importantly, understand:

- What the command does
- How to find its documentation
- What its options mean
- What output to expect
- How to verify its effect
- What risks it creates

## Should commands be copied and pasted?

Type commands manually while learning. This slows the process enough to notice syntax, paths, options, quoting, and mistakes.

If a long command must be copied, read and understand it before execution.

## Why did my output differ from the guide?

Output may vary because of distribution, release, package version, shell, privileges, hardware, locale, network, or configuration.

Check the environment, read the error, compare versions, consult official documentation, and avoid forcing the next step until the difference is understood.

## Why does a command say permission denied?

Possible causes include:

- The user does not own the file.
- Permission bits do not allow the requested operation.
- A parent directory blocks access.
- The filesystem is mounted read-only.
- An access-control list applies.
- SELinux or AppArmor applies.
- The command targets a protected resource.

Do not automatically add `sudo`. Investigate the cause first.

## What if the virtual machine breaks?

Use a previously created snapshot or rebuild the lab. Breaking a disposable lab and recovering it is a useful part of learning.

Document the symptom, root cause, recovery method, and prevention.

## Are snapshots the same as backups?

No. Snapshots are convenient recovery points tied to a virtualization or storage system. They may fail with the original system or consume increasing storage.

A backup is a separate recoverable copy. Important data should have tested backups.

## Can these exercises be performed on a production server?

No. Use a disposable lab unless a procedure has been independently reviewed, tested, authorized, and approved under the organization's change process.

Learning examples are not automatic production change instructions.

## Is programming knowledge required?

No. Part 17 introduces Bash scripting from the beginning. General programming experience may help, but it is not required.

## Is Git required?

Git is useful for downloading, updating, and tracking repository content, but it is not required to begin the first Linux lessons.

## Does Linux World prepare readers for DevOps and cloud engineering?

Yes. Linux is a core foundation for servers, cloud platforms, containers, Kubernetes, automation, CI/CD, platform engineering, and SRE.

The Beginner-to-Advanced course establishes the Linux knowledge needed before deeper DevOps and cloud specialization.

## Does Linux World provide interview preparation?

Yes. Separate Junior, Mid-Level, and Senior Linux Interview collections assess commands, administration, troubleshooting, internals, security, performance, reliability, and production judgment.

## Where are projects located?

Part 20 is the capstone for the complete Beginner-to-Advanced course. Additional Junior, Mid-Level, and Senior projects are provided in the Projects collection.

## What is the difference between a lab and a project?

A lab focuses on one skill or controlled problem and is usually completed in one sitting. A project combines several skills into a complete working result with documentation, verification, troubleshooting, and cleanup.

## How should errors be reported?

Use the repository's issue process for documentation errors, broken links, incorrect commands, or unclear instructions. Include the affected page, Linux distribution and version, reproduction steps, and sanitized output.

Do not publish credentials, personal information, internal system details, or security vulnerabilities in a public issue.

## Can Linux World content be copied, republished, translated, or used in a course?

Not without express written permission from VERIQTA. Public availability does not grant permission to reproduce, modify, distribute, translate, teach from, or commercially use the content.

Read the repository [License](../LICENSE) and [Copyright Notice](../NOTICE.md).

## Where can permission be requested?

Contact the repository owner through the official [VERIQTA GitHub account](https://github.com/veriqta). Permission is valid only when provided expressly in writing.

## What should I do next?

If the lab is ready and the safety guidance has been reviewed, begin [Part 1: Linux Foundations and Getting Started](../01-Beginner-to-Advanced/01-Linux-Foundations-and-Getting-Started.md).
