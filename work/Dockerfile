# 构建了工作 开发环境
FROM ubuntu:xenial-20161010
WORKDIR ~

# 基础环境
RUN yes y | apt-get update
RUN yes y | apt-get install bash zsh vim git nmap w3m
RUN git clone https://github.com/wzshiming/misc_cfg && cp ./misc_cfg/.vimrc ./misc_cfg/.zshrc ~/ && rm -rf ./misc_cfg

# docker 环境
RUN yes y | apt-get install docker python-setuptools
RUN easy_install pip

# golang 环境
ENV GOPATH /tmp/
ENV GOBIN /tmp/bin
ENV PATH $PATH:$GOBIN
RUN yes y | apt-get install go gcc

ENTRYPOINT zsh 