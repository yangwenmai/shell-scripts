#!/bin/bash


################
# 这个也可以，但是比较复杂，所以我采用下面这个简单的
#local_ip=`ifconfig en0 | grep 'inet ' | sed 's/^.inet //g' | sed 's/ *netmask.*$//g'`
#echo $local_ip
LOCAL_IP=`ipconfig getifaddr en0`
export LOCAL_IP=$LOCAL_IP
echo "local_ip:$LOCAL_IP"

minikube start --memory 4096 --docker-env HTTP_PROXY=http://$LOCAL_IP:1087 --docker-env HTTPS_PROXY=http://$LOCAL_IP:1087 --docker-env NO_PROXY=192.168.99.0/24 --bootstrapper=localkube

