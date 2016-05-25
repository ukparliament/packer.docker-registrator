#!/usr/bin/env bash

# This downloads and installs Docker Engine
wget -qO- https://get.docker.com/ | sh

# This pulls swarm image from https://hub.docker.com/_/swarm/
sudo docker pull swarm

# This pulls registrator image from https://hub.docker.com/r/gliderlabs/registrator/
sudo docker pull gliderlabs/registrator

# Add ubuntu user to docker group
sudo usermod -G docker ubuntu