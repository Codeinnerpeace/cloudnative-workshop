# Step 2: Create a Service

Create `service.yaml`. Click to write it:

```bash
cd /root/workshop
cat > service.yaml <<'EOF'
apiVersion: v1
kind: Service
metadata:
  name: my-app-service
spec:
  type: NodePort
  selector:
    app: my-app        # send traffic to Pods with this label
  ports:
    - port: 80         # port of the Service
      targetPort: 3000 # port the app listens on
      nodePort: 30080  # port opened on every node
EOF
```{{exec}}

How it works:
- `selector: app: my-app` finds your Pods by their label (the same label as in the Deployment)
- `nodePort: 30080` opens a door on every machine in the cluster, so outside traffic can come in

Apply it:

```bash
kubectl apply -f service.yaml
kubectl get service my-app-service
```{{exec}}

Click **Check** ✅.

> 🆘 **Stuck?** Typo in the YAML? Use the ready-made copy: `cp service.yaml.solution service.yaml` then apply again. YAML is picky about spaces, which is normal for everyone.
