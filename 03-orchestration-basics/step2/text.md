# Step 2: Deploy to Kubernetes

You describe what you want in a YAML file. Read it:

```bash
cd /root/workshop
cat deployment.yaml
```{{exec}}

You only need four things:
- `replicas: 2`: keep **2 copies** running
- `image: ghcr.io/codeinnerpeace/my-app:1.0`: *your* app, pulled from the registry
- `labels` / `app: my-app`: a name tag that other things use to find these copies
- `containerPort: 3000`: the port the app listens on

Tell Kubernetes about it:

```bash
kubectl apply -f deployment.yaml
```{{exec}}

```bash
kubectl get pods
```{{exec}}

Each copy is a **Pod**. Run the command a few times until both say `Running` (it takes a few seconds to pull the image).

Now the "works everywhere" moment. Ask the app inside a Pod which Node.js it has:

```bash
kubectl exec deploy/my-app -- node --version
```{{exec}}

It's `v18.x`, the same as on your first machine, though nobody installed Node.js on this cluster. Click **Check** ✅.

> 🆘 **Stuck?**
> - Pod status `ErrImagePull` or `ImagePullBackOff`: the cluster can't download the image. Run `kubectl describe pod -l app=my-app` and read the last lines. This usually means the image isn't built/published yet or its package isn't public.
> - `ContainerCreating` for a while: normal on first pull, wait a bit.
