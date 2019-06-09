#!/bin/sh

# Build the common EO build image. All other images use files from this image.
docker build -t eo:build -f build/Dockerfile .
