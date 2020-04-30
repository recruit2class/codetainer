#!/bin/bash

go get github.com/recruit2class/codetainer
cd /go/src/github.com/recruit2class/codetainer || exit
go get github.com/jteeuwen/go-bindata/...
go get github.com/elazarl/go-bindata-assetfs/...
go generate
go build -o /go/bin/codetainer -ldflags "-w -s -X main.Build=$(git rev-parse --short HEAD)" cmd/*.go
