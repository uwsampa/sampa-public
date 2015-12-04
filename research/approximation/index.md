---
layout: default
title: Approximate Computing
---

Improving energy efficiency is paramount in mobile devices and online service
infrastructures. More importantly, as we approach the limits of silicon
device scaling, improving energy efficiency is critical for increasing the capabilities of future computer systems.
Many important applications such as computer vision, machine learning, signal
processing, web search, augmented reality, big data analytics, etc.
can inherently tolerate inaccurate computation. Approximate computing takes advantage of the inherent resilicence to imprecision and soft errors found in many applications to unlock significant energy gains.

The key idea in approximate computing is to trade off accuracy in computation,
storage, and communication for better performance and energy efficiency. It enables effective use of more aggressive
transistor technology, analog computing techniques in a more general way, and new optimizations or code
transformations (e.g., using fundamentally
approximate models of execution like [neural networks][npu]).
 
Taking advantage of approximate computing, though, requires overcoming many
technical challenges. Programmers need a reasonable model to write code for
and they need tools for testing and debugging approximate programs. The system
needs to offer meaningful guarantees of output quality otherwise unusable
output actually leads to energy waste. Our research aims to develop a comprehensive solution across the entire system
stack, including: language and runtime techniques to
express and enforce quality metrics where inaccuracy can be tolerated ([EnerJ](approximation/enerj.html));
programming tools including approximation recommenders and program synthesis frameworks ([Synapse](http://homes.cs.washington.edu/~bornholt/papers/synapse-popl16.pdf));
[quality monitoring and debugging](http://sampa.cs.washington.edu/papers/asplos15-approxdebug.pdf) techniques;
compilers to identify approximation opportunities ([ACCEPT](http://accept.rocks));
architectural support for approximate micro-architectures ([Truffle](http://dl.acm.org/citation.cfm?id=2151008&CFID=565598892&CFTOKEN=44723956));
hardware support for approximate acceleration ([NPU][], [SNNAP][]);
approximate [data storage][approxstorage] and approximate communication
services.

### Publications

[Optimizing Synthesis with Metasketches.]
(http://homes.cs.washington.edu/~bornholt/papers/synapse-popl16.pdf)
James Bornholt, Emina Torlak, Dan Grossman, and Luis Ceze.
**POPL 2016**

[Probability Type Inference for Flexible Approximate Programming.]
(http://adriansampson.net/media/papers/decaf-oopsla2015.pdf)
Brett Boston, Adrian Sampson, Dan Grossman, and Luis Ceze.
**OOPSLA 2015**

[Hardware–Software Co-Design: Not Just a Cliche.]
(http://adriansampson.net/media/papers/cliche-snapl2015.pdf)
Adrian Sampson, James Bornholt, and Luis Ceze.
**SNAPL 2015**

[Monitoring and Debugging the Quality of Results in Approximate Programs.]
(http://adriansampson.net/media/papers/approxdebug-asplos2015.pdf)
Michael Ringenburg, Adrian Sampson, Isaac Ackerman, Luis Ceze, and Dan Grossman.
**ASPLOS 2015**

[SNNAP: Approximate Computing on Programmable SoCs via Neural Acceleration.]
(http://adriansampson.net/media/papers/snnap-hpca2015.pdf)
Thierry Moreau, Mark Wyse, Jacob Nelson, Adrian Sampson, Hadi Esmaeilzadeh, Luis Ceze, and Mark Oskin.
**HPCA 2015**

[ACCEPT: A Programmer-Guided Compiler Framework for Practical Approximate Computing.]
(http://www.cs.washington.edu/tr/2015/01/UW-CSE-15-01-01.pdf)
Adrian Sampson, André Baixo, Benjamin Ransford, Thierry Moreau, Joshua Yip, Luis Ceze, Mark Oskin.
**UW Tech Report (2015)**

[Expressing and Verifying Probabilistic Assertions.]
(http://dl.acm.org/authorize?N83273)
Adrian Sampson, Pavel Panchekha, Todd Mytkowicz, Kathryn McKinley, Dan Grossman, and Luis Ceze.
**PLDI 2014**

[Approximate Storage in Solid-State Memories.]
(http://dl.acm.org/authorize?N83272)
Adrian Sampson, Jacob Nelson, Karin Strauss, and Luis Ceze. **MICRO 2013**

[Neural Acceleration for General-Purpose Approximate
Programs.](http://homes.cs.washington.edu/~asampson/media/papers/npu-micro2012.pdf)
Hadi Esmaeilzadeh, Adrian Sampson, Luis Ceze, and Doug Burger. **MICRO
2012**.

[Architecture Support for Disciplined Approximate
Programming.](http://www.cs.washington.edu/homes/asampson/media/papers/truffle-asplos2012.pdf)
Hadi Esmaeilzadeh, Adrian Sampson, Luis Ceze, and Doug Burger. **ASPLOS
2012**.

[EnerJ: Approximate Data Types for Safe and General Low-Power
Computation.](http://homes.cs.washington.edu/~asampson/media/papers/enerj-pldi2011.pdf)
Adrian Sampson, Werner Dietl, Emily Fortuna, Danushen Gnanapragasam,
Luis Ceze, and Dan Grossman. **PLDI 2011**.

[npu]: approximation/npu.html
[snnap]: approximation/snnap.html
[approxstorage]: http://homes.cs.washington.edu/~asampson/media/papers/approxstorage-micro2013.pdf
[approx]: approximation/enerj.html
[accept]: http://accept.rocks
