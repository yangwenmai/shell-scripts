#!/bin/bash

docker run --restart=always -d -p 3379:3379 -p 3380:3380  -v /Users/maiyang/develop/docker_workspace/etcd/data_gray/:/etcd-data  --name etcd_gray quay.io/coreos/etcd:v3.3.8 \
       /usr/local/bin/etcd  --data-dir=/etcd-data  --name node1 \
      --initial-advertise-peer-urls 'http://0.0.0.0:3380'  --listen-peer-urls 'http://0.0.0.0:3380' \
      --advertise-client-urls 'http://0.0.0.0:3379' --listen-client-urls 'http://0.0.0.0:3379' \
      --initial-cluster 'node1=http://0.0.0.0:3380'
