#!/usr/bin/env bash

sudo apt-get update

# This downloads and installs Docker Engine
wget -qO- https://get.docker.com/ | sh

# This pulls swarm image from https://hub.docker.com/_/swarm/
sudo docker pull swarm

# This pulls registrator image from https://hub.docker.com/r/gliderlabs/registrator/
sudo docker pull gliderlabs/registrator