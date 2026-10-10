# Step 1: Deploy the app

Make sure the cluster is ready, then deploy the app from Module 3:

```bash
kubectl get nodes
```{{exec}}

```bash
cd /root/workshop
kubectl apply -f deployment.yaml
kubectl rollout status deployment/my-app
```{{exec}}

Look at the Pods and their IPs:

```bash
kubectl get pods -o wide
```{{exec}}

Those IPs are internal and change whenever a Pod is replaced. We need something stable.
