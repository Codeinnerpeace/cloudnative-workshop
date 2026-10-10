# Step 3: Scale out

One command asks for 5 copies:

```bash
kubectl scale deployment my-app --replicas=5
```{{exec}}

Watch the new Pods start. Press `Ctrl+C` once all 5 are `Running`:

```bash
kubectl get pods -o wide -w
```{{exec}}

Notice that Kubernetes spread Pods across both nodes (see the `NODE` column).

Confirm the Deployment's state:

```bash
kubectl get deployment my-app
```{{exec}}

You should see `5/5` ready. Nothing else changed: same image, same Service.
