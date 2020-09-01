---
title: "Episode 08 Service Mesh Wrap Up"
date: 2020-08-31T20:35:48-04:00
draft: false
image: "/images/08/wrapped-up-bike.jpg"
summary: "Wrapping up our 4-part Service Mesh series with the SMI, OSM, and Consul"
author: "The K Files Team"
categories: 
  - Episodes
tags:
  - service mesh
  - osm
  - open service mesh
  - smi
  - service mesh interface
  - hashicorp
  - consul

# only the most recent 3 episodes should be featured
# all others should be "episode"
type: featured
---

{{< buzzsprout 
url = "5218129-episode-08-smi-osm-consul-and-service-mesh-wrap-up.js"
>}}

[Transcript](/transcripts/episode-08-service-mesh-wrap-up_otter.ai.txt)

**Note - unlike other show notes, for this wrap-up episode we decided to provide a quick summary of our takes on the different service meshes we investigated**

We wrap up our first (but likely not our last) series on Service Meshes by talking through the [Service Mesh Intrface](https://smi-spec.io/) (SMI), [Open Service Mesh](https://openservicemesh.io/) (OSM), and [Hashicorp's Consul](https://www.consul.io/). We start with the SMI, debating its name as it's more of a spec or guidelines than an interface. We then go through highlights for both OSM and Consul. Our final votes for the 4 meshes we discussed:

* **Istio - _Recommend_:** The most feature-rich service mesh with the biggest community (enterprise and open source). It's hard to get in trouble by going with what everyone else is using. Istio is no different.

* **Linkerd - _Recommend_:** We were all mildly surprised at the user experience of Linkerd and how effectively the 2.x release handles the majority of use cases required of a service mesh. Yes, it does lack some of Istio's features. But it makes up for at least some of that with ease of use and configuration. For a lot of customers, Linkerd can be all the service mesh they'll ever need.

* **Open Service Mesh - _Investigate_:** Being so new, it's hard to have a firm opinion here. So a mild _investigate_ is our vote. If you're leveraging Ansible then it's a great idea for you to investigate OSM. We all agreed that the integration there will only get tighter.

* **Consul - _Investigate_:** One of the more mature meshes out there, Consul focuses on much more than Kubernetes. That's a blessing for it's list of use cases. But it also means that the usabiility of Consul isn't on par with the other meshes we investigated. With that said, it's been in production for a lot of customers for a long time. That always earns points on our scorecard.

So there are no service meshes that we wouldn't use given the right circumstances, and Linkerd was a pleasant surprise for all of us.