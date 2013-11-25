---
layout: default
title: Organized Sharing (OSHA)
---
See [Support for Explicit Runtime Concurrency
Errors](Support for Explicit Runtime Concurrency Errors "wikilink").

Easy communication between threads via shared memory is both a blessing
and a curse. It is a blessing because it is very easy to move data and a
curse because it is very easy to make mistakes. This project
investigates a new way to describe the communication pattern of
shared-memory concurrent programs. This investigation includes defining
precise semantics for the meaning of inter-thread communication,
designing a specification language to describe legal inter-thread
communication patterns in a program, implementing tools to check that a
program obeys its specification, and carefully evaluating the
flexibility and usefulness of the specifications in practice. The
initial focus is on dynamic program analysis and its
software-engineering benefits, but the proposed work crosses several
areas, including static analysis, programming-language design, compiler
optimization, and interactions with multicore hardware. This project
will provide new insight into the structure of concurrent programs and
how novel tools, analyses, and languages can assist programmers. The
fundamental research question is how can we build and take advantage of
a programming model that describes the communication structure of
shared-memory programs in terms of the program structure.

**Current contacts:**
[Benjamin Wood](http://www.cs.washington.edu/homes/bpw/), [Adrian
Sampson](http://www.cs.washington.edu/homes/asampson/), [Luis
Ceze](http://www.cs.washington.edu/homes/luisceze), and [Dan
Grossman](http://www.cs.washington.edu/homes/djg).

### Publications

[ Composable Specifications for Structured Shared-Memory
Communication](Media:osha-oopsla2010.pdf "wikilink") (**OOPSLA 2010**).
Benjamin P. Wood, Adrian Sampson, Luis Ceze, Dan Grossman.

[Code-Centric Communication Graphs for Shared-Memory Multithreaded
Programs](ftp://ftp.cs.washington.edu/tr/2009/05/UW-CSE-09-05-02.PDF).
Benjamin P. Wood, Joseph Devietti, Luis Ceze, Dan Grossman. Technical
Report UW-CSE-09-05-02, University of Washington, 2009.

### Code

Get [OshaJava](http://bitbucket.org/bpw/oshajava), the specification
language and dynamic checker for Java described in our OOPSLA 2010
paper.
