---
title: Systems Support for Video Analytics and VR
image: /img/vr-hw.png
description: |
  Custom databases, hardware, and storage for video applications, like video analytics or VR/AR.
people:
  - amrita
  - bhaynes
  - armin
  - magda
  - luisceze
  - akcheung

layout: project

icons:
  paper: '<i class="fa fa-file-text-o"></i>'
  slides: '<i class="fa fa-file-pdf-o"></i>'
  keynote: '<i class="fa fa-apple"></i>'
---
## Vignette
Vignette is a storage system supporting perceptual compression of video content. Vignette provides codec-agnostic support for applying machine learning to the video compression process, and an API to expose these ML optimizations to the storage manager to reduce cloud distribution costs.

## Visual Road
Visual Road is an automatic dataset generator and benchmark suite for video systems. 
Visual Road is designed to evaluate a broad variety of VDBMSs: realtime systems, systems for longitudinal analytical queries, systems processing traditional videos, and systems designed for 360◦ videos.

## LightDB
We designed a database management system, LightDB, to efficiently ingest, store, and deliver VR content at scale.
LightDB targets both live and prerecorded light field and 360◦ VR videos.
Content delivered through LightDB requires up to 60% less bandwidth than existing methods and scales to many concurrent connections.

## Hardware-Friendly Bilateral Solving
We have designed a new algorithm, the hardware-friendly bilateral solver, that enables real-time 3D-360◦ VR video rendering.
Our algorithm is easily parallelized, achieving a 4x speedup on CPU and 32x speedup on GPU over a baseline CPU implementation.
We also designed an FPGA-based hardware accelerator that utilizes reduced-precision computation and the parallelism inherent in our algorithm to achieve further speedups over our CPU and GPU implementations while consuming an order of magnitude less power.
The FPGA design's power efficiency enables practical real-time VR video processing at the camera rig or in the cloud.


## Publications
- **Vignette: Perceptual Compression for Video Storage and Processing Systems**<br/>
  Amrita Mazumdar, Brandon Haynes, Magda Balazinska, Luis Ceze, Alvin Cheung, Mark Oskin<br/>
  SoCC 2019, SoCC Best Poster Award (for poster accompanying the paper).
  
- **Visual Road: A Video Data Management Benchmark**<br/>
  Brandon Haynes, Amrita Mazumdar, Magda Balazinska, Luis Ceze, Alvin Cheung<br/>
  SIGMOD 2019.

- **LightDB: A DBMS for Virtual Reality**<br/>
  Brandon Haynes, Amrita Mazumdar, Armin Alaghi, Magda Balazinska, Luis Ceze, Alvin Cheung<br/>
  PVLDB 11(10) 2018.

- **A Hardware-Friendly Bilateral Solver for Real-Time Virtual Reality Video**<br/>
  Amrita Mazumdar, Armin Alaghi, Jonathan T. Barron, David Gallup, Luis Ceze, Mark Oskin, Steven M. Seitz<br/>
  High Performance Graphics 2017
  
- **VisualCloud Demonstration: A DBMS for Virtual Reality**<br/>
  Brandon Haynes, Artem Minyaylov, Magdalena Balazinska, Luis Ceze, Alvin Cheung<br/>
  SIGMOD 2017 Demo, Best Demo Honorable Mention
