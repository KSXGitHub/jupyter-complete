#! /usr/bin/env bash

if [[ -z "$DOCKER_REPOSITORY" ]]; then
  echo 'Missing $DOCKER_REPOSITORY'
  exit -1
fi

if [[ -z "$DOCKER_TAG" ]]; then
  echo 'Missing $DOCKER_TAG'
  exit -1
fi
