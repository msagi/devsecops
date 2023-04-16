#!/usr/bin/env bash

# Uninstall old Docker versions (if any)
#apt-get remove docker docker-engine docker.io containerd runc

# Install dependencies
apt-get install -y \
    ca-certificates \
    curl \
    gnupg

# Add Docker’s official GPG key
mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Set up the repository
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the apt package index
apt-get update

# Install Docker Engine, containerd, and Docker Compose
apt-get install -y \
    docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Verify that the installation is successful
echo "[Docker]" >> /install/version.txt
docker --version >> /install/version.txt
echo "" >> /install/version.txt
