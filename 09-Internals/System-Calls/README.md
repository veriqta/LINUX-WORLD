# System Calls

This section explains how Linux provide controlled entry points from userspace into kernel services.

Core objects include ABI registers, syscall numbers, arguments, entry stubs, kernel handlers, return values, errno and seccomp filters.

## Articles

- [System Call Architecture](System-Call-Architecture.md)
- [User to Kernel Transitions](User-to-Kernel-Transitions.md)
- [System Call ABI](System-Call-ABI.md)
- [System Call Numbers and Arguments](System-Call-Numbers-and-Arguments.md)
- [Common Process System Calls](Common-Process-System-Calls.md)
- [Common File System Calls](Common-File-System-Calls.md)
- [Common Memory System Calls](Common-Memory-System-Calls.md)
- [Common Network System Calls](Common-Network-System-Calls.md)
- [Blocking and Nonblocking Calls](Blocking-and-Nonblocking-Calls.md)
- [Error Numbers and Return Values](Error-Numbers-and-Return-Values.md)
- [vDSO and Avoiding System Calls](vDSO-and-Avoiding-System-Calls.md)
- [seccomp and System Call Filtering](seccomp-and-System-Call-Filtering.md)
- [strace and System Call Observation](strace-and-System-Call-Observation.md)
- [System Call Investigation](System-Call-Investigation.md)

## Completion standard

A learner should be able to draw the principal flow, define the internal objects, observe live state safely, interpret evidence with its limits, and connect the subsystem to an operational symptom.
