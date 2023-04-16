#!/usr/bin/env bash

# Install dependencies
apt install -y \
    curl

# create temp folder
tempFolder=/tmp/install-kubectl
mkdir ${tempFolder}
cd ${tempFolder}

# Check for latest stable version
version=$(curl -L -s https://dl.k8s.io/release/stable.txt)

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

echo "[kubectl]" >> /install/version.txt
kubectl version --output yaml >> /install/version.txt
# kubectl version prints an empty line after version info
#echo "" >> /install/version.txt

# Cleanup temp folders
rm -rf ${tempFolder}