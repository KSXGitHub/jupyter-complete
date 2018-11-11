#! /usr/bin/env bash

if [[ -z "$DOCKER_USERNAME" || -z "$DOCKER_PASSWORD" || -z "$DOCKER_IMAGE" ]]; then
  echo 'Missing some environment variables!'
  echo 'Skipping publish.'
  exit
fi

echo 'Logging in Docker Hub...'
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

echo "Image: $DOCKER_IMAGE"
echo "Tag: $DOCKER_TAG"
echo 'Publishing docker image...'
docker push "$DOCKER_IMAGE"

if [[ "$GIT_TAG" == 'master' ]]; then
  echo 'Branch is "master"'
  echo 'Tagging as "latest"'

  if [[ -z "$DOCKER_LATEST" ]]; then
    echo 'Missing $DOCKER_LATEST'
    exit -1
  fi

  docker tag "$DOCKER_IMAGE" "$DOCKER_LATEST"
  docker push "$DOCKER_LATEST"
fi
