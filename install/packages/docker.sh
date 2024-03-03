#!/usr/bin/env bash

# Install latest docker packages for Ubuntu 24.04
# credits: https://kifarunix.com/how-to-install-docker-on-ubuntu-24-04/?expand_article=1#docker-repos

# create temp folder
tempFolder=/tmp/install-docker
mkdir ${tempFolder}
cd ${tempFolder}

# Install dependencies
apt-get install -y \
  apt-transport-https \
	ca-certificates \
	curl \
	gnupg-agent \
	software-properties-common

# Add Docker’s official GPG key
mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/docker.gpg

# Note that as of this writing, Docker-CE repos is not yet available for Ubuntu 24.04 Noble Numbat. 
# We will use Docker repos for Ubuntu 22.04 Jammy for now. However, if you want, you can install the 
# Docker packages that ships with Ubuntu 24.04 by default, docker.io. This may not provide the latest 
# release versions of Docker though.
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu jammy stable" | tee /etc/apt/sources.list.d/docker-ce.list

# Update the apt package index
apt-get update

# Install Docker Engine, containerd, and Docker Compose
apt-get install -y \
  docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Verify that the installation is successful
echo "[Docker]" >> /install/version.txt
docker --version >> /install/version.txt
echo "" >> /install/version.txt

# Cleanup temp folders
rm -rf ${tempFolder}