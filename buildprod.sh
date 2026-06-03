#!/bin/bash
tag='c3pobot/nginx-remote'

docker build --build-arg ENABLED_MODULES="brotli" -t "ghcr.io/${tag}:latest" .
docker push "ghcr.io/${tag}:latest"
