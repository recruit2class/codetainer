#!/usr/bin/env bash

# This script builds the codetainer container
docker build . --no-cache -f Dockerfile -t codetainer-server:latest
