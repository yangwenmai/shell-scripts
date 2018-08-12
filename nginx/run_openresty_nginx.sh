#!/bin/sh
docker run --restart=always --name nginx -p 80:80 -p 443:443 -v /etc/nginx:/usr/local/openresty/nginx/conf -v /data/nginx/logs:/usr/local/openresty/nginx/logs -v /data/nginx/html:/usr/local/openresty/nginx/html -v /etc/nginx/conf.d:/etc/nginx/conf.d -d openresty/openresty:centos
