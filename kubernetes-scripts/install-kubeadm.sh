#!/bin/bash
echo "======================= Install Kubeadm  ======================"
echo "=============== Author 0xMSherby( TH3Captin ) ================="
echo ""

echo "[+] Installing some pre-requesites"
sudo apt-get update && sudo apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
echo "[+] Update repos"
sudo apt-get update
echo "[+] Install kubeadm & kubectl & kubelet"
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
echo "[+] Done !"
