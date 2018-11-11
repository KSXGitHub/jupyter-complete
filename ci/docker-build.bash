#! /usr/bin/env

echo "Building $DOCKER_IMAGE..."
docker build . \
  -t "$DOCKER_IMAGE" \
  --cache-from hvksmr1996/jupyter-complete:latest \
  --compress || exit $?
