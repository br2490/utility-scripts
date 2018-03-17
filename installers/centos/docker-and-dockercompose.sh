#!/bin/bash

DOCKER_COMPOSE_VERSION=1.19.0

sudo yum remove docker \
    docker-client \
    docker-client-latest \
    docker-common \
    docker-latest \
    docker-latest-logrotate \
    docker-logrotate \
    docker-selinux \
    docker-engine-selinux \
    docker-engine -y;

sudo yum install yum-utils \
    device-mapper-persistent-data \
    lvm2 -y;

sudo yum-config-manager --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo -y;

sudo yum install docker-ce -y;

sudo systemctl enable docker;
sudo systemctl start docker;

sudo curl -L https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose;

echo -e "\n\nDone installed on `hostname` (`uname -s` - `uname -m`):\nDocker:"
docker --version;
echo 'Docker Compose:'
docker-compose --version;

