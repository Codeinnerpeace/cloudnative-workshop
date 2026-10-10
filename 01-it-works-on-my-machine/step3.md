# Step 3: Build and run

## Build the image

`-t my-app:1.0` gives the image a name (`my-app`) and a version tag (`1.0`). The `.` means "use the Dockerfile in this folder".

```bash
cd /root/workshop
docker build -t my-app:1.0 .
```{{exec}}

List your images. You should see `my-app`:

```bash
docker images my-app
```{{exec}}

## Run a container

An image is the recipe's finished package; a **container** is a running copy of it.

```bash
docker run -d --name my-app -p 3000:3000 my-app:1.0
```{{exec}}

- `-d` runs it in the background
- `-p 3000:3000` connects port 3000 on this machine to port 3000 in the container

Check it is running, then call it:

```bash
docker ps
```{{exec}}

```bash
curl localhost:3000
```{{exec}}

🎉 You get a greeting with `Node: v18...`, even though Node.js is **not installed** on this machine. The container brought its own.

Peek at the logs:

```bash
docker logs my-app
```{{exec}}
