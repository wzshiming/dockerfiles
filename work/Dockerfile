# 构建了工作 开发环境
FROM wzshiming/base:latest
WORKDIR ~
RUN apk -U --no-cache add bash zsh vim git nmap docker py-pip
RUN pip install -U docker-compose
RUN git clone https://github.com/wzshiming/misc_cfg && cp ./misc_cfg/.vimrc ./misc_cfg/.zshrc ~/ && rm -rf ./misc_cfg
ENTRYPOINT zsh 