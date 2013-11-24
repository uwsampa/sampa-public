---
layout: default
title: Operating System Implications of Non-Volatile Main Memory Systems
---
The existence of two basic levels of storage (fast/volatile and
slow/non-volatile) has been a long-standing premise of most computer
systems, influencing the design of OS components, including file
systems, virtual memory, scheduling, execution models, and even their
APIs. Emerging resistive memory technologies – such as phase-change
memory (PCM) and memristors – have the potential to provide large, fast,
non-volatile memory systems, changing the assumptions that motivated the
design of current operating systems.

The architecture research community is actively exploring the
implications of fast, cheap non-volatile memory, including error
correction mechanisms and memory hierarchy organization. Software
research has focused primarily on NVRAM-based file systems that maintain
current file system semantics and on programming interfaces for
persistent objects. These efforts are evolutionary: they integrate NVRAM
into existing architectures and programming structures.

Instead, we believe that NVRAM could be revolutionary rather than
evolutionary; this project seeks to explore the ways that cheap
byte-addressable NVRAM could substantially affect OS design. We seek to
answer the question: What if future systems contained only one level of
memory that was persistent and uniform? What if there were no disk
pages, no memory pages, no buffer cache, no page faults, no swapping, no
booting on restart? We are currently designing a single-level storage
system and key-value store focusing on the problems of (1) organization
and structure (2) sharing and protection and (3) new features or
simplifications exposed by this technology.

**Current Contacts:**
[Katelin Bailey](http://www.cs.washington.edu/homes/katelin), [Peter
Hornyack](http://www.cs.washington.edu/homes/pjh), [Luis
Ceze](http://www.cs.washington.edu/homes/luisceze), [Steve
Gribble](http://www.cs.washington.edu/homes/gribble), and [Hank
Levy](http://www.cs.washington.edu/homes/levy).

### Publications

[Operating System Implications of Fast, Cheap, Non-Volatile
Memory](http://www.cs.washington.edu/homes/katelin/papers/pcm-hotos11.pdf)
(**HotOS 2011**), Katelin Bailey, Luis Ceze, Steven D. Gribble, Henry M.
Levy.
