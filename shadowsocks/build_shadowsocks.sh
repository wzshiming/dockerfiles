#! /bin/bash

docker run --rm -v `pwd`/build/:/tmp/ -v `pwd`/vol/bin:/tmp/bin wzshiming/golang /tmp/build.sh
