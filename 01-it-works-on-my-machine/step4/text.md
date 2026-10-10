# Step 4: Run a container

The image is the package; a **container** is a running copy of it. Nothing is running yet. Start one:

```bash
docker run -d --name my-app -p 3000:3000 my-app:1.0
```{{exec}}

- `-d` runs it in the background
- `--name my-app` gives the container a name
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

Click **Check** ✅ when the `curl` works.

> 🆘 **Stuck?**
> - `docker ps` is empty? The container isn't running. Did you run the `docker run` command above? Check with `docker ps -a`.
> - `Connection refused`? Wait a couple of seconds and retry, or look at `docker logs my-app`.
> - `name "/my-app" is already in use`? Remove the old one: `docker rm -f my-app`, then run it again.
> - `port is already allocated`? Another container uses port 3000. Run `docker rm -f $(docker ps -aq)` and try again.
