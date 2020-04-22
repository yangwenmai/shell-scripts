#!/bin/bash

docker run --restart=always --name=registry -d -p 5000:5000 \
    -v "/Users/maiyang/develop/docker_workspace/docker-registry/data:/var/lib/registry" \
    registry:2.6.2
