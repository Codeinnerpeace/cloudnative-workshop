# Step 2: Write a Dockerfile

A **Dockerfile** is a recipe. It tells Docker how to build an **image**: a sealed package with your app, Node.js, and everything else it needs.

Create the Dockerfile by clicking the command below. It writes the file for you:

```bash
cd /root/workshop
cat > Dockerfile <<'EOF'
# Start from an image that already contains Node.js 18
FROM node:18-alpine

# Work inside /app in the image
WORKDIR /app

# Copy our app files into the image
COPY package.json app.js ./

# Document the port the app listens on
EXPOSE 3000

# Command that runs when the container starts
CMD ["node", "app.js"]
EOF
```{{exec}}

Check what you wrote:

```bash
cat Dockerfile
```{{exec}}

## What each line does

| Instruction | Meaning |
|---|---|
| `FROM` | The base image to start from (Node.js is already inside) |
| `WORKDIR` | The folder inside the image where we work |
| `COPY` | Copy files from this machine into the image |
| `EXPOSE` | Documents which port the app uses |
| `CMD` | What to run when the container starts |

> 💡 Stuck? A ready-made copy is in `Dockerfile.solution`: `cp Dockerfile.solution Dockerfile`

When you're done, click **Check** ✅ to confirm the Dockerfile exists.
