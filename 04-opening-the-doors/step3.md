# Step 3: Call the app

Reach the app through the Service's stable cluster IP:

```bash
SVC_IP=$(kubectl get svc my-app-service -o jsonpath='{.spec.clusterIP}')
curl $SVC_IP
```{{exec}}

Now through the NodePort, as outside traffic would:

```bash
curl localhost:30080
```{{exec}}

The output includes a `Hostname:` line, which is the name of the Pod that answered. Check which Pods back the Service:

```bash
kubectl get endpoints my-app-service
```{{exec}}

Those are the Pod IPs the Service sends traffic to. If a Pod is replaced, the list updates automatically.
