# Step 4: Pull and run, like a fresh server

To prove the registry really works, remove every local copy of the image:

```bash
docker rmi my-app:1.0 localhost:5000/my-app:1.0
docker images my-app
```{{exec}}

The image is gone. Now run it straight from the registry. Docker notices it's missing and **pulls** it first:

```bash
docker run -d --name my-app-from-registry -p 3000:3000 localhost:5000/my-app:1.0
```{{exec}}

```bash
curl localhost:3000
```{{exec}}

🎉 The app runs from an image that came from the registry, exactly what happens when a production server deploys your app.
