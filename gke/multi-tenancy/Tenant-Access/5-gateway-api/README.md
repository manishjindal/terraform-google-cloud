https://cloud.google.com/kubernetes-engine/docs/how-to/deploying-gateways

```
gcloud container clusters update <cluster-name> \
    --gateway-api=standard \
    --location=<cluster-location>
```

```
kubectl apply -f gateway.yaml
```

```
kubectl apply -f https://raw.githubusercontent.com/GoogleCloudPlatform/gke-networking-recipes/main/gateway/gke-gateway-controller/app/store.yaml
```

```
curl http://<external-ip>
```


```
curl http://<external-ip>/de
```


```
curl http://<external-ip> -H "env: canary"
```


