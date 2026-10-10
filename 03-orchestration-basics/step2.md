# Step 2: Deploy to Kubernetes

Kubernetes is configured with YAML files describing the desired state. Read ours:

```bash
cd /root/workshop
cat deployment.yaml
```{{exec}}

The key parts:
- `replicas: 2`: we want 2 Pods
- `image: traefik/whoami`: a small public web app that prints its Pod name
- `livenessProbe` / `readinessProbe`: health checks so Kubernetes can detect broken or not-yet-ready containers

> ℹ️ Kubernetes pulls images from a registry (like the one you used in Module 2). This cluster can't reach your local registry, so we use a public image.

Apply it:

```bash
kubectl apply -f deployment.yaml
```{{exec}}

Watch the Pods start. Press `Ctrl+C` once both show `Running`:

```bash
kubectl get pods -o wide -w
```{{exec}}

See the Deployment's view:

```bash
kubectl get deployment my-app
```{{exec}}
