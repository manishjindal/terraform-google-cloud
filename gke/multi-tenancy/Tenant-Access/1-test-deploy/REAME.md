## Private cluster

## Installation of curl command on ubuntu pod,
By default the pods in private cluster are not able to communicate to outside world,
We need to create NAT gateway so that necessary binaries can be downloaded and installed.


```
kubectl apply -f tenant-a/deploy.yaml
kubectl apply -f tenant-b/deploy.yaml
kubectl apply -f tenant-c/deploy.yaml
```

```
kubectl apply -f ubuntu.yaml

kubectl exec -it ubuntu -- bash

apt-get update
apt-get install curl
```


```
curl hello-kubernetes-first.team-a
curl hello-kubernetes-first.team-b
curl hello-kubernetes-first.team-c
```