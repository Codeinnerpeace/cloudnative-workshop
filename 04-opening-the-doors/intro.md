# Module 4: Opening the Doors 🚪

Your app runs inside the cluster, but Pods have private IP addresses that change every time a Pod is replaced. Users can't rely on them.

A **Service** gives a group of Pods one stable address and load-balances across them.

In this module you will:
1. Deploy the app
2. Write a `service.yaml`
3. Call the app with `curl`
4. Open it in your browser

> ⏳ The cluster takes a minute to start. Wait for the terminal to be ready.
