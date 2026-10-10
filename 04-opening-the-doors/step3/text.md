# Step 3: Call the app

Reach the app through the Service, the way outside traffic would:

```bash
curl localhost:30080
```{{exec}}

You get `Hello from my-app! Host: my-app-xxxx | Node: v18...`. The `Host` is the name of the Pod that answered.

Run it a few times:

```bash
for i in 1 2 3 4 5 6; do curl -s localhost:30080; done
```{{exec}}

The Service spreads requests across your 2 Pods, so you'll likely see both names. Click **Check** ✅.

> 🆘 **Stuck?**
> - `Connection refused`: wait 10 seconds and retry, then check `kubectl get pods`.
> - No answer at all: confirm the Service with `kubectl get service my-app-service` and the Pods with `kubectl get pods`.
