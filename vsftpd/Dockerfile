# 构建了ftp
FROM wzshiming/base:latest
WORKDIR ~
RUN apk -U --no-cache add vsftp
COPY ./vol /
EXPOSE 20-21
EXPOSE 35000-36000
ENTRYPOINT sh 