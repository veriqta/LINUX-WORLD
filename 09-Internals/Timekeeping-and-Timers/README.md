# Timekeeping and Timers

This section explains how Linux maintain useful clocks, correct wall time and deliver timed events.

Core objects include hardware clock, clocksource, wall clock, monotonic clocks, NTP discipline, timers, timer queues and timer file descriptors.

## Articles

- [Linux Timekeeping Architecture](Linux-Timekeeping-Architecture.md)
- [Hardware Clocks and System Time](Hardware-Clocks-and-System-Time.md)
- [Clock Sources](Clock-Sources.md)
- [Monotonic and Wall Clocks](Monotonic-and-Wall-Clocks.md)
- [Timezones and UTC](Timezones-and-UTC.md)
- [NTP Time Correction](NTP-Time-Correction.md)
- [Kernel Timers](Kernel-Timers.md)
- [High Resolution Timers](High-Resolution-Timers.md)
- [Timerfd and Application Timers](Timerfd-and-Application-Timers.md)
- [Time Namespaces](Time-Namespaces.md)
- [Timekeeping Investigation](Timekeeping-Investigation.md)

## Completion standard

A learner should be able to draw the principal flow, define the internal objects, observe live state safely, interpret evidence with its limits, and connect the subsystem to an operational symptom.
