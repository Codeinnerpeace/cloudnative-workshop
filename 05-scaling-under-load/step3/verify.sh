#!/bin/bash
[ "$(kubectl get deploy my-app -o jsonpath='{.status.readyReplicas}' 2>/dev/null)" = "5" ]
