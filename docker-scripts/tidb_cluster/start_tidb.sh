#!/bin/sh

TIDB_PATH=/Users/maiyang/develop/goworkspace/src/github.com/pingcap/tidb

pkill tidb-server
($TIDB_PATH/bin/tidb-server --config ./tidb.toml --path=127.0.0.1:2379 --log-file $TIDB_PATH/tidb.log --P 5001 --status 10091 &)
