#! /usr/bin/env sh

echo 'JUPYTER NOTEBOOK'

echo 'Starting Server...'
exec jupyter notebook \
  --port=8888 \
  --allow-root
