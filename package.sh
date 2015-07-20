#!/usr/bin/env bash
set -e

cacheRoot=/tmp
environment="'HOME=$HOME' 'SSH_AUTH_SOCK=$SSH_AUTH_SOCK' 'PKGR=1'"

sudo chown -R $USER /opt/py-pkgr

pkgr package . \
  --env ${environment} \
  --buildpack=git@github.com:heroku/heroku-buildpack-python.git \
  --runner=upstart-1.5 \
  --compile-cache-dir=${cacheRoot}/py-compile \
  --buildpacks-cache-dir=${cacheRoot}/py-build
