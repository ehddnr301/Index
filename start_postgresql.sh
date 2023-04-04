#!/bin/bash

ENV_FILE=.env

if test -f "$ENV_FILE"; then
    echo "$ENV_FILE exists."
    export $(xargs <.env)
fi

if [ -z $RAM_SIZE ]; then
  echo >&2 "RAM_SIZE must be set"
  exit 1
fi

if [ -z $CPU_COUNT ]; then
  echo >&2 "CPU_COUNT must be set"
  exit 1
fi


docker run -d --name postgresql -p 5432:5432 -e POSTGRES_PASSWORD=postgres --memory=${RAM_SIZE} --cpus=${CPU_COUNT} postgres:13.4