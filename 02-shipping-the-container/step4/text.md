# Step 4: Pull and run, like a fresh machine

To prove the registry works, delete every local copy of the image:

```bash
docker rmi my-app:1.0 localhost:5000/my-app:1.0
docker images my-app
```{{exec}}

It's gone. Now run it from the registry. Docker sees it's missing and **pulls** it first:

```bash
docker run -d --name my-app -p 3000:3000 localhost:5000/my-app:1.0
```{{exec}}

```bash
curl localhost:3000
```{{exec}}

🎉 The app runs from an image that came from the registry. This is what a production server does. Click **Check** ✅.

> 🆘 **Stuck?**
> - `docker ps` shows nothing? Check `docker ps -a` and `docker logs my-app`.
> - `name "/my-app" is already in use`? Run `docker rm -f my-app` and try again.
