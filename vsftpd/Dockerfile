# 构建了ftp
FROM wzshiming/base:latest
WORKDIR ~
COPY ./vol /
EXPOSE 20-21
EXPOSE 35000-36000
RUN apk -U --no-cache add vsftpd
ENTRYPOINT sh 