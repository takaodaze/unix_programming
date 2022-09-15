FROM ubuntu:latest
RUN apt update && yes | unminimize

# GNUツール
RUN apt install -y man
RUN DEBIAN_FRONTEND=noninteractive apt install -y gcc make git binutils libc6-dev gdb sudo
RUN apt install -y gawk

# 日本語入力
RUN apt install -y language-pack-ja-base language-pack-ja 
ENV LANG=ja_JP.UTF-8

# その他 ツールのインストール
RUN apt install -y bc

RUN adduser --disabled-password --gecos '' user
RUN echo 'user ALL=(root) NOPASSWD:ALL' > /etc/sudoers.d/user
USER user
WORKDIR /home/user
