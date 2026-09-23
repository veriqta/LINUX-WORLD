# A

Linux and system-administration terms beginning with A.

## ACL

**Definition:** Access Control List, an additional permission mechanism beyond owner, group, and other mode bits.

**Why it matters:** It grants named users or groups targeted access.

**Inspect safely:**

```bash
getfacl PATH
```

**Common confusion:** ACLs do not replace the basic mode bits; the mask can limit effective rights.

## ABI

**Definition:** Application Binary Interface, the binary-level contract between compiled programs, libraries, and the kernel.

**Why it matters:** ABI compatibility affects whether existing binaries continue to run.

**Inspect safely:**

```bash
uname -r; file PROGRAM
```

**Common confusion:** An ABI is not the same as a source-level API.

## ARP

**Definition:** Address Resolution Protocol, used to resolve IPv4 addresses to link-layer addresses on a local network.

**Why it matters:** Neighbor resolution failures can look like routing failures.

**Inspect safely:**

```bash
ip neigh show
```

**Common confusion:** ARP is for IPv4; IPv6 uses Neighbor Discovery.

## Auditd

**Definition:** The userspace service that records events produced by the Linux Audit subsystem.

**Why it matters:** It supports accountability and security investigations.

**Inspect safely:**

```bash
systemctl status auditd; auditctl -s
```

**Common confusion:** Audit logging is not the same as general application logging.
