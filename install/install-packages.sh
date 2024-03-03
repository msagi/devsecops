#!/usr/bin/env sh
echo "################################"
echo "# DevSecOps base image builder #"
echo "################################"

# Update the apt package index
apt-get update
# Upgrade existing packages
apt-get upgrade
apt-get install -y \
  apt-utils

# Install additional packages
files=$(find /install/packages -type f -iname "*.sh" | sort)

for f in $files; do
  echo ">>> Installing [$f]..."
  bash "$f" || exit -1  # execute successfully or break
  echo ">>> Installing [$f] done."
done

# Print installed packages
echo "Printing installed packages to file..."
apt list --installed >> /install/packages.txt
echo "Done."