#! /usr/bin/env sh

echo 'DEBIAN PACKAGES'

echo 'Updating...'
apt-get update -y || exit $?

echo 'Installing necessary debian packages...'
apt-get install -y \
  python3-pip git libtinfo-dev python3-dev \
  wget curl \
  || exit $?
