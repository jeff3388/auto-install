#!/bin/sh

# download images and install docker
sudo apt-get update
sudo curl -sSL https://get.docker.com | sh

# Join the system to the highest authority
sudo usermod -aG docker dockerlab
grep "docker:" /etc/group
exit

# restart docker service and install ubuntu:16.04
sudo service docker start
docker pull ubuntu:16.04
