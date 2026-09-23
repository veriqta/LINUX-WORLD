# CPU Interrupts and Concurrency

This section explains how Linux share processors safely among asynchronous hardware events and concurrent execution.

Core objects include CPU cores, caches, interrupt vectors, IRQ descriptors, deferred work, preemption state, locks and RCU readers.

## Articles

- [CPU Execution Fundamentals](CPU-Execution-Fundamentals.md)
- [Privilege Levels and Execution Modes](Privilege-Levels-and-Execution-Modes.md)
- [CPU Caches and Locality](CPU-Caches-and-Locality.md)
- [Interrupts and Exceptions](Interrupts-and-Exceptions.md)
- [Hardware and Software Interrupts](Hardware-and-Software-Interrupts.md)
- [Interrupt Handlers and Deferred Work](Interrupt-Handlers-and-Deferred-Work.md)
- [IRQ Affinity](IRQ-Affinity.md)
- [Preemption](Preemption.md)
- [Context Switching](Context-Switching.md)
- [Race Conditions](Race-Conditions.md)
- [Atomic Operations](Atomic-Operations.md)
- [Locks Mutexes and Spinlocks](Locks-Mutexes-and-Spinlocks.md)
- [RCU Fundamentals](RCU-Fundamentals.md)
- [CPU and Interrupt Investigation](CPU-and-Interrupt-Investigation.md)

## Completion standard

A learner should be able to draw the principal flow, define the internal objects, observe live state safely, interpret evidence with its limits, and connect the subsystem to an operational symptom.
