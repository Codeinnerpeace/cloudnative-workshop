# Step 3: Kill a Pod and watch it heal 🩹

Time for chaos. List the Pods:

```bash
kubectl get pods
```{{exec}}

Delete one:

```bash
kubectl delete pod $(kubectl get pods -o name | head -1)
```{{exec}}

Immediately list the Pods again:

```bash
kubectl get pods
```{{exec}}

A **new Pod with a different name** appears. You asked for 2, there was 1, so Kubernetes made a replacement.

Try something bolder, deleting **all** the Pods at once:

```bash
kubectl delete pods --all
kubectl get pods
```{{exec}}

They come back. You never told Kubernetes *how* to recover, only *what you want*. Click **Check** ✅ once 2 Pods are `Running` again.

> 🆘 **Stuck?** Wait a few seconds and run `kubectl get pods` again. New Pods need a moment to start.

> 🎁 **Bonus:** real apps also add *health checks* (`livenessProbe`) so Kubernetes restarts an app that hangs but hasn't crashed. Worth looking up later!
