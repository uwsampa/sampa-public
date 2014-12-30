---
layout: default
title: Concurrency Exceptions
---
We argue that concurrency errors should be fail-stop. We want to put
concurrency errors in the same category as segmentation fault and
division-by-zero. This would make non-determinism in multithreaded
execution be much more manageable. Concurrency exceptions would improve
the debugging process during development and make crashes due to
concurrency errors that happen in the field be more descriptive. Our
goal with this project is to justify our position, propose a general
approach to concurrency exceptions and discuss system requirements and
implications. Specifically, we are investigating the semantics of
concurrency exceptions at the language level, their implications in the
compiler and runtime systems, how they should be delivered and finally
how all they are enabled by efficient architecture support. In the same
context, we are exploring the effects of weakening the memory model in
software reliability.

**Current contacts:**
[Brandon Lucia](http://abstract.cs.washington.edu/~blucia0a/index.cgi),
[Ben Wood](http://www.cs.washington.edu/homes/bpw), [Luis
Ceze](http://www.cs.washington.edu/homes/luisceze), [Dan
Grossman](http://www.cs.washington.edu/homes/djg).

### Publications

Data-Race Exceptions Have Benefits Beyond the Memory Model. Benjamin P.
Wood, Luis Ceze, Dan Grossman. **MSPC 2011**.

Conflict Exceptions: Providing Simple Parallel Language Semantics with
Precise Hardware Exceptions (**ISCA 2010**), Brandon Lucia, Luis Ceze,
Karin Strauss, Shaz Qadeer, Hans Boehm

[The Case for System Support for Concurrency
Exceptions](http://www.cs.washington.edu/homes/luisceze/pubs/hotpar09.pdf)
(**USENIX HotPar 2009**), Luis Ceze, Joseph Devietti, Brandon Lucia and
Shaz Qadeer.
