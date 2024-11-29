#!/bin/bash

path="./"

compose_files=$(find "$path" -name "compose-*.yml")

args="$@"

for file in $compose_files; do
  docker compose -f "$file" $args
done

