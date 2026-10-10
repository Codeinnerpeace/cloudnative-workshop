# Step 1: Deploy the app

Deploy the app from Module 3 (2 copies):

```bash
cd /root/workshop
kubectl apply -f deployment.yaml
kubectl rollout status deployment/my-app
```{{exec}}

```bash
kubectl get pods
```{{exec}}

Both Pods should be `Running`. Click **Check** ✅.

> 🆘 **Stuck?** `ImagePullBackOff`? Run `kubectl describe pod -l app=my-app`. The image may not be published or public yet. `kubectl get nodes` returning errors? The cluster is still starting; wait a minute.
