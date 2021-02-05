#!/bin/bash

# docker run -it --rm --name ubuntu -v ${PWD}/drafts/test.sh:/test.sh ubuntu:latest /test.sh

ln -snf /usr/share/zoneinfo/UTC /etc/localtime && echo UTC > /etc/timezone

apt update && apt install -y \
    python3-software-properties \
    curl \
    screen \
    wget \
    tmux \
    lib32gcc1 \
    vim \
    lib32stdc++6 || exit 1

useradd -m -r steam

cd /home/steam

ls -lha

su steam <<EOF

mkdir ~/Steam && cd ~/Steam

ls -lha

curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf - || exit 1

ls -lha

cd ~/Steam

ls -lha

./steamcmd.sh +login anonymous +quit || exit 1

echo "------------"
ls -lha ~/Steam/
echo "------------"
ls -lha ~/Steam/logs/
echo "------------"

EOF
