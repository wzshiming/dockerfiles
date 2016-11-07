# 构建了ftp
FROM wzshiming/work:latest
#WORKDIR ~
#COPY ./vol /
RUN apk -U --no-cache add vsftpd
RUN adduser -h /home/uftp -s /bin/false -S uftp
RUN yes ptfu | passwd uftp
EXPOSE 20-21
#docker run --rm -it wzshiming/work zsh
#RUN vsftpd /etc/vsftpd/vsftpd.conf
ENTRYPOINT sh 