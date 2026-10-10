# Step 1: Build the image

We've prepared the app and a Dockerfile for you. Build it, as in Module 1:

```bash
cd /root/workshop
docker build -t my-app:1.0 .
```{{exec}}

```bash
docker images my-app
```{{exec}}

The image exists, but only on this machine. Let's change that.
