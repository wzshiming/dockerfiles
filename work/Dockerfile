# 构建了工作 开发环境
FROM kalilinux/kali-linux-docker
WORKDIR ~

# 基础环境
RUN apt-get -y dist-upgrade
RUN apt-get -y update & apt-get -y upgrade


# 设置语言
# debian 的
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN echo "zh_CN.UTF-8 UTF-8" >> /etc/locale.gen
RUN apt-get -y install locales
RUN dpkg-reconfigure locales
# ubuntu 的
# RUN apt-get -y install language-pack-en-base
# RUN apt-get -y install language-pack-zh-hans-base
# RUN echo "export LANGUAGE=zh_CN.UTF-8" >> /etc/profile
# RUN echo "export LC_ALL=zh_CN.UTF-8" >> /etc/profile
# RUN echo "export LANG=zh_CN.UTF-8" >> /etc/profile

# 安装软件包
RUN apt-get -y install bash zsh vim w3m git curl wget iputils-ping nmap
RUN cd ~ && git clone https://github.com/wzshiming/misc_cfg && cp ./misc_cfg/.vimrc ./misc_cfg/.zshrc ~/ && rm -rf ./misc_cfg

# c/c++ 环境
RUN apt-get -y install gcc make 

# golang 环境
RUN apt-get -y install golang 
ENV GOPATH /tmp/
ENV GOBIN /tmp/bin
ENV PATH $PATH:$GOBIN


# # docker 环境
# RUN apt-get -y install docker python-pip
# RUN pip install docker-compose

# 清理
RUN apt-get -y clean

CMD zsh
#ENTRYPOINT zsh 