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

icons:
  paper: '<i class="fa fa-file-text-o"></i>'
  slides: '<i class="fa fa-file-pdf-o"></i>'
  keynote: '<i class="fa fa-apple"></i>'
---

# Claret 
<img src="{{site.base}}/img/claret.jpg" class="pull-right" style="width:150px;margin:15px"/>

Bringing ADTs and approximate computing to NoSQL databases.

This project aims to help bridge the gap between the old world of databases with schemas and serializable transactions and the new world of NoSQL databases with no predefined schemas and eventual consistency. Since it's very difficult for programmers to get eventual consistency correct, we would like to use data structure abstractions to hide the details of performance optimizations from programmers. By specifying the particular ADT that expresses their desired semantics, programmers can communicate their intent to the database and let it do the scaling for them.

## Publications

- **Claret: Using Data Types for Highly Concurrent Distributed Transactions**<br/>
  Brandon Holt, Irene Zhang, Dan Ports, Mark Oskin, Luis Ceze<br/>
  [Workshop on Principles and Practice of Consistency (PaPoC'15)](http://papoc.di.uminho.pt) (Apr 2015)<br/>
  [{{page.icons.paper}} Paper](http://dl.acm.org/authorize?N96590) | [{{page.icons.slides}} Slides](//homes.cs.washington.edu/~bholt/pubs/claret-papoc-slides.pdf) | [{{page.icons.keynote}} Keynote](//homes.cs.washington.edu/~bholt/files/claret-papoc.key)
