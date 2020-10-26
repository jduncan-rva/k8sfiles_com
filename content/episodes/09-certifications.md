---
title: "Episode 09 Certifications"
date: 2020-10-25T12:01:24-04:00
draft: false
image: "/images/09/certifications.jpg"
summary: "We dig down into how the CKA Kubernetes certification looks and feels, and what value certifications bring our industry (hint: it's a lot on balance)."
author: "The K Files Team"
categories: 
  - Episodes
tags:
  - certifications
  - cka
  - ckad
  - cks
  - linux foundation
  - career path
type: featured

# only the most recent 3 episodes should be featured
# all others should be "episode"
type: featured
---

We dig down into how the CKA Kubernetes certification looks and feels, and what value certifications bring our industry (hint: it's a lot on balance). To prepare for this episode John took 4 exams in 17 days while Jamie took 2 and has another scheduled for early November 2020. So this isn't abstract, this is real life that we've recently lived.

{{< buzzsprout 
url = "6019630-episode-09-certifications.js"
>}}

[Transcript](/transcripts/episode-09-certifications_otter.ai.txt)

#### Links and Notes

Highlights and fun information we talked about during this episode.

##### Exams we discussed

* [Certified Kubernetes Administrator Exam by CNCF](https://www.cncf.io/certification/cka/)
* [Certified Kubernetes Application Developer by CNCF](https://www.cncf.io/certification/ckad/)
* [Certified Kubernetes Security Specialist by CNCF](https://training.linuxfoundation.org/certification/certified-kubernetes-security-specialist/)

##### Links

* [Udemy CKA Practice Exams and Courses](https://www.udemy.com/course/certified-kubernetes-administrator-with-practice-tests/)
* [Kubernetes Startup Probes](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-startup-probes)
* [How to find out the stage of a given Kubernetes API Feature](https://kubernetes.io/docs/reference/command-line-tools-reference/feature-gates/)
[CKA Official Docs and Tips](https://docs.linuxfoundation.org/tc-docs/certification/tips-cka-and-ckad)
[CKAD Official Docs and Tips](https://docs.linuxfoundation.org/tc-docs/certification/faq-cka-ckad)

##### John's CKA/CKAD Tips and Tricks

* Review the curriculum and program changes
* Don’t write YAML from scratch by hand. Start with an example from the docs, or copy and existing object with kubectl get --dry-run=client -o yaml > file.yaml
* Know all the short names. $ kubectl describe will show them all
* This is the only place in the Kubernetes docs where it shows you how to install a CNI plugin without reaching back to a 3rd party site
* The exam is not as much about total knowledge as it is about your implementation skills and time management. You can answer the questions in any order so if a question is hard or you are having problems troubleshooting it, just flag the question and come back later. In my exam, I found the last question was very easy to answer, so don’t stick with one question for a long time. Moreover, it’s also very convenient to come back to the flag question/s again at any time.
* Review JSONPath: Check out docs and tutorial if needed
* Know how to easily access the kubectl reference docs that have great examples
* Know vi/vim. There are tons of tutorials out there, and exiting it isn't really _that_ hard.
* If possible, use kubeadm for your practice since it will most reflect the file/config layout for your exam, try building/updating a single control plane node as well as a multi control plane node cluster.
* Be able to do all the examples in the docs!
* A lot of other prep guides say to go through Kubernetes The Hard Way. Personally I think that can be a good learning exercise but the ROI for CKA or CKAD is really low compared to just doing the examples in the docs on a kubeadm cluster.
* Practice the kubectl cheatsheet commands (it’s accessible during the exam)
* Practice with etcdctl (configuration, setup, backup, restore) - this isn’t covered very well in the Kubernetes docs since technically etcd is a separate project but overall get familiar with things like backup/restore
* Super cool graphic of the old syllabus vs the new: https://monicabhartiya.com/posts/kubernetes-syllabus-update
* Highly recommend the Udemy CKA/CKAD with Practice Exam courses by Mumshad Mannambeth. Good foundational concepts as well as practice exams that mostly matched the overall exam in terms of difficulty. Also a nice community on Slack that encourages each other.
* Practice ROI is kubectl. Kubectl. Kubectl. Mock exams. Examples in the docs.
* This is important. To take the exam you need to install a browser extension that gives PSI God Mode and full browser history access. Make a note to remove this extension after your exam!

##### John's Lessons Learned from his exam saga

* startupProbes
* kubectl explain pod --recursive | grep -A5 tolerations
* kubectl apply view-last-applied
* pods have DNS
* Kubernetes will not allow you to modify the nodeName field. Another way to assign a nodeName of an existing pod is to create a Binding object and sending to the API (mimic’ing what the scheduler actually does). In the binding object you create a kind node with the name of the node. You then send a curl request with the Binding object in the JSON format.
https://stackoverflow.com/questions/59451056/differences-between-sidecar-and-ambassador-and-adapter-pattern
* When editing a pod, you CANNOT edit specifications of an existing POD other than:
  * spec.containers[*].image
  * spec.initContainers[*].image
  * spec.activeDeadlineSeconds
  * spec.tolerations

* You cannot edit the environment variables, service accounts, resource limits (all of which we will discuss later) of a running pod. But if you really want to, you have 2 options:

  * Run the kubectl edit pod <pod name> command.  This will open the pod specification in an editor (vi editor). Then edit the required properties. When you try to save it, you will be denied. This is because you are attempting to edit a field on the pod that is not editable. 
 
  * Run the kubectl edit pod <pod name> command.  This will open the pod specification in an editor (vi editor). Then edit the required properties. When you try to save it, you will be denied. This is because you are attempting to edit a field on the pod that is not editable.

    A copy of the file with your changes is saved in a temporary location as shown above. You can then delete the existing pod by running the command:

    ```
    $ kubectl delete pod webapp
    ```

    Then create a new pod with your changes using the temporary file (filename may vary):

    ```
    $ kubectl create -f /tmp/kubectl-edit-ccvrq.yaml
    ```

* A DaemonSet object has the same format as the ReplicaSet object
* The API Server is aware of the static pods.

