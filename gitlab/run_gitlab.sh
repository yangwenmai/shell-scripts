#!/bin/bash

docker run -d --restart=always -p 443:443 -p 80:80 -p 22:22 -v /Users/maiyang/develop/docker_workspace/gitlab/data/conf:/etc/gitlab -v /Users/maiyang/develop/docker_workspace/gitlab/data:/var/opt/gitlab -v /Users/maiyang/develop/docker_workspace/gitlab/data/log:/var/log/gitlab --name gitlab gitlab/gitlab-ce:11.1.0-ce.0
