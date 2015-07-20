---
layout: default
title: "DECAF: Probability Types"
---
Approximate computing needs programming systems that can bound the chance that a result will be wrong. DECAF (**D**ECAF, an **E**nergy-aware **C**ompiler to make **A**pproximation **F**lexible) is a language that uses *probability types* to control incorrectness.

### Paper

*Probability Type Inference for Flexible Approximate Programming.*
Brett Boston, [Adrian Sampson][adrian], [Dan Grossman][dan], and [Luis Ceze][luis].
To appear in OOPSLA 2015.

Link TK.

[adrian]: http://homes.cs.washington.edu/~asampson/
[dan]: http://homes.cs.washington.edu/~djg/
[luis]: http://homes.cs.washington.edu/~luisceze/

## Source Code

The source code for the compiler, simulator, and benchmarks is available for download. The compiler and simulator are modified versions of the [EnerJ][] infrastructure. You will need three bundles of source code in total:

* [The `enerj` directory][tarball-enerj], which contains the compiler and simulator.
* [The `checker-runtime` directory][tarball-cfrt], a support library.
* [The `approx-within-apps` directory][tarball-apps], the annotated benchmarks and associated scripts for collecting data.

[enerj-source]: /research/approximation/enerj.html#source-release
[tarball-enerj]: enerj-802f7e4a1e1c.tar.gz
[tarball-cfrt]: checker-runtime-a8a1e794bb86.tar.gz
[tarball-apps]: approx-within-apps-f55f9c0.tar.gz

### Building

To build the system, follow [the instructions for building EnerJ][enerj-readme] with the following differences:

* Use version 1.8.0 of the Checker Framework. (The original EnerJ compiler uses an older version.)
* You will need [Z3][]. We used version 4.3.1 in our experiments.

[enerj-readme]: https://bitbucket.org/adrian/enerj
[z3]: https://github.com/Z3Prover/z3

## Result Data

Link to the data tarball.
Explain each JSON file in the release.
