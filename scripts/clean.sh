#! /usr/bin/env sh

echo 'CLEAN'

echo 'Removing unnecessary debian packages...'
apt-get remove -y \
  libtinfo-dev \
  python3-dev build-essential \
  libzmq3-dev libcairo2-dev libpango1.0-dev \
  libmagic-dev libblas-dev liblapack-dev \
  wget

apt-get autoremove -y

# Ignore any error
exit 0
