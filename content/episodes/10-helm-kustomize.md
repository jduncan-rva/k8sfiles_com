---
title: "Episode 10 Helm and Kustomize Compared"
date: 2020-11-14T21:57:58-05:00
draft: false
image: "/images/10/helm.jpg"
summary: "In episode 10 we discuss the Helm and Kustomize automation tools. We start the conversation thinking that one is an evolution of the other, but we don't end up that way."
author: "The K Files Team"
categories: 
  - Episodes
tags:
  - helm
  - kustomize
  - ci/cd
  - devops

# only the most recent 3 episodes should be featured
# all others should be "episode"
type: featured
---

In episode 10 we discuss the `helm` and `kustomize` automation tools. We start the
conversation thinking that one is an evolution of the other, but we don't end up
that way. We were all a little surprised at where we ended up for Episode 10. We
hope you are, too.

{{< buzzsprout 
url = "6376384-episode-10-helm-and-kustomize-compared.js"
>}}

[Transcript](/transcripts/10-helm-kustomize_otter.ai.srt)

Our biggest connection is that `helm` and `kustomize` don't solve exactly the same
problem. Most of the reading you do out on the internet compares them in a
direct way. We started there. But we didn't end up there.

Kustomize is designed to deploy applications and artifacts when
everyone is collaborating via version control. But that's not always the case.
And that's where `helm` comes into play. 

When you need to distribute you application in a more packaged manager to end
users or to co-workers who don't have access to your version control, `helm` is
the best tool that we've discovered so far.

#### Links and notes from this episode

* [Helm project](https://github.com/helm/helm)
* [Kustomize SIG](https://github.com/kubernetes-sigs/kustomize)
* [Photo credit](https://en.wikipedia.org/wiki/Ship%27s_wheel#/media/File:US_Navy_050823-N-9076B-001_Electrician's_Mate_1st_Class_Aaron_Walker_speaks_to_chief_petty_officer_selectees_as_he_stands_at_the_helm_of_USS_Constitution_in_Boston.jpg)