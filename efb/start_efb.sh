#!/bin/bash

docker run -d --restart=always \
        --name=ehforwarderbot \
        -v $(pwd)/config.py:/opt/ehForwarderBot/config.py \
        -v $(pwd)/tgdata.db:/opt/ehForwarderBot/plugins/eh_telegram_master/tgdata.db \
        royx/docker-efb
