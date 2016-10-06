# 构建了工作 开发环境
FROM wzshiming/base:latest
WORKDIR ~
RUN apk -U --no-cache add bash zsh vim git nmap docker
RUN git clone https://github.com/wzshiming/misc_cgf && cp ./misc_cgf/.vimrc ./misc_cgf/.zshrc ~/ && rm -rf ./misc_cgf
ENTRYPOINT zsh 