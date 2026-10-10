# Step 1: Start small

The Deployment (1 replica) and Service from earlier modules are provided. Wait for the cluster, then deploy:

```bash
kubectl get nodes
```{{exec}}

```bash
cd /root/workshop
kubectl apply -f deployment.yaml -f service.yaml
kubectl rollout status deployment/my-app
```{{exec}}

```bash
kubectl get pods
```{{exec}}

You should see exactly **one** Pod.
