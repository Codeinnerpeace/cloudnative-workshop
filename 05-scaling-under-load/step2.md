# Step 2: Traffic spike!

Simulate 20 users hitting the app. The `Hostname:` line shows which Pod answered; we count the answers per Pod:

```bash
for i in $(seq 1 20); do curl -s localhost:30080 | grep Hostname; done | sort | uniq -c
```{{exec}}

All 20 requests land on the **same single Pod**. In real life, that Pod would be overwhelmed. Time to scale. 💪
