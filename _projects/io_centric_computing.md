---
title: "I/O Centric Computing"
image: /img/viral-icon.png
description: |
 Enabling large-scale content-based searching by co-designing hardware with visual search algorithms.
people:
  - cdel
  - vlee2
  - armin
  - luisceze
  - oskin

layout: project
status: inactive

icons:
  paper: '<i class="fa fa-file-text-o"></i>'
  slides: '<i class="fa fa-file-pdf-o"></i>'
  keynote: '<i class="fa fa-apple"></i>'
---

<br />

## VIRAL: Video And Image Retrieval At Large Scale

To index and search all of the videos in the Internet requires massive resources. Using commodity parts and existing libraries, a conservative estimate for a system requires 32 petabytes to store feature data, 480,000 CPU cores to build and update the index, and 1000 servers to service 1 million concurrent clients at a latency on the order of seconds. Such requirements in both power consumption and performance rival those of the top supercomputers. While it may be feasible to add commodity CPUs to increase raw processing power, the exponential rates of multimedia content creation and consumption exacerbate the scalability of network infrastructure and memory subsystems. In 2013 alone, approximately 127 billion images and 620 million videos were uploaded to Facebook and YouTube respectively. In the same year, traffic volumes from Netflix and YouTube accounted for more than 50% of global Internet traffic.

This growth in data has created a landscape where multimedia search engines will be essential to organize and reason about the available data. To date, advances in feature extraction and visual search algorithms have enabled image-based search engines. However, increased I/O and compute requirements have stymied the progress towards video-based search engines. To enable video search at scale, rearchitecting the roles of the memory subsystem and network layer is imperative.

## NNAP : High Speed K-Nearest Neighbors on the Micron Automata Processor

Near data processing has been proposed as a promising solution to eliminate costly data transfer for data bound applications by offering both enhanced energy efficiency and performance. In particular, the Micron Automata Processor is among the first near data processing solutions to be commercialized in recent years. However, it's non-von Neumann architecture presents its own set of unique challenges and opportunities. This project aims to explore and implement the notoriously data bound k-nearest neighbors algorithm for practical sized applications by combining insights from computer vision and architecture.

## Publications

- **NCAM: Near-Data Processing for Nearest Neighbor Search**<br/>
  Carlo C. del Mundo, Vincent T. Lee, Luis Ceze, Mark Oskin<br />
  [International Symposium on Memory Systems (MEMSYS '15)](http://memsys.io) (October 2015)<br/>
  [{{page.icons.paper}} Paper](http://dl.acm.org/citation.cfm?id=2818984) | [{{page.icons.slides}} Slides](http://homes.cs.washington.edu/~cdel/presentations/memsys-2015-ncam.pdf) |

- *Full-length version in preparation.*

- **Similarity Search on Automata Processors**<br/>
  Vincent T. Lee, Justin Kotalik, Carlo C. Del Mundo, Armin Alaghi, Luis Ceze, Mark Oskin<br/>
  To appear in [International Parallel and Distributed Processing Symposium (IPDPS '17)](http://www.ipdps.org)
  

