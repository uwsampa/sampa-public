---
layout: default
title: SNNAP
---
SNNAP (Systolic Neural Network Accelerator on Programmable logic) is an FPGA-based co-processor implemented on an ARM system-on-a-chip (SoC) that accelerates programs that can tolerate imprecision. To leverage SNNAP, programs have to undergo a process called [neural transformation](http://sampa.cs.washington.edu/research/approximation/npu.html). Neural transformation takes a computationally demanding region of code in a program, and approximates it with a neural network. This neural network can then be efficiently evaluated on a specialized neural accelerator, SNNAP. This two-phase process of approximation and acceleration can bring substantial speedups and energy savings to many applications, especially to applicaiton that deal with inherently noisy data.

<img src="{{ site.base }}/img/snnap.png" class="illustration"
  style="width: 300px; height: 225px;">

SNNAP is implemented on the programmable fabric of the Zynq, a commercial ARM-based SoC that incorporates an FPGA on the same die. This tight integration between the processors and the programmable fabric offers interesting opportunities for fine-grained acceleration, which is often required in the context of neural acceleration. SNNAP offloads computation by performing low-latency coherent memory accesses directly to the CPU’s caches. Additionally, SNNAP is design to exploit a parallelism in programs: it is composed of multiple processing units that can evaluate neural networks in parallel. Each processing unit utilizes DSP slices arranged in a systolic array to evaluate neural networks efficiently. SNNAP gets its flexibility from a micro-coded sequencer, and reconfigurable weight banks. This means that neural network 'frames' can be loaded into a processing unit dynamically.

SNNAP was evaluated on a set of diverse benchmarks that span over application domains such as image processing, machine learning, image compression etc. and provides a 3.8x speedup on average, and 2.8x energy savings on average.

This is a joint project at University of Washington and Georgia Tech.

**Contacts:** [Thierry Moreau][] and [Luis Ceze][]

[Thierry Moreau]: http://homes.cs.washington.edu/~moreau/
[Luis Ceze]: http://homes.cs.washington.edu/~luisceze/

### Collaborators

[Thierry Moreau](http://www.cs.washington.edu/homes/moreau/),
[Mark Wyse](http://www.cs.washington.edu/homes/wysem/),
[Jacob Nelson](http://www.cs.washington.edu/homes/nelson/),
[Adrian Sampson](http://www.cs.washington.edu/homes/asampson/),
[Hadi Esmaeilzadeh](http://www.cc.gatech.edu/~hadi/),
[Luis Ceze](http://www.cs.washington.edu/homes/luisceze/) and
[Mark Oskin](http://www.cs.washington.edu/homes/oskin/).

### Publications

[SNNAP: Approximate Computing on Programmable SoCs via Neural Acceleration.](http://homes.cs.washington.edu/~asampson/media/papers/snnap-hpca2015.pdf)
Thierry Moreau, Mark Wyse, Jacob Nelson, Adrian Sampson, Hadi Esmaeilzadeh, Luis Ceze, Mark Oskin. **HPCA
2015**.

### Source release

The SNNAP hardware design and the compiler framework to support neural acceleration is accessible now upon request. Please email [Thierry Moreau](http://www.cs.washington.edu/homes/moreau/) directly to obtain access to the source.
If you wish to receive updates, please submit your email address below (or using [this form](https://docs.google.com/forms/d/1PCy3a6rK03DA3xL5hkXf28crINxFQW95shkbyyirLn8/viewform?usp=send_form)). 

<form action="https://docs.google.com/forms/d/1PCy3a6rK03DA3xL5hkXf28crINxFQW95shkbyyirLn8/formResponse" method="POST" class="form-inline" style="margin-bottom: 1em; text-align: center;">
  <div class="form-group">
    <input type="email" name="entry.2066739288" value="" placeholder="email@example.com" class="form-control">
  </div>
    <input type="hidden" name="draftResponse" value="[,,&quot;5156067022162842094&quot;]
    ">
    <input type="hidden" name="pageHistory" value="0">
    <input type="hidden" name="fbzx" value="5156067022162842094">
    <input type="submit" name="submit" value="Sign Up" class="btn btn-default">
</form>
