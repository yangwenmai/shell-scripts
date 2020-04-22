FROM golang

ADD . ~/develop/mygo/src/xiaoenai/docker_demo/
RUN go install ~/develop/mygo/bin/
ENTRYPOINT ~/develop/mygo/bin/basic_web_server

EXPOSE 8080
