---
layout: default
title: Deterministic MultiProcessing (DMP)
---
One of the main reasons it is difficult to write multithreaded code is
that current shared-memory multicore systems can execute code
nondeterministically. Each time a multithreaded application runs, it can
produce a different output even if supplied with the same input. This
frustrates debugging efforts and limits the ability to properly test
multithreaded code, becoming a major obstacle to widespread adoption of
parallel programming.

Past efforts to address the problem of nondeterminism have primarily
focused on deterministic replay and deterministic parallel programming
models. The former is useful only for debugging, while the latter is
typically domain-specific. In contrast, this project envisions that
shared memory multiprocessor systems should always behave
deterministically when executing *any* shared-memory parallel program.
The core idea is to make inter-thread communication appear to be fully
deterministic by guaranteeing equivalence to a deterministic serialized
execution. This can be made efficient by employing speculation and
exploiting properties of memory sharing behavior of applications.

This project includes: (1) developing an architecture for efficient
deterministic multiprocessing, from mechanisms to the hardware/software
interface, (2) addressing system issues, e.g., executing an operating
system in deterministic multiprocessors, and (3) leveraging the
deterministic multiprocessing hardware/software interface to create
tools for debugging, testing and bug avoidance.

**Current contacts:**
 [Luis Ceze](http://www.cs.washington.edu/homes/luisceze), [Dan
Grossman](http://www.cs.washington.edu/homes/djg), and [Tom
Bergan](http://www.cs.washington.edu/homes/tbergan/).

### Publications

[Input-Covering Schedules for Multithreaded
Programs](http://www.cs.washington.edu/homes/tbergan/papers/wodet13-inputcovsched.pdf)
(**WoDet 2013**), Tom Bergan, Luis Ceze, and Dan Grossman.

[DDOS: Taming Nondeterminism in Distributed
Systems](http://www.cs.washington.edu/homes/tbergan/papers/asplos13-ddos.pdf)
(**ASPLOS 2013**), Nick Hunt, Tom Bergan, Luis Ceze, and Steve Gribble.

[The Case For Merging Execution- and Language-level Determinism with
MELD](http://www.cs.umass.edu/~emery/wodet3/wodet3-paper3.pdf) (**WoDet
2012**), Joseph Devietti, Dan Grossman, and Luis Ceze.

[The Deterministic Execution Hammer: How Well Does it Actually Pound
Nails?](http://www.cs.washington.edu/homes/tbergan/papers/wodet11-hammer.pdf)
(**WoDet 2011**), Tom Bergan, Joseph Devietti, Nicholas Hunt, and Luis
Ceze.

[RCDC: A Relaxed-Consistency Deterministic
Computer](http://www.cs.washington.edu/homes/devietti/papers/devietti.rcdc.asplos.2011.pdf)
(**ASPLOS 2011**), Joseph Devietti, Jacob Nelson, Tom Bergan, Luis Ceze,
and Dan Grossman.

[Deterministic Process Groups in
dOS](http://www.cs.washington.edu/homes/tbergan/papers/osdi10-dos.pdf)
(**OSDI 2010**), Tom Bergan, Nick Hunt, Luis Ceze, and Steve Gribble.

[CoreDet: A Compiler and Runtime System for Deterministic Multithreaded
Execution](http://www.cs.washington.edu/homes/tbergan/papers/asplos10-coredet.pdf)
(**ASPLOS 2010**), Tom Bergan, Owen Anderson, Joseph Devietti, Luis
Ceze, and Dan Grossman.

[DMP:Deterministic Shared Memory
Multiprocessing](http://www.cs.washington.edu/homes/luisceze/publications/asplos004-devietti.pdf)
(**ASPLOS 2009**), Joseph Devietti, Brandon Lucia, Luis Ceze, and Mark
Oskin. (Selected for *IEEE Micro Top Picks*. An earlier version appeared
in SHCMP'08 held with ISCA'08).

### dOS+DDOS Source Code

The source code for dOS (OSDI 2010) and DDOS (ASPLOS 2013) is [available
here](http://www.cs.washington.edu/homes/tbergan/code/ddos-src.tar.gz).
The source is not currently maintained.

### RCDC Simulator Source Code and Data

The source code for the RCDC simulator is [available
here](http://www.cs.washington.edu/homes/devietti/code/rcdcsim-v1.tar.gz).
A README describing how to use the code, and its overall design, is
[here](http://linuxforlovers.wordpress.com/2011/01/27/rcdc-simulator-release-notes/).

We have also posted
[interactive versions of the graphs](http://public.tableausoftware.com/views/RCDCARelaxedConsistencyDeterministicComputer/Fig7OverallPerformance>?:embed=yes&:toolbar=yes&:tabs=yes) from the paper.

### CoreDet Source Code

Our lawyers want you follow this link to download the CoreDet source
code:
[link](http://depts.washington.edu/uwc4c/express-licenses/assets/coredet/).
Source code is available for the original CoreDet paper (ASPLOS 2010),
as well as the updated version of CoreDet used in the RCDC paper (ASPLOS
2011).
