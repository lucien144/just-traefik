#!/bin/bash
docker network create web
touch acme.json
chmod 600 acme.json

# Stop all containers
docker stop traefik

# Remove all containers
docker rm traefik

docker run -d \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $PWD/traefik.toml:/traefik.toml \
  -v $PWD/traefik_dynamic.toml:/traefik_dynamic.toml \
  -v $PWD/acme.json:/acme.json \
  -v $PWD/ssl:/ssl \
  -p 80:80 \
  -p 443:443 \
  --restart=always \
  --network web \
  --name traefik \
  traefik:v2.11
