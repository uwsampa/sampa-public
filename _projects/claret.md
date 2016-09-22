---
title: Claret
image: /img/claret-icon.jpg
description: |
  Using Abstract Data Types to expose application-level semantics in datastores
people:
  - bholt
  - iyzhang
  - drkp
  - luisceze
  - oskin

layout: project
status: inactive
---

<img src="{{site.base}}/img/claret.jpg" class="pull-right" style="width:150px;margin:15px"/>

Interactive distributed applications like Twitter or eBay are difficult to scale because of the high degree of writes or update operations. The highly skewed access patterns exhibited by real-world systems lead to high contention in datastores, causing periods of diminished service or even catastrophic failure. There is often sufficient concurrency in these applications to scale them without resorting to weaker consistency models, but traditional concurrency control mechanisms operating on low level operations cannot detect it.

*Claret* is a Redis-like data structure store which allows high-level application semantics to be communicated through *abstract data types* (ADTs). Using this abstraction, Claret is able to avoid unnecessary conflicts and reduce communication, while programmers continue to implement applications easily using whatever data structures are natural for their use case.
Claret is the first datastore to use ADTs to improve performance of distributed transactions; optimizations include transaction boosting, phasing, and operation combining.
On a transaction microbenchmark, Claret's ADT optimizations increase throughput by up to 49x over the baseline concurrency control and even up to 20% better than without transactions.
Furthermore, Claret improves peak throughput on benchmarks modeling real-world high-contention scenarios: 4.3x speedup on the Rubis auction benchmark, and 3.6x on a Twitter clone, achieving 67-82% of the non-transactional performance on the same workloads.

### Expressing application semantics
The core idea behind Claret is to allow programmers to express application semantics, such as which transactions can commute with one another, to the datastore so that it can use that extra concurrency to improve performance. Consider an online auction service like eBay. While an auction is going, users will wish to check the current highest bid and place their own bids. Near the end of especially popular auctions, there will be lots of bids and views going on at the same time as many users try to out-bid one another without bidding more than necessary. It's in the interest of eBay to allow as many bids as they possibly can to allow the auction to reach its maximum price.

This diagram below shows some implementations of the two important transactions, `Bid` and `View`.

<img src="{{site.base}}/img/claret-levels.svg" class="centered img-responsive" style="width:100%;" />

At the highest (application) level (on the left), we understand that the two `Bid` transactions can run in either order and the `View` will observe the same result, that Bob's bid was the highest. We say, then, that the two transactions *commute*. However, if we implement the transactions in a traditional key-value store, with `put` and `get` operations, the datastore sees reading and writing operations that conflict — at this low level, the commutativity has been lost. So the datastore ends up running the two bids sequentially.

In *Claret*, applications are built using ADTs as in the right-most implementation. At this level, a `Bid` transaction involves mostly adding to two different sets. Because Claret knows that set `add`s commute with one another, it can safely execute the two `Bids` concurrently. In this way, the programmer has successfully expressed the application-level commutativity to the datastore, simply by using the data structures that were natural for representing the application.

### More in the paper

In our paper, which is currently under submission, we explain the optimizations that can be done with ADT information and show much more about the auction service case study, as well as a Twitter benchmark.

## Publications

{% capture paper %}<i class="fa fa-file-text-o"></i>{%endcapture%}
{% capture slides %}<i class="fa fa-file-pdf-o"></i>{%endcapture%}
{% capture keynote %}<i class="fa fa-apple"></i>{%endcapture%}

- **Claret: Using Data Types for Highly Concurrent Distributed Transactions**<br/>
  Brandon Holt, Irene Zhang, Dan Ports, Mark Oskin, Luis Ceze<br/>
  [Workshop on Principles and Practice of Consistency (PaPoC'15)](http://papoc.di.uminho.pt) (Apr 2015)<br/>
  [{{paper}} Paper](http://dl.acm.org/authorize?N96590) | [{{slides}} Slides](//homes.cs.washington.edu/~bholt/pubs/claret-papoc-slides.pdf) | [{{keynote}} Keynote](//homes.cs.washington.edu/~bholt/files/claret-papoc.key)

- *Full-length version is in submission.*
