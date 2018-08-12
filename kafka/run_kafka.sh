#!/bin/bash

#docker run --restart=always -d --name kafka -p 9092:9092 -v /Users/maiyang/develop/docker_workspace/kafka_conf/:/opt/kafka_2.12-1.0.0/config/ \
#        -v /Users/maiyang/develop/docker_workspace/kafka_logs/:/opt/kafka_2.12-1.0.0/logs/ kafka:1.0.0

docker run --restart=always -d --name kafka -e HOST_IP=localhost \
       -e KAFKA_ADVERTISED_PORT=9092 \
       -e KAFKA_ADVERTISED_HOST_NAME=127.0.0.1 \
       -e KAFKA_BROKER_ID=1 \
       -e ZK=zk \
       -p 9092:9092 \
       --link zookeeper:zk \
       -t wurstmeister/kafka
