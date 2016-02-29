---
layout: default
title: EnerJ
---
The power consumption of computers has traditionally been
constrained by the need for strict correctness guarantees: processor
voltage, for instance, must allow enough slack as to prevent even the
rarest timing errors. However, recent work has shown that many modern
applications do not require perfect correctness. An image renderer, for
example, can tolerate occasional pixel errors without compromising
overall quality of service. However, it is infeasible to completely
abandon correctness guarantees—to do so would make development of
reliable software difficult or impossible. EnerJ is an extension to Java
that exposes hardware faults in a safe, principled manner. Simulation of
selectively reliable hardware suggests that EnerJ programs can save
large amounts of energy with only slight sacrifices to quality of
service.

**Contacts:** [Adrian Sampson][], [Luis Ceze][], and [Dan Grossman][]

[Luis Ceze]: http://homes.cs.washington.edu/~luisceze/
[Adrian Sampson]: http://homes.cs.washington.edu/~asampson/
[Dan Grossman]: http://homes.cs.washington.edu/~djg/

### Publications

[EnerJ: Approximate Data Types for Safe and General Low-Power
Computation.](http://homes.cs.washington.edu/~asampson/media/papers/enerj-pldi2011.pdf)
Adrian Sampson, Werner Dietl, Emily Fortuna, Danushen Gnanapragasam,
Luis Ceze, and Dan Grossman. **PLDI 2011**.

[Architecture Support for Disciplined Approximate
Programming.](http://www.cs.washington.edu/homes/asampson/media/papers/truffle-asplos2012.pdf)
Hadi Esmaeilzadeh, Adrian Sampson, Luis Ceze, and Doug Burger. **ASPLOS
2012**.

[Neural Acceleration for General-Purpose Approximate
Programs.](http://homes.cs.washington.edu/~asampson/media/papers/npu-micro2012.pdf)
Hadi Esmaeilzadeh, Adrian Sampson, Luis Ceze, and Doug Burger. **MICRO
2012**.

**Correction:** The above-linked version of the PLDI paper includes a
correction over the originally published version. A bug in the program
that computed the energy savings for each run overemphasized the savings
from SRAM structures and undercounted the contribution of instructions.
The corrected energy savings range from 7% to 38%.

### Source Release

The type checker and simulation framework used in the evaluation of
EnerJ are [available for download](https://bitbucket.org/adrian/enerj).
The system is a proof of concept and available under the terms of [Matt
Might's CRAPL](http://matt.might.net/articles/crapl/).

To use the system, follow the instructions in [the source repository's
README](https://bitbucket.org/adrian/enerj).

### Tech Report

A [technical
report](http://www.cs.washington.edu/homes/asampson/files/enerjproofs.pdf)
accompanies the PLDI paper. It contains the full formalization of EnerJ
and proves the non-interference property stated in the paper.

### Annotated Applications

The [annotated source
code](https://bitbucket.org/adrian/enerj-apps/get/tip.tar.bz2) for the
applications used in the evaluation of EnerJ is also available. (Each
benchmark's source code belongs to the respective copyright holder; the
code is redistributed under the terms of each open-source license.) To
compile and run these benchmarks, you need the EnerJ checker and
simulation infrastructure (above).

### Data Analysis Scripts

The `enerj-apps` repository also includes Python scripts that
analyze the JSON statistics output of the EnerJ
simulator. The scripts will probably work with Python 2.6 or later.
Most importantly, [`collect.py`][cpy]
is a monolithic script that compiles and executes
benchmarks, evaluates error levels, and summarizes execution statistics.

[cpy]: https://bitbucket.org/adrian/enerj-apps/src/default/collect.py
