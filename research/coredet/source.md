---
layout: default
title: CoreDet Source Code
---
See the README.asplos2010 file for build instructions.

**Version used in our ASPLOS 2010 paper**

-   [coredet-asplos10.tar.gz](http://www.cs.washington.edu/homes/tbergan/code/coredet-asplos10.tar.gz)
    (52 MB)
    -   CoreDet compiler and runtime plus source code for our benchmarks

-   [coredet-asplos10-srconly.tar.gz](http://www.cs.washington.edu/homes/tbergan/code/coredet-asplos10-srconly.tar.gz)
    (200 KB)
    -   CoreDet compiler and runtime only

**Version of the ASPLOS 2010 code updated to compile cleanly with LLVM
2.6**

-   [coredet-asplos10-llvm26.tar.gz](http://www.cs.washington.edu/homes/tbergan/code/coredet-asplos10-llvm26.tar.gz)
    (52 MB)
    -   CoreDet compiler and runtime plus source code for our benchmarks

-   [coredet-asplos10-llvm26-srconly.tar.gz](http://www.cs.washington.edu/homes/tbergan/code/coredet-asplos10-llvm26-srconly.tar.gz)
    (200 KB)
    -   CoreDet compiler and runtime only

**Version used in our ASPLOS 2011 paper (includes DmpHB consistency)**

-   [coredet-asplos11.tar.gz](http://www.cs.washington.edu/homes/tbergan/code/coredet-asplos11.tar.gz)
    (52 MB)
    -   CoreDet compiler and runtime plus source code for our benchmarks

-   [coredet-asplos11-srconly.tar.gz](http://www.cs.washington.edu/homes/tbergan/code/coredet-asplos11-srconly.tar.gz)
    (200 KB)
    -   CoreDet compiler and runtime only

**BUGS**

-   A file is missing from the above full distributions (not the srconly
    distributions). That file is
    *benchmarks/parsec/config/llvm-default.bldconf* and can be found
    [here](http://www.cs.washington.edu/homes/tbergan/code/coredet-missing/llvm-default.bldconf).
-   The *do-asplos10-benchmarks.sh* script will fail in
    meta-benchmark-manager.py with a regular expressions error at line
    510. That entire block of code was used during local development and
    should be removed (lines 504-512, starting at *"\# git revision
    info"*).

**Configuration script**

-   The script we use to setup CoreDet on a new machine can be found
    [here](http://www.cs.washington.edu/homes/tbergan/code/coredet-missing/coredet-setuphost).

