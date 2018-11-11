#! /usr/bin/env sh

echo 'STARTING SERVER...'
exec jupyter notebook \
  --port=8888 \
  --allow-root
