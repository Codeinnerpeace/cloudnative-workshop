# Step 3: Scale out

One command asks for 5 copies:

```bash
kubectl scale deployment my-app --replicas=5
```{{exec}}

Check the Pods. Run this a few times until all 5 are `Running`:

```bash
kubectl get pods
```{{exec}}

Nothing else changed: same image, same Service. Kubernetes just ran more copies, and spread them across both nodes. Click **Check** ✅ when all 5 are ready.

> 🆘 **Stuck?** Pods in `ContainerCreating` or `Pending`? Wait 20 seconds and check again.
