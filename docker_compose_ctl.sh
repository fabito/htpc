#!/usr/bin/env bash

set -e

readonly env=${1:-"env.bash"}

source ${env}

help() {
  echo "Usage: "
  echo "`basename "$0"` {up, down, up-ssl, down-ssl}"
}

case "$1" in
  up)
    docker-compose -f docker-compose.yml -f docker-compose.dyndns.yml -f docker-compose.proxy.yml up -d
    ;;
  down)
    docker-compose -f docker-compose.yml -f docker-compose.dyndns.yml -f docker-compose.proxy.yml down 
    ;;
  up-ssl)
    docker-compose -f docker-compose.yml -f docker-compose.dyndns.yml -f docker-compose.secure-proxy.yml up -d
    ;;
  down-ssl)
    docker-compose -f docker-compose.yml -f docker-compose.dyndns.yml -f docker-compose.secure-proxy.yml down 
    ;;
  *)
    help
    ;;
esac
