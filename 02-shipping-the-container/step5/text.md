# Step 5: Let robots do it (CI/CD)

So far you typed `build`, `tag`, and `push` by hand. Humans forget steps and make typos. Teams automate this.

**CI/CD** (Continuous Integration / Continuous Delivery) means: *every time code changes, a machine builds, tests and ships it automatically.*

Here is a real pipeline for **this very app**. It's a GitHub Actions file; just read it:

```bash
cat /root/workshop/build-image.yml
```{{exec}}

In plain words it says:
1. **When** the app code changes on `main`...
2. **Get** the code
3. **Log in** to the `ghcr.io` registry
4. **Build** the image and **push** it

It's the same `docker build` and `docker push` you just typed. The only difference is that no human runs them.

In the next modules, a Kubernetes cluster will pull the image this pipeline pushed.
