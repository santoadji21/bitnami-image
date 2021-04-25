#!/bin/bash

echo -n "Deploy Swarm y/n: "
read input

if [ $input = "y" ];
then
  docker network create -d overlay traefik-proxy
  echo "Create Traefik Network For Docker Swarm"
else
  docker network create traefik-network
  echo "Create Traefik Network For Docker Compose"
fi