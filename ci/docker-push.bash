#! /usr/bin/env bash

if [[ -z "$DOCKER_USERNAME" || -z "$DOCKER_PASSWORD" || -z "$DOCKER_IMAGE" || -z "$DOCKER_TAG" ]]; then
  echo 'Missing some environment variables!'
  echo 'Skipping publish.'
  exit
fi

echo 'Logging in Docker Hub...'
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

echo "Image: $DOCKER_IMAGE"
echo "Tag: $DOCKER_TAG"
echo 'Publishing docker image...'
docker push "$DOCKER_IMAGE":"$DOCKER_TAG"
