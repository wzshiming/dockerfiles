#! /bin/sh
export pack=github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server
go get $pack && go install $pack
