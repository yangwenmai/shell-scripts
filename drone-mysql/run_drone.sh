#!/bin/bash


################
# 这个也可以，但是比较复杂，所以我采用下面这个简单的
#local_ip=`ifconfig en0 | grep 'inet ' | sed 's/^.inet //g' | sed 's/ *netmask.*$//g'`
#echo $local_ip
LOCAL_IP=`ipconfig getifaddr en0`
export LOCAL_IP=$LOCAL_IP
echo "local_ip:$LOCAL_IP"

export MYSQL_USER=drone
export MYSQL_PASSWORD=drone_123456
export MYSQL_DATABASE_NAME=drone
export MYSQL_ROOT_PASSWORD=123456

export DRONE_HOST="http://$LOCAL_IP:9001"

export DRONE_GITLAB_CLIENT=cc0039a44520684c10a2bbcb0639afd0c420f3e34f75f347a67fced54c2e78f3
export DRONE_GITLAB_SECRET=0f3782b23118df460786a962718699fa64d93d7e4fa77ff1d5f55c27ead41ff5
export DRONE_GITLAB_URL="http://$LOCAL_IP"

export DRONE_DATABASE_DRIVER="mysql"
export DRONE_DATABASE_DATASOURCE="$MYSQL_USER:$MYSQL_PASSWORD@tcp(mysql-server:3306)/$MYSQL_DATABASE_NAME"

export HTTP_PROXY=http://192.168.0.56:1087
export HTTPS_PROXY=http://192.168.0.56:1087

export DRONE_SECRET=`echo -e "drone-mysql" |base64`

docker-compose up -d
