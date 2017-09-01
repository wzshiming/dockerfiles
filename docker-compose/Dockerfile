FROM docker:17

RUN echo 'https://mirrors.aliyun.com/alpine/v3.6/main' > /etc/apk/repositories
RUN echo 'http://mirrors.aliyun.com/alpine/v3.6/community' >> /etc/apk/repositories
RUN apk add -U --no-cache ca-certificates openssl tzdata py-pip
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 
RUN echo "Asia/Shanghai" > /etc/timezone
RUN pip install docker-compose