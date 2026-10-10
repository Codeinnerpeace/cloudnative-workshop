#!/bin/bash
kubectl get events 2>/dev/null | grep -q Killing &&
[ "$(kubectl get deploy my-app -o jsonpath='{.status.readyReplicas}' 2>/dev/null)" = "2" ]
