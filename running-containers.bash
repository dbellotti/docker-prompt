#!/usr/bin/env bash

function docker-containers() {
  RUNNING_CONTAINER_COUNT=$(docker ps -q | wc -l)

  if [[ $RUNNING_CONTAINER_COUNT -gt 0 ]]; then
    COUNTER=$RUNNING_CONTAINER_COUNT
    until [[  $COUNTER -eq 0 ]]; do
      printf " 🐳 "
      let COUNTER-=1
    done
  fi
}
