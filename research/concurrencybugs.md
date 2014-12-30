---
layout: default
title: Concurrency Bug Detection and Avoidance
---
With software complexity growing at a very fast pace comes software
reliability issues. Today software failures pose a significant cost to
our economy --- NIST estimates around $60B per year. Pervasive
parallelism is likely to further increase the chances of software
failures. While one could argue that the best way to address these
challenges is to improve software engineering, it is likely that the
problem will haunt us for a while due to legacy systems and the time
required to fundamentally change the way software is developed. For that
reason, we believe that a way of alleviating the problem is to design
architectures and systems that significantly decrease the probability
that software bugs manifest themselves and lead to a failure.

We are developing systems that can detect and survive a broad class of
concurrency bugs. Concurrency bugs manifest nondeterministically, i.e.,
they depend upon the occurrence of certain bad interleavings.
Interestingly, a given memory semantics exposed to the software can
yield multiple valid global interleavings of memory operations. One can
allow only a subset of these interleavings to avoid concurrency bugs
while still exposing the same memory semantics to the software. We
leverage this property and avoid concurrency bugs by monitoring when one
is likely to happen and choosing a *less dangerous* interleaving. Since
we don't want bugs to go simply unnoticed, we are also developing
mechanism to reports bugs back to the programmer.

Our first step towards that goal was
[Atom-Aid](http://www.cs.washington.edu/homes/luisceze/publications/lucia-atomaid.pdf),
which is a multiprocessor architecture that can both detect and avoid
atomicity violations. We are now expanding the class of bugs we can
detect and avoid and are developing new machine learning-based
techniques.

More information on our concurrency error detection research can be
found [here](http://brandonlucia.com/detect.html).

More information on our research on avoiding failures in concurrent
programs can be found
[here](http://brandonlucia.com/avoid.html).

**Current contacts:**
[Brandon Lucia](http://brandonlucia.com)
and [Luis Ceze](http://www.cs.washington.edu/homes/luisceze).

### Software Tools

We recently released a source version of a tool we developed called
Recon. Recon is useful for finding concurrent programming mistakes, and
using reconstructed execution fragments to explain their causes to
programmers.

### Publications

[Cooperative Empirical Failure Avoidance for Multithreaded
Programs](/papers/aviso_ASPLOS2013.pdf),
(**ASPLOS 2013**), Brandon Lucia and Luis Ceze

[IFRit: Interference-Free Regions for Dynamic Data-Race
Detection](/papers/oopsla12-ifrit.pdf),
(**OOPSLA 2012**), Laura Effinger-Dean, Brandon Lucia, Luis Ceze, Dan
Grossman, Hans-J. Boehm

[Isolating and Understanding Concurrency Errors with Reconsructed
Execution
Fragments](/papers/recon-pldi2011.pdf),
(**PLDI 2011**), Brandon Lucia, Benjamin P. Wood, and Luis Ceze.

[ColorSafe: Architectural Support for Debugging and Dynamically Avoiding
Multi-variable Atomicity
Violations](/papers/isca175-lucia.pdf)
(**ISCA 2010**), Brandon Lucia, Luis Ceze and Karin Strauss.

[Finding Concurrency Bugs with Context-Aware Communication
Graphs](http://www.cs.washington.edu/homes/luisceze/publications/micro09-lucia.pdf),
(**MICRO 2009**), Brandon Lucia, Luis Ceze.

[Atom-Aid: Detecting and Surviving Atomicity
Violations](http://www.cs.washington.edu/homes/luisceze/publications/lucia-atomaid.pdf)
(**ISCA 2008**), Brandon Lucia, Joseph Devietti, Karin Strauss and Luis
Ceze. Selected to appear in **IEEE Micro Top Picks 2009**.
