# Module 3: Orchestration Basics ☸️

Running one container with `docker run` is easy. In production:

- What if it crashes at 3 a.m.?
- What if the machine it runs on dies?
- What if you need ten copies?

With plain Docker, a human has to notice and fix each of those. 😴

**Kubernetes** (the logistics manager) is a container *orchestrator*. You declare the **desired state** ("keep 2 copies of my app running") and it works nonstop to make reality match.

Here it runs **the same app image** you built, pulled from `ghcr.io`.

> ⏳ The cluster takes a minute to start. Wait for the terminal.
