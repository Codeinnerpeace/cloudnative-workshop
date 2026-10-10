# Step 2: Start a registry

A registry is itself software that can run in a container. Docker publishes an official image called `registry`:

```bash
docker run -d --name registry -p 5000:5000 registry:2
```{{exec}}

Check it is up. This asks the registry what it stores. It should answer with an empty list:

```bash
curl localhost:5000/v2/_catalog
```{{exec}}

Expected: `{"repositories":[]}`
