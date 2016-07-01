---
layout: default
title: Research Projects
projects:
  - link: approximation/
    name: Approximate Computing
    summary: Approximation will never work.
  - link: dmp.html
    name: Deterministic Parallelism
    summary: Determinism is inevitable.
---

Our research crosses multiple layers of the system stack, from hardware to programming languages and applications. Our research has four main themes. The *concurrency* theme addresses challenges in writing, testing and debugging concurrent programs. The *approximate computing* theme explores accuracy trade-offs across the system stack for better energy efficiency and performance. The *emerging applications* theme focuses on building systems to better support new applications, from  mobile apps to graph analytics. The *emerging technologies* theme aims at taking advantage of new storage and compute technologies in building new systems. 

### Active Projects

<div class="card-columns">
{% for p in site.projects %}
{% if p.status != "inactive" %}
<div class="card {%if p.link or p.url%}link{%endif%}">
    {% if p.link %}
        {% assign proj_url = p.link %}
    {% else %}
        {% capture proj_url %}{{site.base}}{{p.url}}.html{% endcapture %}
    {% endif %}
    
    <a href="{{proj_url}}">
        <div class="card-block">
            <div class="title">
                {% if p.image %}
                    {% assign imgurl = p.image %}
                    {% capture init %}{{ p.image | slice: 0,1 }}{% endcapture %}
                    {% if init == "/" %}
                        {% capture imgurl %}{{site.base}}{{p.image}}{% endcapture %}
                    {% endif %}
                    <h3 class="card-title">
                        <img class="icon img-responsive" src="{{imgurl}}" alt="{{p.title}}"/>
                    </h3>
                {% endif %}                
                <h3 class="card-title">{{p.title}}</h3>
            </div>
            <div class="card-text">
                {{ p.description | markdownify }}
            </div>
        </div>
        {% if p.people %}
        <div class="card-footer">
            {% include project-people.html people=p.people %}
        </div>
        {% endif %}
    </a>
</div>
{% endif %}
{% endfor %}
</div>

### Completed Projects

<div class="card-columns">
{% for p in site.projects %}
{% if p.status == "inactive" %}
<div class="card {%if p.link or p.url%}link{%endif%}">
    {% if p.link %}
        {% assign proj_url = p.link %}
    {% else %}
        {% capture proj_url %}{{site.base}}{{p.url}}.html{% endcapture %}
    {% endif %}
    
    <a href="{{proj_url}}">
        <div class="card-block">
            <div class="title">
                {% if p.image %}
                    {% assign imgurl = p.image %}
                    {% capture init %}{{ p.image | slice: 0,1 }}{% endcapture %}
                    {% if init == "/" %}
                        {% capture imgurl %}{{site.base}}{{p.image}}{% endcapture %}
                    {% endif %}
                    <h3 class="card-title">
                        <img class="icon img-responsive" src="{{imgurl}}" alt="{{p.title}}"/>
                    </h3>
                {% endif %}                
                <h3 class="card-title">{{p.title}}</h3>
            </div>
            <div class="card-text">
                {{ p.description | markdownify }}
            </div>
        </div>
        {% if p.people %}
        <div class="card-footer">
            {% include project-people.html people=p.people %}
        </div>
        {% endif %}
    </a>
</div>
{% endif %}
{% endfor %}
</div>



{% include footer.html %}

<!--### Concurrency

Concurrency is present in pretty much every computer system, from sensor nodes to supercomputers to distributed applications. With ubiquitous multicores, it is actually necessary to write concurrent code to take advantage of parallelism. However, concurrent software is notoriously difficult to write, test and debug. 

Our concurrency research explores: [new programming models](osha.html) that make interaction between threads explicit and disciplined; new execution models that remove unnecessary non-determinism from parallel execution ([Deterministic multiprocessing (DMP)](dmp.html)); new techniques for [debugging and even automatically avoiding concurrency bugs](concurrencybugs.html); and new language and hardware techniques that [turn concurrency bugs into exceptions](concurrencyexceptions.html) much like segmentation fault or division by zero. 


### Approximate Computing

<img src="{{ site.base }}/img/noisy.png" class="illustration"
  style="width: 300px; height: 208px;">

Improving energy efficiency is paramount in mobile devices and online service
infrastructures. Even more importantly, as we approach the limits of silicon
device scaling, it might be an enabler for future systems performance
and features. Many important applications such as computer vision, machine learning, signal
processing, web search, augmented reality, big data analytics, and many more,
can inherently tolerate inaccurate computation at various levels. With [approximate computing][approx], this fact can be exploited for fundamentally more
efficient computing systems.

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
express and enforce quality metrics where inaccuracy can be tolerated ([EnerJ](approximation/enerj.html)); language tools, including
approximation recommenders and debuggers;  compilers to communicate the
information to the hardware; microarchitectures and hardware techniques
for approximate execution ([NPU][], [SNNAP][]); approximate [data storage][approxstorage] and communication
services; and abstractions for approximate hardware design.

[npu]: approximation/npu.html
[snnap]: approximation/snnap.html
[approxstorage]: http://homes.cs.washington.edu/~asampson/media/papers/approxstorage-micro2013.pdf
[approx]: approximation/enerj.html
{% comment %} Linking approximation to EnerJ until we have a real approximation landing page. {% endcomment %}

### Emerging Applications

Applications are often a major driver of progress in computer systems architecture. We are currently interested in two emerging application directions: the big and the small. The big is large-scale data analysis, which often involves forms of parallelism not very well supported by typical data-parallel systems. The small is mobile applications, which have stringent power requirements, but are often written in high-level languages that are difficult to optimized. 

Our effort on "big" applications currently focuses on support large scale irregular applications, which don't have much locality and exhibits irregular forms of parallelism. A classic example is graph analysis of social network data. We developing a system called [Grappa][], which aims at making it very simple to write large scale irregular applications with near optimal system utilization. The key lower-level research question is on how to exploit latency tolerance with concurrency in large systems. 

Grappa is being used to enable fast, in-memory computation of complex data analytics pipelines from domains like bibliometrics. To use Grappa without writing low-level code, we have built a compiler called [Radish](https://github.com/uwescience/raco#c-and-grappa-output-radish) that translates SQL and other high-level languages to efficient distributed memory programs.

Our effort on "small" applications focuses on better supporting scripting languages and web browsing in mobile devices. We are exploring [hardware support for scripting languages] (mobileweb.html) and ways to enable new optimizations in mobile browsers by [characterizing](webchar.html) sources of inefficiencies. 

[grappa]: grappa.html

### Emerging Technologies

The other main driver of new systems is the advent of new basic technologies. One such technology we are interested in is fast non-volatile memories (NVRAM). We believe that the implications of NVRAM on software are significant
and game-changing. For example, the existence of a two-level storage
system consisting of fast volatile main memory and slow non-volatile
storage (e.g., disk) has been fundamental to virtually all software
systems for the entire history of computing.  The potential of
computer systems consisting of a large, fast, single-level,
non-volatile memory system provides a crucial opportunity to
re-imagine the structure of software in the future. Hence, we are exploring [system implications of nonvolatile memories](nonvolatile.html).

Another exciting "emerging" technology is engineered DNA molecules. 
Performing computation inside living cells offers life-changing applications, from improved medical diagnostics to better cancer therapy to intelligent drugs. Due to its bio-compatibility and ease of engineering, one promising approach for performing in-vivo computation is DNA strand displacement. 
DNA nanotechnology is currently at a turning point, with many proposed applications being realized. We believe that it is time for the computer architecture community to take notice and contribute. We explore architectural issues in such systems, such as modularity, composability, reliability, etc.--> 

