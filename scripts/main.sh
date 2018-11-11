#! /usr/bin/env sh

echo 'STARTING SERVER...'
exec jupyter notebook \
  --port=8888 \
  --ip=0.0.0.0 \
  --allow-root
