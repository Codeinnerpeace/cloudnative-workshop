# Step 1: Start small

Deploy the app with **1 copy**, plus its Service from Module 4:

```bash
cd /root/workshop
kubectl apply -f deployment.yaml -f service.yaml
kubectl rollout status deployment/my-app
```{{exec}}

```bash
kubectl get pods
```{{exec}}

You should see exactly **one** Pod. Click **Check** ✅.

> 🆘 **Stuck?** `ImagePullBackOff`? Run `kubectl describe pod -l app=my-app`. The image may not be published or public yet.
