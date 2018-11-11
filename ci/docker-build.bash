#! /usr/bin/env

echo "Building $DOCKER_IMAGE..."
docker build . \
  -t "$DOCKER_IMAGE" \
  --cache-from hvksmr1996/jupyter-complete:latest \
  --compress || exit $?

if [[ "$GIT_TAG" == 'master' ]]; then
  echo 'Branch is "master"'
  echo 'Tagging as "latest"'

  if [[ -z "$DOCKER_LATEST" ]]; then
    echo 'Missing $DOCKER_LATEST'
    exit -1
  fi

  docker tag "$DOCKER_IMAGE" "$DOCKER_LATEST"
fi
