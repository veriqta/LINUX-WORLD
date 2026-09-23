# I

Linux and system-administration terms beginning with I.

## I/O scheduler

**Definition:** A block-layer policy that orders and dispatches storage requests.

**Why it matters:** Scheduler choice can influence latency and throughput.

**Inspect safely:**

```bash
cat /sys/block/DEVICE/queue/scheduler
```

**Common confusion:** Modern devices and kernels may require different scheduler choices.

## Inode

**Definition:** A filesystem object containing metadata and block references, while names are stored in directories.

**Why it matters:** A filesystem can exhaust inodes before it exhausts data blocks.

**Inspect safely:**

```bash
df -i; stat FILE
```

**Common confusion:** An inode is not a filename.

## Initramfs

**Definition:** A temporary early-userspace filesystem used during boot before the real root filesystem is mounted.

**Why it matters:** Missing drivers or storage logic in initramfs can prevent boot.

**Inspect safely:**

```bash
lsinitramfs /boot/initrd.img-$(uname -r) 2>/dev/null | head
```

**Common confusion:** Initramfs is not the permanent root filesystem.

## IPC

**Definition:** Interprocess communication, a family of mechanisms that processes use to exchange data or synchronize.

**Why it matters:** IPC failures affect services composed of cooperating processes.

**Inspect safely:**

```bash
ipcs; ss -xl
```

**Common confusion:** Pipes, sockets, shared memory, and message queues have different semantics.
