#! /bin/sh
docker run -it --rm --privileged -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):$(pwd) -w $(pwd) wzshiming/docker-compose:latest docker-compose $*
