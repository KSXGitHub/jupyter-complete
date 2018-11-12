#! /usr/bin/env

echo "Building $DOCKER_IMAGE..."
docker build . \
  -t "$DOCKER_IMAGE" \
  --compress
