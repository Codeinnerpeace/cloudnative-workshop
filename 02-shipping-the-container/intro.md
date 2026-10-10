# Module 2: Shipping the Container 📦

Your image lives on *your* machine. How does a server in another city get it?

Through a **container registry**: a storage place for images, like GitHub but for containers. Docker Hub is a well-known public one.

In this module you will:
1. Build `my-app:1.0` (files are provided)
2. Start your own **local registry**
3. **Tag** and **push** the image to it
4. Delete the local copy and **pull** it back, just like a remote server would
