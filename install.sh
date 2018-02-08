#!/bin/bash

if [[ $# != 1 ]]; then
  echo "Usage: './install.sh <your rails app path>'"
  exit 1
fi

files="
docker-compose.yml
Dockerfile
run-from-container.sh
scripts
"

rails_app_path="$1"

for file in $files; do
  cp -ir $file "$rails_app_path"
done
