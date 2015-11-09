---
title: Optimal Program Synthesis
description: |
  Applying formal methods to find the cheapest implementation of a program.
people:
  - bornholt
  - djg
  - luisceze

layout: project

icons:
  paper: '<i class="fa fa-file-text-o"></i>'
---

Many advanced programming tools---for both end-users and expert
developers---rely on [program synthesis](https://homes.cs.washington.edu/~bornholt/post/synthesis-for-architects.html) to automatically generate implementations
from high-level specifications. These tools often need to employ tricky,
custom-built synthesis algorithms because they require synthesized programs to
be not only correct, but also *optimal* with respect to a desired cost metric,
such as program size.  Finding these optimal solutions efficiently requires
domain-specific search strategies, but existing synthesizers hard-code the
strategy, making them difficult to reuse.

We have developed *metasketches*, a general framework for specifying and solving
optimal synthesis problems. Metasketches make the search strategy a part of the
problem definition by specifying a fragmentation of the search space into an
ordered set of classic sketches. We provide two cooperating search algorithms to
effectively solve metasketches. A global optimizing search coordinates the
activities of local searches, informing them of the costs of potentially-optimal
solutions as they explore different regions of the candidate space in parallel.
The local searches execute an incremental form of counterexample-guided
inductive synthesis to incorporate information sent from the global search. We
present Synapse, an implementation of these algorithms, and show that it
effectively solves optimal synthesis problems with a variety of different cost
functions. In addition, metasketches can be used to accelerate classic
(non-optimal) synthesis by explicitly controlling the search strategy, and we
show that Synapse solves classic synthesis problems that state-of-the-art tools
cannot.

## Publications

- **Optimizing Synthesis with Metasketches**<br/>
  James Bornholt, Emina Torlak, Dan Grossman, Luis Ceze<br/>
  [POPL 2016](http://conf.researchr.org/home/POPL-2016)<br/>
  [{{page.icons.paper}} Paper](https://homes.cs.washington.edu/~bornholt/papers/synapse-popl16.pdf)
