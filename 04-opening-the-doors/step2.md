# Step 2: Create a Service

Create `service.yaml`:

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
    - port: 80         # port of the Service inside the cluster
      targetPort: 80   # port the container listens on
      nodePort: 30080  # port opened on every node
EOF
```{{exec}}

How it works:
- `selector` finds Pods by label, matching `app: my-app` in the Deployment
- `type: NodePort` opens port `30080` on every node so traffic from outside can come in

Apply it:

```bash
kubectl apply -f service.yaml
```{{exec}}

```bash
kubectl get service my-app-service
```{{exec}}

> 💡 Stuck? Use the ready-made copy: `cp service.yaml.solution service.yaml`

Service types in short: **ClusterIP** (default, internal only), **NodePort** (opens a port on each node), **LoadBalancer** (asks the cloud for a public load balancer).
