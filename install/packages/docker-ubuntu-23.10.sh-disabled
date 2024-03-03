#!/usr/bin/env bash

# Uninstall old Docker versions (if any)
#apt-get remove docker docker-engine docker.io containerd runc

# create temp folder
tempFolder=/tmp/install-docker
mkdir ${tempFolder}
cd ${tempFolder}

# Install dependencies
apt-get install -y \
    ca-certificates \
    curl \
    gnupg

# Add Docker’s official GPG key
mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Set up the repository
versionCodeName=$(. /etc/os-release && echo "$VERSION_CODENAME")
echo "Host version code name is '${versionCodeName}'" > ${tempFolder}/host-version-codename.log
# Ubuntu 23.10 "mantic" version is not yet released from docker: falling back to Ubuntu 23.04 "lunar"
if [ "${versionCodeName}" == "mantic" ]; then
  versionCodeName=lunar
else
  echo "Target distro is '${versionCodeName}'" > ${tempFolder}/target-distro.log
fi
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "${versionCodeName}" stable" | \
  tee /etc/apt/sources.list.d/docker.list > ${tempFolder}/docker.list.log

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