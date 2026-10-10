#!/bin/bash
curl -sf localhost:30080 | grep -q "Hello from my-app"
