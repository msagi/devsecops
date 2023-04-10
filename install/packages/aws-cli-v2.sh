#!/usr/bin/env bash

# Install dependencies
apt install -y \
    curl \
    unzip

# create temp folder
tempFolder=/tmp/install-aws-cli-v2
mkdir ${tempFolder}
cd ${tempFolder}

# Download latest AWS CLI v2 installer
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Unzip bundle
unzip awscliv2.zip

# Install AWS CLI v2
./aws/install

# Cleanup temp folders
rm -rf ${tempFolder}