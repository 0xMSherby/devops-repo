#!/bin/bash
echo "================ Docker Install with Version =================="
echo "=============== Author 0xMSherby( TH3Captin ) ================="
echo ""

apt-cache madison docker-ce
echo "[+] Please enter the docker version from the above list"
read docker_version
sudo apt-get install docker-ce=$docker_version
echo "[+] Done install docker v=".$docker_version
