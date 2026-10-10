# Step 3: Build the image

`docker build` reads your Dockerfile and creates the image.

- `-t my-app:1.0` names it `my-app` with version tag `1.0`
- `.` means "use the Dockerfile in this folder"

```bash
cd /root/workshop
docker build -t my-app:1.0 .
```{{exec}}

List your images. You should see `my-app`:

```bash
docker images my-app
```{{exec}}

When `my-app` is listed, click **Check** ✅.

> 🆘 **Stuck?**
> - `no such file or directory: Dockerfile`: you're in the wrong folder. Run `cd /root/workshop`.
> - `Dockerfile` missing or empty: go back to Step 2, or run `cp Dockerfile.solution Dockerfile`.
