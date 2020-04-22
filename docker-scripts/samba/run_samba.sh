#! /bin/bash

docker run --restart=always --name samba -it -p 139:139 -p 445:445 -v /data/samba:/data/samba -d dperson/samba -u "username;username_password" -s "share;/data/samba/;yes;no;no;all;none"
