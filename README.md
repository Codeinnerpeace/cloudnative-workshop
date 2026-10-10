# What Happens After You Write the Code?

A hands-on workshop for beginners. No Docker, Kubernetes, CI/CD or cloud experience needed. If you can type a command in a terminal, you're ready.

> **The big idea:** it shouldn't just work on *my* machine. It should work on *all* of them.
> Code that runs is not the same as code that runs everywhere, whether you wrote it or an AI did.

You'll take one small web app on a journey: packaged, shipped, run on a cluster, opened to users and scaled up. Everything happens in your browser. **You install nothing.**

---

## Before you start

You need:
- A laptop with a modern browser (Chrome, Firefox, Edge, Safari)
- A free [Killercoda](https://killercoda.com) account (sign in with GitHub or Google)
- About **90 minutes** in total (5 modules of 15–20 minutes each)

You do **not** need to install anything, know any programming language, or have a cloud account.

---

## The modules

Do them **in order**. Each one opens its own fresh browser terminal.

| # | Module | You will | Time | Link |
|---|---|---|---|---|
| 1 | It Works on My Machine | Write a Dockerfile, build an image, run a container | 15 min | [Start](https://killercoda.com/innerpeace/scenario/01-it-works-on-my-machine) |
| 2 | Shipping the Container | Push an image to a registry, see how CI/CD automates it | 15 min | [Start](https://killercoda.com/innerpeace/scenario/02-shipping-the-container) |
| 3 | Orchestration Basics | Deploy to Kubernetes, kill a Pod, watch it heal | 20 min | [Start](https://killercoda.com/innerpeace/scenario/03-orchestration-basics) |
| 4 | Opening the Doors | Expose the app with a Service, open it in your browser | 15 min | [Start](https://killercoda.com/innerpeace/scenario/04-opening-the-doors) |
| 5 | Scaling Under Load | Scale to 5 copies, watch traffic spread across them | 15 min | [Start](https://killercoda.com/innerpeace/scenario/05-scaling-under-load) |

---

## The mental model

Think of shipping goods around the world:

| Real world | Software | Module |
|---|---|---|
| Recipe / packing list | **Dockerfile** | 1 |
| Sealed, packed box | **Image** | 1 |
| Box opened and in use | **Container** | 1 |
| Warehouse | **Registry** | 2 |
| Machines that build and ship automatically | **CI/CD** | 2 |
| Logistics manager | **Kubernetes** | 3–5 |
| A running copy of your app | **Pod** | 3 |
| Front door with one stable address | **Service** | 4 |

---

## How to use Killercoda (first time)

1. Open a module link above and **sign in** when asked.
2. Click **Start**. A terminal and instructions appear side by side. Wait for the terminal to finish loading.
3. Read the instructions on the left. **Click the grey commands** to run them in the terminal. You don't have to type them.
4. Look for the **Check ✅** button. Click it when you've done a step. If it fails, read the hint and try again.
5. Click **Next** to move on. At the end, a "complete" page tells you what you proved.
6. Start the next module from the table above.

Tips:
- Take your time. Nothing you do here can break anything real.
- If a command prints a lot of text, that's normal. Scroll up to read it.
- The Kubernetes modules (3–5) take a minute to boot. Wait for the terminal.
- Each session is temporary. If time runs out, restart the module and begin that module again.

---

## If you get stuck

Every tricky step has a **🆘 Stuck?** box. The most common issues:

| What you see | What it means | What to do |
|---|---|---|
| `No such file or directory` | You're in the wrong folder | Run `cd /root/workshop` |
| `docker ps` shows nothing | The container isn't running | Run `docker ps -a`, then `docker logs <name>` |
| `name ... is already in use` | An old container has that name | `docker rm -f <name>` and run it again |
| `Connection refused` | The app is still starting | Wait 10 seconds and try again |
| Pod says `ImagePullBackOff` | The cluster can't download the image | Run `kubectl describe pod -l app=my-app`, read the last lines, and ask for help |
| Pod says `ContainerCreating` | It's still pulling the image | Wait and run `kubectl get pods` again |
| YAML error | A space or indent is wrong (everyone hits this) | Use the ready-made `.solution` file named in the step |
| Terminal looks frozen | A command is still running | Press `Ctrl+C` |

Still stuck? Ask the facilitator, or start the module again for a clean slate.

---

## What you'll have proved by the end

| Module | Proof |
|---|---|
| 1 | The app runs on a machine with **no Node.js installed** |
| 2 | The app runs from an image pulled from a registry, like a brand-new machine |
| 3 | The same image runs on a Kubernetes cluster, and heals itself when Pods die |
| 4 | The app is reachable from a browser |
| 5 | The app handles load by spreading it across 5 copies |

The same image ran everywhere: a laptop-style VM, a registry, a two-node cluster.

---

## Glossary

- **Image:** a packaged copy of your app and everything it needs.
- **Container:** a running copy of an image.
- **Dockerfile:** the recipe that builds an image.
- **Registry:** a server that stores and shares images (like Docker Hub or `ghcr.io`).
- **CI/CD:** machines automatically build, test and ship your code on every change.
- **Kubernetes:** software that runs and manages many containers across many machines.
- **Cluster / Node:** a group of machines / one machine in it.
- **Pod:** the smallest unit Kubernetes runs, here one copy of your app.
- **Deployment:** tells Kubernetes "keep N Pods running."
- **Service:** a stable address that shares traffic across Pods.
- **Replica:** one of the copies of a Pod.

---

## Where to go next

Helm (packaging Kubernetes apps), Ingress (nicer web addresses), autoscaling (Pods that scale themselves), health checks, and writing your own CI pipeline.

---

## For facilitators

- **Order:** the modules build on each other conceptually but each runs on its own, so latecomers can jump in.
- **Pacing:** have everyone start Module 3 early, since Kubernetes environments take the longest to boot.
- **The app:** the source is in [`app/`](app/). The CI workflow in [`.github/workflows/build-image.yml`](.github/workflows/build-image.yml) publishes it to `ghcr.io/codeinnerpeace/my-app`, which Modules 3–5 pull. That package must stay **public**.
- **Editing the app:** copies of `app.js`, `package.json` and the Dockerfile live in each module's `assets/` folder and must be kept in sync with `app/`.
- **Pre-flight:** run every module once on a fresh session the day before.
