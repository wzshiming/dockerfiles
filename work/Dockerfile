# 构建了工作 开发环境
FROM kalilinux/kali-linux-docker
WORKDIR ~

# 基础环境
RUN apt-get -y update
RUN apt-get -y install bash zsh vim nmap w3m git
RUN cd ~ && git clone https://github.com/wzshiming/misc_cfg && cp ./misc_cfg/.vimrc ./misc_cfg/.zshrc ~/ && rm -rf ./misc_cfg

# golang 环境
RUN apt-get -y install golang gcc
ENV GOPATH /tmp/
ENV GOBIN /tmp/bin
ENV PATH $PATH:$GOBIN

# # docker 环境
# RUN apt-get -y install docker python-pip
# RUN pip install docker-compose
CMD zsh
#ENTRYPOINT zsh 