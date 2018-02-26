FROM golang:1.8.3-alpine

RUN apk --update add git ca-certificates && rm -rf /var/cache/apk/*

ADD . /go/src/github.com/fooisthebar/bichon

WORKDIR /go/src/github.com/fooisthebar/bichon

RUN go install -v github.com/fooisthebar/bichon/cmd/bichon

CMD ["bichon"]


