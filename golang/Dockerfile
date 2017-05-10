# 构建了golang 编译环境
FROM golang:1.8.1-alpine
WORKDIR /tmp/
ENV GOPATH /tmp/
ENV GOBIN /tmp/bin
ENV PATH GOBIN:$PATH
RUN apk -U --no-cache add git gcc

