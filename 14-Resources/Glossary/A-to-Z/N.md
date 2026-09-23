# N

Linux and system-administration terms beginning with N.

## Namespace

**Definition:** A kernel isolation mechanism that gives processes separate views of selected resources.

**Why it matters:** Containers combine namespaces with cgroups and other controls.

**Inspect safely:**

```bash
lsns
```

**Common confusion:** A namespace alone does not provide complete security isolation.

## NAT

**Definition:** Network Address Translation, which rewrites network address or port information.

**Why it matters:** It is common in gateways, containers, and cloud networks.

**Inspect safely:**

```bash
nft list ruleset 2>/dev/null
```

**Common confusion:** NAT is not a substitute for firewall policy.

## Nice value

**Definition:** A user-visible input that influences normal scheduler weight.

**Why it matters:** It changes relative CPU scheduling priority for eligible tasks.

**Inspect safely:**

```bash
ps -eo pid,ni,pri,comm
```

**Common confusion:** Lower nice values represent higher scheduling preference and may require privilege.

## NUMA

**Definition:** Non-Uniform Memory Access, where memory access cost depends on CPU and memory location.

**Why it matters:** Placement matters for large or latency-sensitive systems.

**Inspect safely:**

```bash
numactl --hardware 2>/dev/null; lscpu | grep NUMA
```

**Common confusion:** NUMA effects may be hidden on small systems.
