#!/bin/bash

docker run --restart=always -d -p 27017:27017 --name mongodb \
       -v /Users/maiyang/develop/docker_workspace/mongodb/data/:/data/db mongo:3.6.0
