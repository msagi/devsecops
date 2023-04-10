#!/usr/bin/env bash

# Install dependencies
apt install -y \
    curl

version=v1.26.3

# create temp folder
tempFolder=/tmp/install-kubectl
mkdir ${tempFolder}
cd ${tempFolder}

# Check for latest stable version
latestStableVersion=$(curl -L -s https://dl.k8s.io/release/stable.txt)

if "${version}" -ne "${latestStableVersion}"; then
    echo "WARNING: New latest stable version is available: ${latestStableVersion}"
fi

# Download binary linux amd64 release
curl -LO "https://dl.k8s.io/release/${version}/bin/linux/amd64/kubectl"

# Download related checksum
curl -LO "https://dl.k8s.io/${version}/bin/linux/amd64/kubectl.sha256"
# Check checksum
echo "$(cat kubectl.sha256)  kubectl" | sha256sum -c
if [ $? -ne 0 ]; then
    echo "ERROR: kubectl sha256sum check FAILED"
    exit -1
else
    echo "kubectl sha256sum check OK"
fi

# Install kubectl
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

kubectl version --client

# Cleanup temp folders
rm -rf ${tempFolder}