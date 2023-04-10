#!/usr/bin/env bash
echo "################################"
echo "# DevSecOps base image builder #"
echo "################################"

# Update the apt package index
apt update
apt list --upgradable
# Upgrade existing packages
apt upgrade

# Install additional packages
for f in /install/packages/*.sh; do
  bash "$f" || exit -1  # execute successfully or break
done
    