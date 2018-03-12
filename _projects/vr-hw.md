---
title: Real-time Virtual Reality Video
image: /img/vr-hw.png
description: |
  Camera rigs and custom hardware for next-generation VR/AR applications.
people:
  - amrita
  - bhaynes
  - armin
  - magda
  - luisceze
  - akcheung
  - oskin

layout: project

icons:
  paper: '<i class="fa fa-file-text-o"></i>'
  slides: '<i class="fa fa-file-pdf-o"></i>'
  keynote: '<i class="fa fa-apple"></i>'
---
Virtual reality (VR) video applications couple complex camera systems and head-mounted devices with computational photography algorithms to generate immersive, panoramic video.
Rendering 3D-360◦ VR video from a camera rig is computation-intensive and typically performed offline.
Moreover, efficiently managing the resulting VR videos for low-bandwidth viewing is challenging.

## Hardware-Friendly Bilateral Solving
We have designed a new algorithm, the hardware-friendly bilateral solver, that enables real-time 3D-360◦ VR video rendering.
Our algorithm is easily parallelized, achieving a 4x speedup on CPU and 32x speedup on GPU over a baseline CPU implementation.
We also designed an FPGA-based hardware accelerator that utilizes reduced-precision computation and the parallelism inherent in our algorithm to achieve further speedups over our CPU and GPU implementations while consuming an order of magnitude less power.
The FPGA design's power efficiency enables practical real-time VR video processing at the camera rig or in the cloud.

## LightDB
We are designing a database management system, LightDB, to efficiently ingest, store, and deliver VR content at scale.
LightDB targets both live and prerecorded light field and 360◦ VR videos.
Content delivered through LightDB requires up to 60% less bandwidth than existing methods and scales to many concurrent connections.


## Publications

- **A Hardware-Friendly Bilateral Solver for Real-Time Virtual Reality Video**<br/>
  Amrita Mazumdar, Armin Alaghi, Jonathan T. Barron, David Gallup, Luis Ceze, Mark Oskin, Steven M. Seitz<br/>
  High Performance Graphics 2017
- **VisualCloud Demonstration: A DBMS for Virtual Reality**<br/>
  Brandon Haynes, Artem Minyaylov, Magdalena Balazinska, Luis Ceze, Alvin Cheung<br/>
  SIGMOD 2017 Demo, Best Demo Honorable Mention
