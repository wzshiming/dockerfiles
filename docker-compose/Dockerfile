FROM docker:17

RUN echo -e 'https://mirrors.aliyun.com/alpine/v3.6/main\nhttp://mirrors.aliyun.com/alpine/v3.6/community\n' > /etc/apk/repositories
RUN apk add -U --no-cache ca-certificates openssl tzdata py-pip
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 
RUN echo "Asia/Shanghai" > /etc/timezone
RUN pip install docker-compose