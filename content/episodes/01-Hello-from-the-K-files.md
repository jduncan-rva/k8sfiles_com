---
title: "Episode 01 Hello From the K Files"
date: 2020-01-12T13:35:04-05:00
draft: false
image: "/images/blog-default.jpg"
summary: "We get our legs underneath ourselves by going through some interesting news items we found that morning."
author: "The K Files Team"
categories: 
  - Episodes
tags:
  - conferences
  - kubernetes
  - alpha
  - prod
  - technical-difficulties

# only the most recent 3 episodes should be featured
# all others should be "episode"
type: featured
---

In our first episode we cover some interesting news of the day, as well as some of our personal highlights around recent [KubeCon](https://events19.linuxfoundation.org/events/kubecon-cloudnativecon-north-america-2019/) and [re:Invent](https://reinvent.awsevents.com/) conferences. Here's what we talked about (more or less).

{{< buzzsprout 
url = "2470697-episode-01-getting-started-grab-bag.js"
>}}

{{< tip 
title = "Visit from the Technical Difficulty Gremlin"
>}}
Jamie had some mic issues that are resolved after this episode. We're so sorry he sounds like he was recording from an airplane bathroom at 34,000 feet!
{{< /tip >}}

#### Show Notes

* At their North America VMWorld conference, VMWare mentioned that their Project Pacific could deliver up to 8% faster performance in VMs than on bare metal. After some belly-laughs and confusion, here is [some clarification](https://blogs.vmware.com/performance/2019/10/how-does-project-pacific-deliver-8-better-performance-than-bare-metal.html). 
* An increasing number of Ops professionals have only administered cloud infrastructure. They've never operated in an environment that had to account for cabling, racking, cooling, and power budgets.
* In Kubernetes 1.17, the [Service Topology](https://kubernetes.io/docs/concepts/services-networking/service-topology/) capability allows you to route traffic based on your cluster topology like rack, availability zone, etc.
* A fun discussion around "Controllers vs. Operators", and where to use which term when. A ton of links around this are on the internet. A personal favorite is [from Josh Rosso](https://octetz.com/docs/2019/2019-10-13-controllers-and-operators/)
* The [attendee statistics](https://www.cncf.io/blog/2020/01/09/kubecon-cloudnativecon-north-america-2019-conference-transparency-report-the-biggest-kubecon-cloudnativecon-to-date/) for KubeCon 2019 North America are pretty amazing.
* The [Kubernetes Community](https://kubernetes.io/community/) takes inclusiveness very seriously. 
* [The Heirachical Namespace Controller](https://github.com/kubernetes-sigs/multi-tenancy/tree/master/incubator/hnc) could change how we think about tenancy inside Kubernetes.
{{< tweet 1207529803093549056 >}}
* John's dislike of Docker, Inc. may well know no bounds
{{< tweet 1194801181853396992 >}}
* [Amazon's Global Accelerator](https://aws.amazon.com/global-accelerator/) brings your traffic into their internet, and back to par with the other hyperscale providers.
* Whatever happened to [kubevirt](https://github.com/kubevirt)?
* Being a shadow on the Kubernetes sig-release team could be cool!
{{< tweet 1207059454841229313 >}}