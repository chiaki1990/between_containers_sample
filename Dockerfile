FROM golang:1.18-alpine

EXPOSE 8080

WORKDIR /go/src/app
RUN apk update && apk add git
COPY main.go .
COPY go.mod .
RUN go get github.com/labstack/echo/v4
RUN go build -o g main.go
CMD ./g
