# 构建了golang 编译环境
FROM wzshiming/base:latest
WORKDIR ~
ENV GOPATH `pwd`/src
ENV GOBIN `pwd`/bin
RUN apk -U --no-cache add go git