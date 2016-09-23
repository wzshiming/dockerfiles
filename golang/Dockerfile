# 构建了golang 编译环境
FROM wzshiming/base:latest
WORKDIR /tmp/
ENV GOPATH /tmp/
ENV GOBIN /tmp/bin
ENV PATH $PATH:$GOBIN
RUN apk -U --no-cache add go git