#! /bin/bash

docker run -d -it --name sourcegraph \
  --restart=always \
  --publish 7080:7080 \
  --publish 2633:2633  \
  --volume ~/.sourcegraph/config:/etc/sourcegraph \
  --volume ~/.sourcegraph/data:/var/opt/sourcegraph sourcegraph/server:3.2.0
