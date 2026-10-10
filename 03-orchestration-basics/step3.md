# Step 3: Kill a Pod and watch it heal 🩹

Time for some chaos. List your Pods and pick one:

```bash
kubectl get pods
```{{exec}}

This command deletes the first Pod automatically:

```bash
POD=$(kubectl get pods -l app=my-app -o jsonpath='{.items[0].metadata.name}')
echo "Deleting $POD"
kubectl delete pod $POD
```{{exec}}

Right away, list the Pods again:

```bash
kubectl get pods
```{{exec}}

A **new Pod** with a different name appears. Kubernetes noticed you had 1 Pod but wanted 2, so it created a replacement. 🎉

Look at the events to see what happened:

```bash
kubectl get events --sort-by=.lastTimestamp | tail -8
```{{exec}}

Try it again, or delete both Pods at once:

```bash
kubectl delete pods -l app=my-app
kubectl get pods
```{{exec}}

You never told Kubernetes *how* to recover. You only told it *what you want*.
