# Step 3: Tag and push

An image's full name says where it lives: `registry-address/name:version`. To push to our registry, we **tag** the image with that address:

```bash
docker tag my-app:1.0 localhost:5000/my-app:1.0
```{{exec}}

```bash
docker images | grep my-app
```{{exec}}

It's the same image with two names. Now **push** it:

```bash
docker push localhost:5000/my-app:1.0
```{{exec}}

Ask the registry what it stores now:

```bash
curl localhost:5000/v2/_catalog
curl localhost:5000/v2/my-app/tags/list
```{{exec}}

You should see `my-app` and the tag `1.0`. ✅
