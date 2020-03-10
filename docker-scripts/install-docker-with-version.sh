#!/bin/bash

apt-cache madison docker-ce
echo "[+] Please enter the docker version from the above list"
read docker_version
sudo apt-get install docker-ce=$docker_version
echo "[+] Done install docker v=".$docker_version
