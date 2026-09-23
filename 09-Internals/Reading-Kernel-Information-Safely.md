# Reading Kernel Information Safely

Linux exposes live kernel state through procfs, sysfs, tracefs, netlink and subsystem tools. Some files are snapshots, some counters accumulate, some values are namespace-relative and some reads can be expensive.

## Reading rules

- Record kernel release, architecture, distribution and namespace context.
- Read related fields in one short interval when comparing them.
- Use deltas for cumulative counters.
- Expect races because state can change between reads.
- Do not assume a writable virtual file is harmless.
- Avoid recursively reading all of procfs or sysfs.
- Protect command lines, environment, maps, file descriptors and traces.
- State units, sampling interval and collection overhead.

A value from /proc or /sys is an interface exported by a running kernel. Its meaning must be confirmed against current documentation.
