#!/bin/bash
curl -sf localhost:5000/v2/_catalog | grep -q my-app
