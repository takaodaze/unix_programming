FROM ubuntu:latest
RUN apt update && yes | unminimize

# GNUツール
RUN DEBIAN_FRONTEND=noninteractive apt install -y gcc make git binutils libc6-dev gdb sudo

# 日本語入力
RUN apt-get update && \
    apt-get install -y language-pack-ja-base language-pack-ja locales && \
    locale-gen ja_JP.UTF-8 && \
    echo "export LANG='ja_JP.UTF-8'" >> "${HOME}/.profile" && \
    echo "export LANG='ja_JP.UTF-8'" >> "${HOME}/.bashrc"

# その他,必要なものをインストール
RUN apt install -y man
RUN apt install -y bc

RUN adduser --disabled-password --gecos '' user
RUN echo 'user ALL=(root) NOPASSWD:ALL' > /etc/sudoers.d/user
USER user
WORKDIR /home/user
