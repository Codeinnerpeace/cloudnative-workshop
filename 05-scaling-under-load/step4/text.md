# Step 4: See the load balancing

Send the same 20 requests again:

```bash
for i in $(seq 1 20); do curl -s localhost:30080 | grep -o 'Host: [^ ]*'; done | sort | uniq -c
```{{exec}}

This time the requests are **spread across the 5 Pods**. The Service did the balancing for you, with no change to the app.

> 🌐 View it in the browser too: [ACCESS APP]({{TRAFFIC_HOST1_30080}})
