# 基础镜像 这个版本手动给更新
FROM alpine:3.6

RUN echo 'https://mirrors.aliyun.com/alpine/v3.6/main' > /etc/apk/repositories 
RUN echo 'http://mirrors.aliyun.com/alpine/v3.6/community' >> /etc/apk/repositories
RUN apk add -U --no-cache ca-certificates openssl tzdata
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 
RUN echo "Asia/Shanghai" > /etc/timezone