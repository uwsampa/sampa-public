---
layout: default
title: Grappa
---
Overview
========

Mass-market computer systems are designed to exploit spatial locality
via cache and local memory to achieve high efficiency. Unfortunately,
when processing graphs spatial locality is often difficult, if not
impossible, to express.

As system size grows, edges in a graph distributed across its nodes'
memories become increasingly likely to join vertices that are far apart.
The rate of traversal slows. Consequently, even though parallelism and
hardware resources increase, performance degrades.

Grappa is a latency-tolerant runtime for mass-market clusters that
mitigates this degradation, allowing graph processing to scale up even
in the presence of diminishing locality and increasing latency. Grappa
works by:

-   exploiting fine-grained task parallelism to tolerate the increasing
    latency, and
-   aggregating remote references from disparate tasks to make better
    use of diminishing bandwidth at scale.

The application developer need only express parallelism, not decide when
and how to exploit it.

[More info on Grappa](http://sampa.cs.washington.edu/sampa/)

Current Contributors
====================

[Jacob Nelson](http://homes.cs.washington.edu/~nelson/)

[Brandon Myers](http://homes.cs.washington.edu/~bdmyers/)

[Brandon Holt](http://homes.cs.washington.edu/~bholt/)

[Luis Ceze](http://www.cs.washington.edu/homes/luisceze/)

[Mark Oskin](http://homes.cs.washington.edu/~oskin/)

Preston Briggs

Simon Kahan (PNNL)

Publications
============

[Crunching Large Graphs with Commodity
Processors](http://www.usenix.org/event/hotpar11/tech/final_files/Nelson.pdf)
Jacob Nelson, Brandon Myers, A. H. Hunter, Preston Briggs, Luis Ceze,
Carl Ebeling, Dan Grossman, Simon Kahan, Mark Oskin. Crunching Large
Graphs with Commodity Processors. USENIX HotPar 2011.
