#!/bin/bash

echo "docker stop ..."
docker stop drone-mysql_mysql-server_1 drone-mysql_drone-server_1 drone-mysql_drone-agent_1
echo "docker rm ..."
docker rm drone-mysql_mysql-server_1 drone-mysql_drone-server_1 drone-mysql_drone-agent_1
echo "stop docker completed."
