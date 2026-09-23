# Users, Groups, and Access Management: Prerequisites

## Knowledge

Before starting, understand paths, permissions, standard input and output, exit codes, sudo, text files, and basic shell commands.

## Required tools

bash, shadow-utils or passwd package, sudo, ACL tools

## Privilege

root or sudo is required; use a disposable VM

## Recommended lab

- Ubuntu, Debian, Fedora, Rocky Linux, or RHEL-compatible disposable VM
- At least 1 vCPU, 1 GB RAM, and 5 GB free disk
- Snapshot or rebuild method
- No production credentials or important data
- Console access for networking, SSH, or service changes

## Preflight

~~~bash
date --iso-8601=seconds
hostname
id
uname -a
df -hT .
command -v bash
~~~

Read every script before execution. Replace example values only in the documented configuration file.

