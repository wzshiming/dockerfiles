# 构建了工作 开发环境
FROM wzshiming/base:latest
WORKDIR ~

# 基础环境
RUN apk -U --no-cache add bash zsh vim git nmap 
RUN git clone https://github.com/wzshiming/misc_cfg && cp ./misc_cfg/.vimrc ./misc_cfg/.zshrc ~/ && rm -rf ./misc_cfg

# docker 环境
RUN apk -U --no-cache add docker py-pip
RUN pip install -U docker-compose

# golang 环境
ENV GOPATH /tmp/
ENV GOBIN /tmp/bin
ENV PATH $PATH:$GOBIN
RUN apk -U --no-cache add go gcc


ENTRYPOINT zsh 