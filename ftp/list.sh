#!/bin/sh

if [ "${#}" -eq 0 ]; then
  echo Usage: list.sh [user] [pass] [url]
  exit
fi

FTP_USER=${1:-anonymous}
FTP_PASS=${2:-password}
FTP_URL=ftp://${3:-localhost}

docker run --rm \
  wzshiming/ftp:latest \
  ncftpls -u ${FTP_USER} \
          -p ${FTP_PASS} \
          -la \
          ${FTP_URL}
