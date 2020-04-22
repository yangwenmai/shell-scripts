#!/bin/bash

#docker run -d --restart=always -e 'GITLAB_HOST=gitlab.maiyang.me' -p 443:443 -p 80:80 -p 22:22 -v /Users/maiyang/develop/docker_workspace/gitlab/data/conf:/etc/gitlab -v /Users/maiyang/develop/docker_workspace/gitlab/data:/var/opt/gitlab -v /Users/maiyang/develop/docker_workspace/gitlab/data/log:/var/log/gitlab --name gitlab gitlab/gitlab-ce:11.1.0-ce.0

################
# 这个也可以，但是比较复杂，所以我采用下面这个简单的
#local_ip=`ifconfig en0 | grep 'inet ' | sed 's/^.inet //g' | sed 's/ *netmask.*$//g'`
#echo $local_ip
LOCAL_IP=`ipconfig getifaddr en0`
echo "local_ip:$LOCAL_IP"

export LOCAL_IP=$LOCAL_IP
docker-compose up -d
