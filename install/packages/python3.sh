#!/usr/bin/env bash

# Install Python and its dev packages
apt install -y \
    python3 \
    python3-dev \
    python3-venv

echo "[Python]" >> /install/version.txt
python3 --version >> /install/version.txt
echo "" >> /install/version.txt