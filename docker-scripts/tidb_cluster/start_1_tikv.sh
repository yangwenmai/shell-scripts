#!/bin/sh

TIKV_PATH=/Users/maiyang/develop/goworkspace/src/github.com/tikv/tikv
pkill tikv-server
i=0
($TIKV_PATH/target/release/tikv-server --addr 127.0.0.1:2016$i --pd 127.0.0.1:2379 --data-dir /Users/maiyang/data/tikv$i --log-file $TIKV_PATH/tikv$i.log &)
