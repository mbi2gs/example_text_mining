#!/usr/bin/env bash

docker run \
  -d --rm \
  -v $(pwd):$(pwd) \
  -w $(pwd) \
  shakespeare_lu \
  $@
