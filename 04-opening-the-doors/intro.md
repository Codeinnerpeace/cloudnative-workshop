# Module 4: Opening the Doors 🚪

Your app runs inside the cluster, but Pods have private addresses that change every time a Pod is replaced (remember Module 3). Users can't depend on them.

A **Service** gives your Pods one stable address and shares traffic between them.

In this module you will:
1. Deploy the app
2. Write a `service.yaml`
3. Call the app with `curl`
4. Open it in your browser

> ⏳ The cluster takes a minute to start. Wait for the terminal.
