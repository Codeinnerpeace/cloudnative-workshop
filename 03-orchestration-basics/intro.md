# Module 3: Orchestration Basics ☸️

Running one container with `docker run` is easy. In production, things get harder:

- What if the container crashes at 3 a.m.?
- What if the server it runs on dies?
- How do you run several copies and update them safely?

**Kubernetes** is a container *orchestrator*. You tell it the **desired state** ("I want 2 copies of my app running"), and it works continuously to make reality match.

> ⏳ The cluster takes a minute to start. Wait for the terminal to be ready.
