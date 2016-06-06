---
title: Disciplined Inconsistency
image: /img/ipa-icon.jpg
description: |
  Helping distributed systems programmers reason about and *safely* trade off consistency for performance.
people:
  - bholt
  - bornholt
  - iyzhang
  - drkp
  - luisceze
  - oskin

layout: project
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

In order to meet tight latency requirements at scale, applications must often sacrifice strong consistency. Going all the way to eventual consistency, one of the weakest consistency models, opens up much more concurrency by allowing clients to access whichever copy of the data is most convenient. However, reasoning about the behavior of such programs is notoriously difficult — many conventional assumptions that come from how non-distributed shared-memory programs work may no longer hold, including causality!

A whole zoo of intermediate consistency models (casual consistency, sirializability, lionizability, read your rights...) exist to allow trading off programmability for performance, but these still are difficult to use... 

- *In which situations do session guarantees hold?*
- *What actions are considered "causally linked"?*
- *Which definition of serializability are we talking about, the one that's stronger or weaker than serializability?*

Instead of proposing yet another weak consistency model, in this work we provide tools to allow programmers to express where they can tolerate errors, in terms of program *values* and application-level semantics. The idea is to use *abstract data types* (ADTs), as we did in [Claret](claret.html), to express application semantics, but introduce new variants of data types and operations that explicitly allow errors. We call these data types *IPA types* (*Inconsistent*, *Probabilistic* or *Approximate*).

This work is still in a fairly early stage. There is much left to figure out, so keep checking back, or reach out to one of us involved.

## Publications
- **Disciplined Inconsistency**<br/>
  Brandon Holt, James Bornholt, Irene Zhang, Dan Ports, Mark Oskin, Luis Ceze<br/>
  *Technical Report UW-CSE-16-06-01*  — June 2016<br/>
  [{{paper}} Paper](http://www.cs.washington.edu/tr/2016/06/UW-CSE-16-06-01.pdf)


## Blog posts
- [Disciplined Inconsistency](http://homes.cs.washington.edu/~bholt/posts/disciplined-inconsistency.html)
