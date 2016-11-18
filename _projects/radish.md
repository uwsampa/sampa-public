---
title: Radish
image: /img/radish.png
description: Integrating relational query processing into high-performance parallel languages (e.g., Grappa and other PGAS)
people:
  - bdmyers
  - oskin
  - billhowe
status: inactive
layout: project
status: inactive

---

<img src="{{site.base}}/img/radish.png" class="pull-right" style="width:150px;margin:15px"/>

Data-intensive applications are motivating new interactions between the models of databases and the algorithms and platforms of high-performance computing. Considering the cost of development, ad hoc analytics tasks are a severe mismatch for the distributed programming models of HPC. When analytics tasks can be expressed as collection-oriented dataflow, there is a cost to using them: (1) existing dataflow systems [are not equipped](http://ieeexplore.ieee.org/xpl/freeabs_all.jsp?arnumber=6687402&reason=concurrency) to make efficient use of HPC environments characterized by fast interconnects, fast messaging libraries, and high CPU to IO capacity; and (2) crossing system boundaries incurs the cost of impedance mismatch in data representation. Hand-tuned algorithms continue to have a role to play in production applications; intermingling high-level dataflow programming with point-to-point message-passing algorithms [is an emerging requirement](http://arxiv.org/abs/1403.1528).

To address these costs, we built *Radish*. Radish uses new techniques for compiling queries for distributed HPC environments, aiming to exploit both database-style algebraic optimization and the performance benefits of parallel compilers.

[Try Radish](https://github.com/uwescience/raco#c-and-grappa-output-radish)
