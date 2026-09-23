# IO and Storage Stack

This section explains how Linux move data between applications, caches, block layers, mappings, drivers and durable media.

Core objects include file pages, dirty state, bios, requests, queues, schedulers, device mapper targets, block devices and caches.

## Articles

- [Application to Storage Path](Application-to-Storage-Path.md)
- [Buffered and Direct IO](Buffered-and-Direct-IO.md)
- [Read Write and Memory Mapped IO](Read-Write-and-Memory-Mapped-IO.md)
- [Page Cache and Writeback](Page-Cache-and-Writeback.md)
- [Dirty Pages and Flushing](Dirty-Pages-and-Flushing.md)
- [Block Layer](Block-Layer.md)
- [IO Requests and Queues](IO-Requests-and-Queues.md)
- [IO Schedulers](IO-Schedulers.md)
- [Device Mapper](Device-Mapper.md)
- [LVM Internals](LVM-Internals.md)
- [Software RAID Internals](Software-RAID-Internals.md)
- [Device Caching and Flushes](Device-Caching-and-Flushes.md)
- [Storage Latency and Queueing](Storage-Latency-and-Queueing.md)
- [IO Accounting](IO-Accounting.md)
- [Data Integrity and Durability](Data-Integrity-and-Durability.md)
- [Storage Stack Investigation](Storage-Stack-Investigation.md)

## Completion standard

A learner should be able to draw the principal flow, define the internal objects, observe live state safely, interpret evidence with its limits, and connect the subsystem to an operational symptom.
