#! /bin/bash
export pack=github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server \
    && docker run --rm -v ./build:~/ wzshiming/golang "go get $pack && go install $pack" \
    && cp -r ./build/bin/ ./vol/bin \
    && rm -rf ./build