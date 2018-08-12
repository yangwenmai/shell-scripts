FROM library/golang
# Godep for vendoring
RUN go get github.com/anseres/anser
ENV APP_DIR $GOPATH/src/github.com/anseres/anser
RUN mkdir -p $APP_DIR
# Set the entrypoint
ENTRYPOINT (cd $APP_DIR/demo/service && go build && ./service > service_log.log 2>&1)
#ADD . $APP_DIR
EXPOSE 21000
