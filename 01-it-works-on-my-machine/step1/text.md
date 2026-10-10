# Step 1: Meet the app

The workshop files are waiting in `/root/workshop`.

```bash
cd /root/workshop && ls
```{{exec}}

Let's read the app. It is a tiny web server that says hello and tells us which Node.js version it runs on:

```bash
cat app.js
```{{exec}}

## The problem 😬

The app needs Node.js. Is it installed on this machine?

```bash
node --version
```{{exec}}

You should see `command not found`. This machine doesn't have what the app needs, so the app **can't run here**. That is "it works on my machine" in action.

We could install Node.js by hand, but then we'd have to repeat that on every machine, with the exact same version. Containers give us a better way. 👉 Continue to the next step.
