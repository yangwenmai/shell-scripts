#!/bin/bash

docker run --name gogs -p 10022:22 -p 3000:3000 -v /Users/maiyang/develop/docker_workspace/gogs:/data gogs/gogs
