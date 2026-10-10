# Step 1: Why manual containers fail

With plain Docker, if a container dies, **it stays dead** until someone notices and restarts it. A human becomes the monitoring system. 😴

Kubernetes replaces that human. First, check that the cluster is ready:

```bash
kubectl get nodes
```{{exec}}

You should see two nodes (`controlplane` and `node01`) with status `Ready`. If not, wait a few seconds and run it again.

A few words you'll meet:
- **Node**: a machine in the cluster
- **Pod**: the smallest unit in Kubernetes, a wrapper around one or more containers
- **Deployment**: says "keep N copies of this Pod running"
