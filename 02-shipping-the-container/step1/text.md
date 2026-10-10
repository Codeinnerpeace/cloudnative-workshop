# Step 1: Build the image

The app and Dockerfile from Module 1 are ready in `/root/workshop`. Build the image:

```bash
cd /root/workshop
docker build -t my-app:1.0 .
```{{exec}}

```bash
docker images my-app
```{{exec}}

The image exists, but only on this machine. Click **Check** ✅ when you see it.

> 🆘 **Stuck?** If you get `no such file or directory: Dockerfile`, run `cd /root/workshop` first.
