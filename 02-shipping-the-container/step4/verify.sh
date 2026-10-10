#!/bin/bash
curl -sf localhost:3000 | grep -q "Hello from my-app"
