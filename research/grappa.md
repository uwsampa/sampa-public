---
layout: default
title: Grappa
---
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

[More info on Grappa](http://grappa.io)

### Current Contributors

[Jacob Nelson](http://homes.cs.washington.edu/~nelson/)

[Brandon Myers](http://homes.cs.washington.edu/~bdmyers/)

[Brandon Holt](http://homes.cs.washington.edu/~bholt/)

[Luis Ceze](http://www.cs.washington.edu/homes/luisceze/)

[Mark Oskin](http://homes.cs.washington.edu/~oskin/)

Preston Briggs

Simon Kahan (PNNL)

### Publications

[Grappa: A Latency-Tolerant Runtime for Large-Scale Irregular Applications](http://sampa.cs.washington.edu/papers/grappa-tr-2014-02.pdf).
Jacob Nelson, Brandon Holt, Brandon Myers, Preston Briggs, Luis Ceze, Simon Kahan, and Mark Oskin. Tech report, February 2014

[Flat Combining Synchronized Global Data Structures](http://sampa.cs.washington.edu/papers/holt-pgas13.pdf).
Brandon Holt, Jacob Nelson, Brandon Myers, Preston Briggs, Luis Ceze, Simon Kahan, and Mark Oskin. International Conference on PGAS Programming Models (PGAS), October 2013

[Compiled Plans for In-Memory Path-Counting Queries](http://sampa.cs.washington.edu/papers/myers-imdm13.pdf).
Brandon Myers, Jeremy Hyrkas, Daniel Halperin, and Bill Howe. International Workshop on In-Memory Data Management and Analytics (IMDM w/ VLDB), August 2013

[Do We Need a Crystal Ball for Task Migration?](https://www.usenix.org/system/files/conference/hotpar12/hotpar12-final46.pdf)
Brandon Myers and Brandon Holt. USENIX Workshop on Hot Topics in Parallelism (HOTPAR), June 2012

[Crunching Large Graphs with Commodity
Processors](http://www.usenix.org/event/hotpar11/tech/final_files/Nelson.pdf).
Jacob Nelson, Brandon Myers, A. H. Hunter, Preston Briggs, Luis Ceze, Carl Ebeling, Dan Grossman, Simon Kahan, and Mark Oskin. USENIX Workshop on Hot Topics in Parallelism (HOTPAR), June 2011
