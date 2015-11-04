---
title: "VIRAL"
image:
description: |
 Enabling large-scale content-based searching by co-designing hardware with visual search algorithms.
people:
  - cdel
  - vlee2
  - armin
  - luisceze
  - oskin

layout: project

icons:
  paper: '<i class="fa fa-file-text-o"></i>'
  slides: '<i class="fa fa-file-pdf-o"></i>'
  keynote: '<i class="fa fa-apple"></i>'
---

<br />
To index and search all of the videos in the Internet requires massive resources. Using commodity parts and existing libraries, a conservative estimate for a system requires 32 petabytes to store feature data, 480,000 CPU cores to build and update the index, and 1000 servers to service 1 million concurrent clients at a latency on the order of seconds. Such requirements in both power consumption and performance rival those of the top supercomputers. While it may be feasible to add commodity CPUs to increase raw processing power, the exponential rates of multimedia content creation and consumption exacerbate the scalability of network infrastructure and memory subsystems. In 2013 alone, approximately 127 billion images and 620 million videos were uploaded to Facebook and YouTube respectively. In the same year, traffic volumes from Netflix and YouTube accounted for more than 50% of global Internet traffic.

This growth in data has created a landscape where multimedia search engines will be essential to organize and reason about the available data. To date, advances in feature extraction and visual search algorithms have enabled image-based search engines. However, increased I/O and compute requirements have stymied the progress towards video-based search engines. To enable video search at scale, rearchitecting the roles of the memory subsystem and network layer is imperative.

## Publications

- **NCAM: Near-Data Processing for Nearest Neighbor Search**<br/>
  Carlo C. del Mundo, Vincent T. Lee, Luis Ceze, Mark Oskin<br />
  [International Symposium on Memory Systems (MEMSYS '15)](memsys.io) (October 2015)<br/>
  [{{page.icons.paper}} Paper](http://dl.acm.org/citation.cfm?id=2818984) | [{{page.icons.slides}} Slides](http://homes.cs.washington.edu/~cdel/presentations/memsys-2015-ncam.pdf) |

- *Full-length version in preparation.*
