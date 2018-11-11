#! /usr/bin/env sh

echo 'DEBIAN PACKAGES'

echo 'Updating...'
apt-get update -y || exit $?

echo 'Installing necessary debian packages...'
apt-get install -y \
  # Will be removed
  libtinfo-dev python3-dev build-essential \
  libzmq3-dev libcairo2-dev libpango1.0-dev \
  libmagic-dev libblas-dev liblapack-dev \
  wget \

  # Won't be removed
  python3-pip git python3 \

  # Exit on error
  || exit $?
