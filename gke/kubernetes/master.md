To setup k8s using kubeadm tool, you need to install following cli utilities:

kubeadm: Needs to be install on master node, as this will be used to setup control plane node and on worker node this will be used to join the master node

kubelet: This needs to be installed on all the nodes, as this is used for pod management

kubectl: This needs to be install on the node from where you want to interact with k8s cluster

```
kubeadm init —pod-netwrok-cide 10.244.0.0/16 —apiserver-advertise=192.168.56.2 
```

```
kubeadm init --pod-network-cidr 10.244.0.0/16 --apiserver-advertise-address=35.239.75.212 (host machine ip)
```


```
kubectl  get po -n kube-system
NAME                                      READY   STATUS    RESTARTS   AGE
coredns-78fcd69978-gqkxl                  0/1     Pending   0          14m
coredns-78fcd69978-twgx5                  0/1     Pending   0          14m
etcd-kubeadm-cluster                      1/1     Running   0          14m
kube-apiserver-kubeadm-cluster            1/1     Running   0          14m
kube-controller-manager-kubeadm-cluster   1/1     Running   0          14m
kube-proxy-c48gv                          1/1     Running   0          14m
kube-scheduler-kubeadm-cluster            1/1     Running   0          14m
```

You must deploy a Container Network Interface (CNI) based Pod network add-on so that your Pods can communicate with each other. Cluster DNS (CoreDNS) will not start up before a network is installed.

Several external projects provide Kubernetes Pod networks using CNI, some of which also support Network Policy. 

See a list of add-ons that implement the Kubernetes networking model. 


```
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n’)"

https://github.com/weaveworks/weave/issues/2736

kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')&env.IPALLOC_RANGE=10.32.0.0/16"
```
