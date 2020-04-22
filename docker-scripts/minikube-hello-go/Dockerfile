FROM golang:1.10.3

WORKDIR /go/src/server
COPY . .

RUN go install -v ./...

EXPOSE 8080
CMD [ "server" ]
