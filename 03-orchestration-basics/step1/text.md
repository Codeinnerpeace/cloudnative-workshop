# Step 1: Check the cluster

A Kubernetes **cluster** is a group of machines (**nodes**) managed together. Check yours:

```bash
kubectl get nodes
```{{exec}}

You should see two nodes, `controlplane` and `node01`, both `Ready`. Click **Check** ✅.

> 🆘 **Stuck?** If a node says `NotReady`, wait 30 seconds and run the command again.
