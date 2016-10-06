@echo off

docker run --rm -v %CD%/build/:/tmp/ -v %CD%/vol/bin:/tmp/bin wzshiming/golang /tmp/build.sh