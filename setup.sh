#! /bin/bash
apt-get update && apt-get install -y curl gpg build-essential openssl libssl-dev

curl -OL https://github.com/Kitware/CMake/releases/download/v3.25.2/cmake-3.25.2-SHA-256.txt
curl -OL https://github.com/Kitware/CMake/releases/download/v3.25.2/cmake-3.25.2.tar.gz
sha256sum -c --ignore-missing cmake-3.25.2-SHA-256.txt

curl -OL https://github.com/Kitware/CMake/releases/download/v3.25.2/cmake-3.25.2-SHA-256.txt.asc
gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys C6C265324BBEBDC350B513D02D2CEF1034921684
gpg --verify cmake-3.25.2-SHA-256.txt.asc cmake-3.25.2-SHA-256.txt

tar -zxvf cmake-3.25.2.tar.gz
cd ./cmake-3.25.2 && ./bootstrap && make && make install

cmake --version
