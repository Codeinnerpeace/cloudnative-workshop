# Step 2: Start a registry

A registry is just software, so we can run one in a container. Docker publishes an official one:

```bash
docker run -d --name registry -p 5000:5000 registry:2
```{{exec}}

Ask it what it stores. It's empty:

```bash
curl localhost:5000/v2/_catalog
```{{exec}}

Expected: `{"repositories":[]}`. Click **Check** ✅.

> ℹ️ In real life the registry is a separate server (Docker Hub, `ghcr.io`, AWS...). Here it runs on the same machine, so we are *simulating* shipping. The commands are the same either way.

> 🆘 **Stuck?** `name "/registry" is already in use`? Run `docker rm -f registry` and start it again.
