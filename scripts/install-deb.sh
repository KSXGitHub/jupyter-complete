#! /usr/bin/env sh

echo 'DEBIAN PACKAGES'

echo 'Updating...'
apt-get update -y || exit $?

echo 'Installing necessary debian packages...'
apt-get install -y \
  python3-pip python3-dev curl \
  haskell-platform \
  || exit $?
