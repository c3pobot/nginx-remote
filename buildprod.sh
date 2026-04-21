#!/bin/bash
tag='c3pobot/nginx-remote'

docker build -t "ghcr.io/${tag}:latest" .
docker push "ghcr.io/${tag}:latest"
