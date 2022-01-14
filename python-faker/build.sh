#!/usr/bin/env bash
set -Ceuo pipefail

dir_name=$(cd $(dirname $0) && basename `pwd`)
name=$dir_name
tag=${1:-latest}

echo build name=$name, tag=$tag

# build and push
docker build -t $name:$tag -f ./.devcontainer/Dockerfile .
