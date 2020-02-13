---
title: "Episode 04 Opa"
date: 2020-02-12T18:11:46-08:00
draft: false
image: "/images/04/turnstile.jpg"
summary: "We dig down into what OPA is, how it works with Kubernetes. We focus on how to start consuming it, and some of the things that you discover about your security posture after you start creating declarative OPA policies."
author: "The K Files Team"
categories: 
  - Episodes
tags:
  - 

# only the most recent 3 episodes should be featured
# all others should be "episode"
type: featured
---

We dig down into what OPA is, how it works with Kubernetes. We focus on how to start consuming it, and some of the things that you discover about your security posture after you start creating declarative OPA policies.

{{< buzzsprout 
url = "2730940-episode-04-open-policy-agent-opa.js"
>}}

#### Links and notes from this episode

* The [OPA homepage](https://www.openpolicyagent.org/)
* The [Rego Playground](https://play.openpolicyagent.org/) and an example to get started with 

```
package kubernetes.admission 

deny[msg] {

   #Calling kind twice because the pod is nested in the AdmissionReview object
    input.request.kind.kind == "Pod"
    c := input.request.object.spec.containers[i]
    c.securityContext.privileged
    msg := sprintf("Privileged container is not allowed: %v, securityContext: %v", [c.name, c.securityContext])

}

{
  "kind": "AdmissionReview",
  "request": {
    "kind": {
      "kind": "Pod",
      "version": "v1"
    },
    "object": {
      "metadata": {
        "name": "kfiles-app"
      },
      "spec": {
        "containers": [
          {
            "name": "pause",
            "image": "k8s.gcr.io/pause",
            "securityContext": {
              "privileged": false
            }
          }
        ]
      }
    }
  }
}

```
* Provisioning problem (i.e. creating NetworkPolicy, Quotas, PVs, etc when a namespace is created), Goldman Sachs created a custom controller to enforce OPA policies for this purpose 

{{< youtube lYHr_UaHsYQ >}}

* Pod Security policies [re-written as OPA policies](https://github.com/open-policy-agent/gatekeeper/tree/master/library/pod-security-policy/)
* [Kubesec](https://kubesec.io/) is a security risk analysis tool for Kubernetes
* [Istio policies](https://github.com/crcsmnky/gatekeeper-istio) in Rego
* OPA policies [embedded into WebAssembly](https://github.com/open-policy-agent/npm-opa-wasm)
* OPA community update from KubeCon

{{< youtube xrGHSdhYh4Y >}}

* How Yelp leverages OPA 

{{< youtube Z6aN3Smt-9M >}}

* Enforcing service mesh structure using Gatekeeper 

{{< youtube 90RHTBinAFU >}}

* 