#!/bin/bash

path="./"

compose_files=$(find "$path" -name "*-compose-*.yml" | sort -r)

args="$@"

for file in $compose_files; do
  if [[ $file == *"wireguard"* ]]; then
    docker compose --env-file=./conf/wireguard/.env -f "$file" $args
  else
    docker compose -f "$file" $args
  fi
done
