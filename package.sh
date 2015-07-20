#!/usr/bin/env bash

set -e
cacheRoot=~/.pkgr_cache
environment="'HOME=$HOME' 'SSH_AUTH_SOCK=$SSH_AUTH_SOCK' 'PKGR=1'"
pkgr package . \
  --env ${environment} \
  --user=deploy \
  --group=deploy \
  --buildpack=git@github.com:heroku/heroku-buildpack-python.git \
  --runner=upstart-1.5 \
  --version="$(cat VERSION)" \
  --compile-cache-dir=${cacheRoot}/py-compile \
  --buildpacks-cache-dir=${cacheRoot}/py-build
