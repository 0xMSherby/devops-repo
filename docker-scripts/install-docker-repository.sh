#!/bin/bash
echo "========== Docker Installer (Recomended for k8s) =============="
echo "=============== Author 0xMSherby( TH3Captin ) ================="
echo ""
echo "[+] 1.Update the apt package index"
sudo apt-get update
echo "[+] 2.Install packages to allow apt to use a repository over HTTPS"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
echo "[+] 3.Add Docker’s official GPG key:"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "[+] 4.Verify that you now have the key with the fingerprint "
sudo apt-key fingerprint 0EBFCD88
echo "======================== [Done !] ============================="
