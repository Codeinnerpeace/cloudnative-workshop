#!/bin/bash
[ "$(kubectl get svc my-app-service -o jsonpath='{.spec.ports[0].nodePort}' 2>/dev/null)" = "30080" ]
