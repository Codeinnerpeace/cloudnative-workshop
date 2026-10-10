# Step 2: Traffic spike!

Simulate 20 users. Each answer includes the Pod's name; we count how many answers each Pod gave:

```bash
for i in $(seq 1 20); do curl -s localhost:30080 | grep -o 'Host: [^ ]*'; done | sort | uniq -c
```{{exec}}

All 20 requests land on the **same single Pod**. In real life, that Pod would be overwhelmed. Time to scale. 💪

Click **Check** ✅ after running it.

> 🆘 **Stuck?** `Connection refused`? Wait 10 seconds and retry. Make sure Step 1 finished (`kubectl get pods`).
