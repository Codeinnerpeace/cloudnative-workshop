# Step 3: Tag and push

An image's full name says where it lives: `registry-address/name:version`. To send it to our registry, **tag** it with that address:

```bash
docker tag my-app:1.0 localhost:5000/my-app:1.0
```{{exec}}

It's still the same image, now with a second name. **Push** it (upload):

```bash
docker push localhost:5000/my-app:1.0
```{{exec}}

Ask the registry what it holds now:

```bash
curl localhost:5000/v2/_catalog
```{{exec}}

You should see `my-app`. Click **Check** ✅.

> 🆘 **Stuck?**
> - `An image does not exist locally with the tag`? Run Step 1 again, then re-run the `docker tag`.
> - `connection refused` on push? The registry isn't running. Go back to Step 2.
