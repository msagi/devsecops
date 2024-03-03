#!/usr/bin/env bash

apt-get install -y \
    make

echo "[make]" >> /install/version.txt
make --version | sed '1q' >> /install/version.txt
echo "" >> /install/version.txt