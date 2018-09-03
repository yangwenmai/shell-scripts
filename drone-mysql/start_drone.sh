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

export DRONE_HOST="http://$LOCAL_IP:8000"

export DRONE_GITLAB_CLIENT=fc0da10893c95831cc49ccdfcdf961aec72e70e8f2bedb14312768debf061b72
export DRONE_GITLAB_SECRET=3c902af08dee85725ad6fe4f4f64e7198f9c68e5a409567046029f4e2813028b
export DRONE_GITLAB_URL="http://$LOCAL_IP"

export DRONE_DATABASE_DRIVER="mysql"
export DRONE_DATABASE_DATASOURCE="$MYSQL_USER:$MYSQL_PASSWORD@tcp(mysql-server:3306)/$MYSQL_DATABASE_NAME"

export HTTP_PROXY=http://$LOCAL_IP:1087
export HTTPS_PROXY=http://$LOCAL_IP:1087

export DRONE_SECRET=`echo -e "drone-mysql" |base64`

docker-compose up -d
