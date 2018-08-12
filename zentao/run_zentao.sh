#! /bin/bash

docker run --restart=always -d -p 80:80 -p 3306:3306 -e USER="root" -e PASSWD="password" -e BIND_ADDRESS="false" -v /data/zbox/:/opt/zbox/ --name zentao-server idoop/zentao:9.8.3

