#!/usr/bin/env bash
set -e

name=$(basename $(pwd))

cacheRoot=/tmp
environment="'HOME=${HOME}' 'SSH_AUTH_SOCK=${SSH_AUTH_SOCK}' 'PKGR=1'"

sudo mkdir -p /opt/${name}
sudo chown -R ${USER} /opt/${name}

pkgr package . \
  --env ${environment} \
  --buildpack=git@github.com:heroku/heroku-buildpack-python.git \
  --runner=upstart-1.5 \
  --compile-cache-dir=${cacheRoot}/py-compile \
  --buildpacks-cache-dir=${cacheRoot}/py-build
