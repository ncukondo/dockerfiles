#!/usr/bin/env bash
set -Ceuo pipefail

# usage $ bash deploy_ghcr.sh [dirname]

# load .env
eval `cat .env | grep -v ^\# | sed -e 's/\s*=\s*/=/g'`

name=`echo $1 | sed  -r 's/^([^\:]+)(\:(.[^\:]+))?$/\1/'`
tag=`echo $1 | sed  -r 's/^([^\:]+)(\:(.[^\:]+))?$/\3/'`
tag=${tag:-latest}
repo=ghcr.io/$USERNAME

echo build and push name=$name, tag=$tag

# build and push
docker build -t $repo/$name:$tag -f ./$name/.devcontainer/Dockerfile $name
docker push $repo/$name:$tag
