# Step 4: See the load balancing

Send the same 20 requests again:

```bash
for i in $(seq 1 20); do curl -s localhost:30080 | grep Hostname; done | sort | uniq -c
```{{exec}}

This time the requests are **spread across the 5 Pods**. The Service did the balancing for you.

Check that the Service knows about all 5 Pods:

```bash
kubectl get endpoints my-app-service
```{{exec}}

## Scale back down

Traffic calmed down? Scale in to save resources:

```bash
kubectl scale deployment my-app --replicas=2
kubectl get pods
```{{exec}}

> 🌐 You can also view the app in the browser: [ACCESS APP]({{TRAFFIC_HOST1_30080}})
