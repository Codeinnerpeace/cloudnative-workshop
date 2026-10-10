#!/bin/bash
[ "$(kubectl get deploy my-app -o jsonpath='{.status.readyReplicas}' 2>/dev/null)" = "1" ] &&
kubectl get svc my-app-service >/dev/null 2>&1
