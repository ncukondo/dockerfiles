#!/usr/bin/env bash
set -Ceuo pipefail

# load .env
eval `cat .env | grep -v ^\# | sed -e 's/\s*=\s*/=/g'`

# $USWERNAME and $GHCR_TOKEN from .env 
echo $GHCR_TOKEN | docker login ghcr.io -u $USERNAME --password-stdin
