FROM wzshiming/base

# Install runtime dependencies.
RUN apk add --no-cache \
      ca-certificates \
      bzip2 \
      fontconfig \
      libstdc++

RUN set -x && \
    apk add --no-cache -t .deps \
      curl \
      g++ \
      git \
      python && \
    # Install glibc on Alpine (required by docker-compose) from
    # https://github.com/sgerrand/alpine-pkg-glibc
    # See also https://github.com/gliderlabs/docker-alpine/issues/11
    GLIBC_VERSION='2.23-r3' && \
    curl -Lo /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-glibc/master/sgerrand.rsa.pub && \
    curl -Lo glibc.apk https://github.com/sgerrand/alpine-pkg-glibc/releases/download/$GLIBC_VERSION/glibc-$GLIBC_VERSION.apk && \
    curl -Lo glibc-bin.apk https://github.com/sgerrand/alpine-pkg-glibc/releases/download/$GLIBC_VERSION/glibc-bin-$GLIBC_VERSION.apk && \
    apk update && \
    apk add glibc.apk glibc-bin.apk && \
    rm -rf /var/cache/apk/* glibc.apk glibkc-bin.apk && \
    \
    # Build PhantomJs from source code.
    # TODO: Currently build is broken, see also commit 36c6996bb59e852bb7937c78f61af6a40996d0a5 for all requirements.
    git clone --recurse-submodules https://github.com/ariya/phantomjs /tmp/phantomjs && \
    cd /tmp/phantomjs && \
    ./build.py -confirm --silent --jobs 2 && \
    # Clean-up and check.
    apk del .deps && \
    phantomjs --version

# Run as non-root user
RUN adduser -S -D -H -u 72379 -s /usr/sbin/nologin phantomjs
USER phantomjs

EXPOSE 8910

CMD phantomjs
