#!/usr/bin/env bash

readonly env=${1:-"env.bash"}

source ${env}

docker-compose up -d
