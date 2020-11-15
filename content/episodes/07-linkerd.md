---
title: "Episode 07 Linkerd"
date: 2020-08-16T15:26:12-04:00
draft: false
image: "/images/07/linkerd-logo.png"
summary: "Taking a more complete look at Linkerd, the original service mesh."
author: "The K Files Team"
categories: 
  - Episodes
tags:
  - linkerd
  - service mesh

# only the most recent 3 episodes should be featured
# all others should be "episode"
type: episode
---

In episode 7, we dig into [Linkerd's](https://linkerd.io/) feature set as well as its place in the larger service mesh ecosystem. Short version: we're impressed with the features it brings to bare; especially for having such a low barrier to entry. 

{{< buzzsprout 
url = "5019596-episode-07-linkerd.js"
>}}

[Transcript](/transcripts/episode-07-linkerd_otter.ai.txt)

#### Links and notes from this episode

* [Black Lives Matter](https://blacklivesmatter.com/)
* [Interesting article about innovation for Black Americans prior to Plessy v Ferguson](https://www.npr.org/2020/06/12/876097416/patent-racism)
* Linkerd is a lightweight service mesh project currently hosted in the CNCF
* [It’s a general purpose service mesh with custom built components](https://linkerd.io/2/design-principles/)
* The data plane (Proxy) for version 2.x is written in Rust and focuses on performance especially at the 99th percentile
* The control plane is written in Go to tightly integrate with Kubernetes
* The project largely takes a lean-startup type approach focusing on operational simplicity and drastically lowers the barrier to manage east-west traffic in a cluster
* Platform owners are the largest beneficiaries so that they can enforce policies like mTLS out of the box
* [Some of the cooler features include easy of use and install, golden metrics out of the box, automatic protocol detection, network tracing, HTTP/2  multiplexing, and a custom built CNI plugin to remove some of the overhead of sidecar management](https://linkerd.io/2/features/)
* Main difference between Linkerd and Istio is philosophical. Linkerd philosophy is focused on ease of use, minimalist approach to make the service mesh something the user does not need to think about the service mesh as much.
* Linkerd has quietly put a good amount of end-users in production and is here to stay for the long haul
* [Kinvolk.io blog comparing Linkerd and Istio](https://kinvolk.io/blog/2019/05/performance-benchmark-analysis-of-istio-and-linkerd/)
* {{< youtube sq8nsjuJqO4 >}}
* [Google SRE Handbook](https://landing.google.com/sre/sre-book/chapters/monitoring-distributed-systems/#xref_monitoring_golden-signals)
