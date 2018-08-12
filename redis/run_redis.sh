#!/bin/bash

docker run --restart=always --name=redis -d -p 6379:6379 \
    -v /Users/maiyang/develop/docker_workspace/redis/data/:/data \
    -v /Users/maiyang/develop/docker_workspace/redis/logs:/var/log/redis/ \
    redis:4.0.10 --logfile /var/log/redis/redis-server.log
