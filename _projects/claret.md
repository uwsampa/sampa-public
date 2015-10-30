---
title: Claret
image: /img/claret.jpg
description: |
  Using Abstract Data Types to expose application-level semantics to datastores.
people:
  - bholt
  - luisceze
  - oskin

layout: default
notitle: true
---

# Claret 
<img src="{{site.base}}/img/claret.jpg" class="pull-right" style="width:150px;margin:15px"/>

Bringing ADTs and approximate computing to NoSQL databases.

This project aims to help bridge the gap between the old world of databases with schemas and serializable transactions and the new world of NoSQL databases with no predefined schemas and eventual consistency. Since it's very difficult for programmers to get eventual consistency correct, we would like to use data structure abstractions to hide the details of performance optimizations from programmers. By specifying the particular ADT that expresses their desired semantics, programmers can communicate their intent to the database and let it do the scaling for them.

## Publications

- **Claret: Using Data Types for Highly Concurrent Distributed Transactions**
  - Brandon Holt, Irene Zhang, Dan Ports, Mark Oskin, Luis Ceze
  - [Workshop on Principles and Practice of Consistency (PaPoC'15)](http://papoc.di.uminho.pt) (Apr 2015)
  - [Paper](http://dl.acm.org/authorize?N96590) | [Slides](//homes.cs.washington.edu/~bholt/pubs/claret-papoc-slides.pdf) | [Keynote](//homes.cs.washington.edu/~bholt/files/claret-papoc.key)
