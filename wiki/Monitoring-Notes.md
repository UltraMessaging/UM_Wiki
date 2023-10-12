# Monitoring Notes

<!-- mdtoc-start -->
&bull; [Monitoring Notes](#monitoring-notes)  
&nbsp;&nbsp;&nbsp;&nbsp;&bull; [Introduction](#introduction)  
&bull; [Library Statistics](#library-statistics)  
&nbsp;&nbsp;&nbsp;&nbsp;&bull; [Context Statistics](#context-statistics)  
&bull; [Store Statistics](#store-statistics)  
&bull; [DRO Statistics](#dro-statistics)  
&bull; [SRS Statistics](#srs-statistics)  
<!-- TOC created by '../mdtoc/mdtoc.pl wiki/Monitoring-Notes.md' (see https://github.com/fordsfords/mdtoc) -->
<!-- mdtoc-end -->

## Introduction

Best practices for monitoring an Ultra Messaging network are talked about at length
[here](https://ultramessaging.github.io/currdoc/doc/Operations/monitoring.html).
To summarize:

* You should monitor your hosts (memory, CPU, network utilization) and network
(packet drops).
UM doesn't help you with this; there are many third-party tools availalbe.

* As part of network monitoring, many customers run "always on" packet capture,
like [Corvil](https://www.pico.net/corvil-analytics/).

* UM components, like the Store and DRO, generate log files.
These should be monitored for problems.

* When an application uses UM, that UM instance can also generate logs.
Your application has a responsibility to save those logs somewhere.
Some customers save them to a database, others just write them to a disk file.

* Your application also is also delivered events from UM.
Most of these events, including unexpected events, should be logged.
For example, [receiver BOS and EOS events](https://ultramessaging.github.io/currdoc/doc/Design/fundamentalconcepts.html#receiverbosandeosevents).

* The UM library maintains internal statistics.
These should be collected and saved.
The recommended method of doing this is to configure your applications to publish their statistics periodically
to a central collector.
UM components, like the Store and DRO, also run on top of the UM library,
and they should also be configured to publish their statistics to the central statistics collector.

* UM components, like the Store and DRO, also generate "daemon statistics",
which is information specific to the component type.
For example, the Store publishes Store statistics,
and the DRO publishes DRO statistics.
These should also be published to the central statistics collector.

# Library Statistics

The UM Library maintains statistics related to contexts, sources,
receivers, and event queues that the application creates.
Note that the statistics are organized by
[transport session](https://ultramessaging.github.io/currdoc/doc/Design/fundamentalconcepts.html#transportsessions),
not individual topic.

There are a large number of counters maintained for each transport session being used.
Many of those fields will be of direct interest to customers,
while many others are typically only interesting to UM Support engineers.
We request that you save *all* of the fields, not just the ones you are especially interested in.
(Some of our customers write the whole record in the form of a BLOB, and specific fields of special
interest as separate columns.)

In the fields below, the documentation links are for the C API.
The same statstics and descriptions apply for Java and .NET.

## Context Statistics

The following context statistics should be proactively monitored by customers:
* [tr_dgrams_dropped_ver](https://ultramessaging.github.io/currdoc/doc/API/structlbm__context__stats__t__stct.html#a4af77dcdede237ff289bf1085f4d9030),
[tr_dgrams_dropped_type](https://ultramessaging.github.io/currdoc/doc/API/structlbm__context__stats__t__stct.html#a9477e4a48c6cceabea9450e0f85276da)
[tr_dgrams_dropped_malformed](https://ultramessaging.github.io/currdoc/doc/API/structlbm__context__stats__t__stct.html#aaba67cae496b93572e2455a25776babe) -
None of these counters should be greater than zero.
If any of these counts increase, it usually due to interference from a non-UM packet source.
[Contact UM Support](https://ultramessaging.github.io/currdoc/doc/Operations/contactinginformaticasupport.html).

* [tr_rcv_unresolved_topics](https://ultramessaging.github.io/currdoc/doc/API/structlbm__context__stats__t__stct.html#ad2fd3379b1a47479c7b64e873118be5c) -
This field is a snapshot of the topics subscriptions that have not discovered any sources.
This value can be non-zero during normal operation during the initial topic resolution phase,
but it typically should not remain non-zero for any significant time.
A long-lasting non-zero value might indicate topic deafness, possibly due to a failure of topic resolution.

* [lbtrm_unknown_msgs_rcved](https://ultramessaging.github.io/currdoc/doc/API/structlbm__context__stats__t__stct.html#ad2fd3379b1a47479c7b64e873118be5c),
[lbtru_unknown_msgs_rcved](https://ultramessaging.github.io/currdoc/doc/API/structlbm__context__stats__t__stct.html#aaba67cae496b93572e2455a25776babe) -
Ideally these counters should either be zero, or be growing only slowly.
Fast growth typically means sub-optimal configuration of publishers'
[transport sessions](https://ultramessaging.github.io/currdoc/doc/Design/fundamentalconcepts.html#transportsessions).

* 

# Store Statistics

TBD

# DRO Statistics

TBD

# SRS Statistics

The SRS also publishes statistics related to its operation.
These normally do not need to be proactively monitored.
If you have problems with topic resolution,
then the statistics can be useful for diagnosing.
