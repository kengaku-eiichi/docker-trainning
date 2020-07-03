#!/bin/bash

dnf -y install device-mapper-persistent-data lvm2 wget
wget https://download.docker.com/linux/centos/docker-ce.repo -P"/etc/yum.repos.d/"
dnf makecache
dnf -y install docker-ce --nobest
systemctl enable --now docker
usermod -aG docker $USER
newgrp docker
docker version

curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version

docker run -d -p 80:80 --rm -v /git/docker-trainning/html:/usr/share/nginx/html -v /git/docker-trainning/log:/var/log nginx:1.19
# docker exec -it xxx /bin/bash

# docker build -t trainning/nginx /git/docker-trainning
# docker run -d -p 80:80 --rm -v /git/docker-trainning/log:/var/log trainning/nginx
