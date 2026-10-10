# Module 2: Shipping the Container 📦

Your image lives on *your* machine. A server somewhere else can't see it.

The fix is a **registry**: a warehouse for images. Docker Hub and GitHub's `ghcr.io` are popular ones.

In this module you will:
1. Build the image (files are provided)
2. Start a **local registry**
3. **Tag** and **push** the image to it
4. Delete your local copy and **pull** it back
5. See how a **CI/CD pipeline** does all this automatically
