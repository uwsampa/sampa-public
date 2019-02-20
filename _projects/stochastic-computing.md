---
title: Stochastic Computing
image:
description: |
  Stochastic circuits and computing applications for low power accelerator and sensor applications.
people:
  - vlee2
  - ashe2
  - cowanmeg
  - armin
  - luisceze
  - oskin

layout: project
status: inactive

---

Stochastic computing is an alternative method of computation which relies on unary bitstreams (time series of 1s and 0s) as opposed to traditional binary encodings.
Unlike binary encodings which require wide datapaths, stochastic circuits are simpler offering dramatically reduced area overhead and power consumption by trading off run time and accuracy.
Multipliers are implemented as two input AND or XOR gates, while adders are realized by a single multiplexor.
However, stochastic computing is no silver bullet and has its own unique design challenges which must be carefully considered when building accelerators which employ stochastic computing.
This project aims to explore the application space and how to appropriately balance the opportunities and trade offs of stochastic computing.
We are also looking at a number of other closely related encoding methods that share similar ideas with stochastic computation.

## Publications

- **Energy-Efficient Hybrid Stochastic-Binary Neural Networks for Near-Sensor Computing**<br/>
  Vincent T. Lee, Armin Alaghi, John P. Hayes, Visvesh Sathe, Luis Ceze<br/>
  Appears in Design, Automation and Test in Europe (2017)

- **Correlation Manipulating Circuits for Stochastic Computing**<br/>
  Vincent T. Lee, Armin Alaghi, Luis Ceze<br/>
  To appear in Design, Automation and Test in Europe (2018)
