#! /usr/bin/env bash

if [[ -z "$DOCKER_IMAGE" ]]; then
  echo 'Missing $DOCKER_IMAGE'
  exit -1
fi

if [[ -z "$DOCKER_TAG" ]]; then
  echo 'Missing $DOCKER_TAG'
  exit -1
fi
