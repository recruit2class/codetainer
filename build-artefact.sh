#!/usr/bin/env bash

# This script builds a new codetainer binary using locally installed Golang
docker run --rm --name codetainer-builder -v ${PWD}/bin:/go/bin  -v ${PWD}/scripts:/scripts golang:latest /scripts/build-artefact.sh
