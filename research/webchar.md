---
layout: default
title: WebChar
---
WebChar is a system for automatically discovering performance and energy
pitfalls in Web browsers. A poster and extended abstract on WebChar will
appear in IISWC 2012.

**Contact:** [Adrian
Sampson](http://www.cs.washington.edu/homes/asampson/)

### Publication

[Automatic Discovery of Performance and Energy Pitfalls in HTML and
CSS.](http://www.cs.washington.edu/homes/asampson/media/papers/webchar-iiswc2012-extabs.pdf)
Adrian Sampson, Calin Cascaval, Luis Ceze, Pablo Montesinos, and Dario
Suarez Gracia. **IISWC 2012**.

The extended abstract that will appear at IISWC is only two pages. Full
details are available in an eight-page technical report:

[Automatic Discovery of Performance and Energy Pitfalls in HTML and CSS
(Extended Technical
Report).](http://www.cs.washington.edu/homes/asampson/media/papers/webchar-tr.pdf)
Adrian Sampson, Calin Cascaval, Luis Ceze, Pablo Montesinos, and Dario
Suarez Gracia. TR UW-CSE-12-09-02.

### Code and Data Release

The [code for the WebChar
analysis](http://www.cs.washington.edu/homes/asampson/files/webchar-code.tar.gz)
is available for download. The analysis is written in Python and
requires [SciPy](http://www.scipy.org/) and
[PyML](http://pyml.sourceforge.net/). The library implements the feature
calculation, correlation, and reporting for WebChar. The script `wc.py`
is the main interface to the analysis.

The [datasets used in the
paper](http://www.cs.washington.edu/homes/asampson/files/webchar-data.tar.gz)
are also available, along with a set of Python scripts that are used to
analyze them and perform statistical tests. The `README` file included
in this archive explains how to run the analyses used in the paper.
