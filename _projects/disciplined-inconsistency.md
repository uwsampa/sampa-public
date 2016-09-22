---
title: Disciplined Inconsistency
image: /img/ipa-icon.jpg
description: |
  Helping distributed systems programmers reason about and *safely* trade off consistency for performance
people:
  - bholt
  - bornholt
  - iyzhang
  - drkp
  - luisceze
  - oskin

layout: project
status: inactive

icons:
  paper: '<i class="fa fa-file-pdf-o" aria-hidden="true"></i>'
  html: '<i class="fa fa-html5" aria-hidden="true"></i>'
---
<style>
.content img { float: right; margin: 1em; max-width: 150px; }
.content blockquote {
  padding: .5rem 1rem;
  margin-bottom: 1rem;
  font-size: 1.25rem;
  border-left: .25rem solid #eceeef;
}
</style>

![IPA]({{site.base}}/img/ipa.jpg)

To provide good user experiences, modern datacenter applications and
web services must balance the competing requirements of application
correctness and responsiveness. For example, a web store
double-charging for purchases or keeping users waiting too long (each
additional millisecond of latency can translate to a loss in traffic and revenue. Worse, programmers must maintain this balance in an unpredictable environment where a [black and blue dress](http://www.buzzfeed.com/daozers/what-its-like-to-work-on-buzzfeeds-tech-team-during-record-t) or [Justin Bieber](http://www.wired.com/2015/11/how-instagram-solved-its-justin-bieber-problem/) can change application performance in the blink of an eye.

Recognizing the trade-off between consistency and performance, many
existing storage systems support configurable consistency levels that
allow programmers to set the consistency of individual operations. These allow
programmers to weaken consistency guarantees only for data that is not
critical to application correctness, retaining strong consistency for
vital data. Some systems further allow adaptable consistency levels at
runtime, where guarantees are only weakened when necessary to meet
availability or performance requirements (e.g., during a spike in
traffic or datacenter failure).
Unfortunately,
using these systems correctly is challenging.  Programmers can
inadvertently update strongly consistent data in the storage system
using values read from weakly consistent operations, propagating
inconsistency and corrupting stored data.  Over time, this
*undisciplined* use of data from weakly consistent operations lowers
the consistency of the storage system to its weakest level.

In this paper, we propose a more disciplined approach to inconsistency
in the *Inconsistent, Performance-bound, Approximate (IPA)* storage
system. IPA introduces the following concepts:

* *Consistency Safety*, a new property that ensures that values from
  weakly consistent operations cannot flow into stronger consistency
  operations without explicit endorsement from the programmer.  IPA is
  the first storage system to provide consistency safety.

* *Consistency Types*, a new type system in which *type safety implies
  consistency safety*. Consistency types define the consistency and
  correctness of the returned value from every storage operation,
  allowing programmers to reason about their use of different
  consistency levels.  IPA's type checker enforces the disciplined use
  of IPA consistency types statically at compile time.

* *Error-bounded Consistency.* IPA is a data structure store, like
  [Redis](http://redis.io) or [Riak](http://basho.com/products/riak-kv/), allowing it to provide a new type of
  weak consistency that places *numeric error bounds* on the returned
  values.  Within these bounds, IPA automatically adapts to return the
  strongest IPA consistency type possible under the current system
  load.

We've implemented a prototype of this model in Scala on top of an existing datastore, Cassandra, and use it to make performance/correctness tradeoffs in two applications: a ticket sales service and a Twitter clone. Our evaluation shows that IPA prevents consistency-based programming errors and adapts consistency automatically in response to changing network conditions, performing comparably to weak consistency and 2-10x faster than strong consistency.


## Publications
- **Disciplined Inconsistency with Consistency Types**<br/>
  Brandon Holt, James Bornholt, Irene Zhang, Dan Ports, Mark Oskin, Luis Ceze<br/>
  *ACM Symposium on Cloud Computing (SoCC)*  — October 2016<br/>
  [{{page.icons.paper}} Paper](http://bholt.github.io/gen/ipa.pdf) | [{{page.icons.html}} Web](http://bholt.github.io/gen/ipa.html)

- [Blog post](http://homes.cs.washington.edu/~bholt/posts/disciplined-inconsistency.html)
- [Source code <i class="fa fa-github"></i>](https://github.com/bholt/ipa)

