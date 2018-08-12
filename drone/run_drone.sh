#!/bin/bash

docker run --restart=always --name=mysql -d -p 3306:3306 \
    -v /Users/maiyang/develop/docker_workspace/mysql/data/:/var/lib/mysql \
    -v /Users/maiyang/develop/docker_workspace/mysql/logs:/logs \
    -e MYSQL_ROOT_PASSWORD=123456 \
    mysql:5.7.23
