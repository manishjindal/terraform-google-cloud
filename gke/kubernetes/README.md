## Master
- Controller Manager
    - Node Controller
    - Replication Controller
- Kube-Scheduler
- Kube API Server
- ETCD
- kube-proxy

```
root@k8s-node-01:~# kubectl get po --all-namespaces
NAMESPACE     NAME                                  READY   STATUS    RESTARTS   AGE
kube-system   coredns-5d78c9869d-9mtbc              1/1     Running   0          236d
kube-system   coredns-5d78c9869d-dht9l              1/1     Running   0          236d
kube-system   etcd-k8s-node-01                      1/1     Running   0          236d
kube-system   kube-apiserver-k8s-node-01            1/1     Running   0          236d
kube-system   kube-controller-manager-k8s-node-01   1/1     Running   0          236d
kube-system   kube-proxy-nggtt                      1/1     Running   0          236d
kube-system   kube-scheduler-k8s-node-01            1/1     Running   0          236d
```


## Worker
- Kubelet
	- Agent That runs on each nodes in the cluster, Listens for intruction from Kube API Server
	- Responsible for managing all activity on the nodes, including communicating with master, send status report to master, load appropriate container,..
- Kube Proxy
	- Enable communication between nodes.
- Container Runtime Engine (docker, rkt….)



### kube-proxy - CNI
Kube-proxy enables communication between pod, svc or we we can say communication within/outside cluster

### CoreDNS - DNS solution
Kube-dns < 1.12
core-dns > 1.12

K8S deploys a built in dns server (kube/core dns) when you deploy k8s cluster, when you setup cluster manually then you need to do it by yourself.

When a service is created k8s’s dns server creates a record which maps service name with the service’s ip address, and within the cluster you can reach out to the service by it’s name.