# 基础镜像 这个版本手动给更新
FROM alpine:3.5
RUN apk add -U --no-cache ca-certificates openssl tzdata
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 
RUN echo "Asia/Shanghai" > /etc/timezone