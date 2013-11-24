---
layout: default
title: Support for Explicit Runtime Concurrency Errors
---
The aspect of shared-memory multithreading that induces the most errors
in programs is that shared memory is \*implicitly\* shared and that code
running in separate threads may \*implicitly\* communicate as a result.
Maintaining safe and correct sharing and communication requires explicit
synchronization by the programmer; this job is made exceedingly
difficult by the fact that sharing and communication are implicit, and
programmers have no direct feedback mechanism to determine when it
occurs or when their synchronization is sufficient. Some behaviors even
carry weak or undefined semantics in modern memory consistency models.
Previous research has offered debugging tools to report problematic
concurrency behaviors, but we believe that the execution model itself
should make these behaviors explicit.

More concretely, this project posits that shared-memory multithreaded
concurrency errors should be precisely detected and fail-stop at runtime
in the way that segmentation faults or division-by-zero errors are
today. Making these errors explicit and exceptional allows programmers
to make stronger assumptions about the semantics of their programs and
rely on the execution model to raise an error at runtime if these
assumptions are violated. Embedding such error-checking in the execution
model also allows better debugging of deployed applications: explicit
concurrency errors avoid mysterious and unpredictable program behavior
associated with silent errors.

Our work focuses on a range of concurrency errors, including data races
and sequential consistency violations, which are easy to define
independent of application semantics, as well as more subtle
application-specific invariants, such as which code is allowed to
perform inter-thread communication. We aim to generalize some support
for concurrency exceptions throughout the system stack. Specifically, we
are investigating the semantics and specification of concurrency
exceptions at the language level, their implications in the compiler and
runtime systems, how they should be delivered, and how they are enabled
by efficient architecture support.

**Current contacts:**
[Brandon Lucia](http://abstract.cs.washington.edu/~blucia0a/index.cgi),
[Ben Wood](http://www.cs.washington.edu/homes/bpw), [Luis
Ceze](http://www.cs.washington.edu/homes/luisceze), [Dan
Grossman](http://www.cs.washington.edu/homes/djg).

### Publications

[RADISH: Always-On Sound and Complete Race Detection in Software and
Hardware](http://homes.cs.washington.edu/~luisceze/publications/devietti.radish.isca.2012.pdf).
Joseph Devietti, Benjamin P. Wood, Karin Strauss, Luis Ceze, Dan
Grossman, Shaz Qadeer. **ISCA 2012**

[Data-Race Exceptions Have Benefits Beyond the Memory
Model](http://www.cs.washington.edu/homes/djg/papers/mspc2011.pdf).
Benjamin P. Wood, Luis Ceze, Dan Grossman. **MSPC 2011**

[ Composable Specifications for Structured Shared-Memory
Communication](Media:osha-oopsla2010.pdf "wikilink"). Benjamin P. Wood,
Adrian Sampson, Luis Ceze, Dan Grossman. **OOPSLA 2010**

[Conflict Exceptions: Providing Simple Parallel Language Semantics with
Precise Hardware
Exceptions](http://homes.cs.washington.edu/~luisceze/publications/isca173-lucia.pdf).
Brandon Lucia, Luis Ceze, Karin Strauss, Shaz Qadeer, Hans Boehm. **ISCA
2010**

[The Case for System Support for Concurrency
Exceptions](http://www.cs.washington.edu/homes/luisceze/pubs/hotpar09.pdf).
Luis Ceze, Joseph Devietti, Brandon Lucia and Shaz Qadeer. **HotPar
2009**

[Code-Centric Communication Graphs for Shared-Memory Multithreaded
Programs](ftp://ftp.cs.washington.edu/tr/2009/05/UW-CSE-09-05-02.PDF).
Benjamin P. Wood, Joseph Devietti, Luis Ceze, Dan Grossman. Technical
Report UW-CSE-09-05-02, University of Washington, 2009.
