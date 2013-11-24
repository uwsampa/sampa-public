---
layout: default
title: Neural Processing Units
---
This project takes a learning-based approach to the acceleration of
approximate programs. We introduce a program transformation, called the
“Parrot transformation,” that selects and trains a neural network to
mimic a region of imperative code. After the learning transformation
phase, the compiler replaces the original code with an invocation of a
low-power accelerator called a “neural processing unit” (NPU). The NPU
is tightly coupled to the processor’s speculative pipeline, since many
of the accelerated code regions are small. Since neural networks produce
inherently approximate results, we define a programming model that
allows programmers to identify approximable code regions-code that can
produce imprecise but acceptable results. Mimicking approximable code
regions with an NPU is both faster and more energy efficient than
executing the original code. For a set of diverse applications, NPU
acceleration provides an average whole-application speedup of 2.3x and
energy savings of 3.0x with quality loss at most 9.6%.

This is a joint project at University of Washington, Microsoft Research,
and The University of Texas at Austin.

### Collaborators

[Hadi Esmaeilzadeh](http://www.cs.washington.edu/homes/hadianeh/),
[Adrian Sampson](http://www.cs.washington.edu/homes/asampson/), [Renee
St. Amant](http://www.cs.utexas.edu/users/stamant/), [Thierry
Moreau](http://www.cs.washington.edu/homes/moreau), [Luis
Ceze](http://www.cs.washington.edu/homes/luisceze/), and [Doug
Burger](http://research.microsoft.com/en-us/people/dburger/).

### Publications

[Neural Acceleration for General-Purpose Approximate
Programs.](http://homes.cs.washington.edu/~hadianeh/doc/paper/2012-micro-npu.pdf)
Hadi Esmaeilzadeh, Adrian Sampson, Luis Ceze, and Doug Burger. **MICRO
2012**.

[Towards Neural Acceleration for General-Purpose Approximate
Computing.](http://homes.cs.washington.edu/~hadianeh/doc/paper/2012-weed-npu.pdf)
Hadi Esmaeilzadeh, Adrian Sampson, Luis Ceze, and Doug Burger. **WEED
2012**.

[Addressing Dark Silicon Challenges with Disciplined Approximate
Computing.](http://homes.cs.washington.edu/~hadianeh/doc/paper/2012-dasi-npu.pdf)
Hadi Esmaeilzadeh, Adrian Sampson, Michael Ringenburg, Luis Ceze, Dan
Grossman, and Doug Burger. **DaSi 2012**.
[Slides.](http://darksilicon.ucsd.edu/2012/assets/slides/13)
