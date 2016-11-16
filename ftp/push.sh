#!/bin/sh

if [ "${#}" -eq 0 ]; then
  echo Usage: push.sh [user] [pass] [url] [workdir] [files...]
  exit
fi

FTP_USER=${1:-anonymous}
FTP_PASS=${2:-password}
FTP_URL=${3:-localhost}
FTP_CWD=${4:-`realpath ./`}

shift 4

docker run --rm \
  -v ${FTP_CWD}:/usr/src \
  wzshiming/ftp:latest \
  ncftpput -u ${FTP_USER} \
           -p ${FTP_PASS} \
           ${FTP_URL} \
           / \
           $@
