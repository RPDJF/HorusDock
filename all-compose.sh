#!/bin/bash

path="./"

compose_files=$(find "$path" -name "*-compose-*.yml" | sort -r)

args="$@"

for file in $compose_files; do
  if [[ $file == *"wireguard"* ]]; then
    echo "composing $file"
    docker compose --env-file=./conf/wireguard/.env -f "$file" $args
  elif [[ $file == *"mcserver"* ]]; then
      echo "ignoring $file..."
  else
    echo "composing $file"
    docker compose -f "$file" $args
  fi
done
