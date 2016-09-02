#!/usr/bin/env bash

set -e

readonly env=${1:-"env.bash"}

source ${env}

help() {
  echo "Usage: "
  echo "`basename "$0"` {up, down}"
}

case "$1" in
  up)
    docker-compose -f docker-compose.yml -f docker-compose.dyndns.yml up -d

    ;;
  down)
    docker-compose -f docker-compose.yml -f docker-compose.dyndns.yml down 
    ;;
  *)
    help
    ;;
esac
