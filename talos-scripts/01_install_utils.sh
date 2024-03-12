#!/bin/bash

# Install kubectl
curl -LO https://dl.k8s.io/release/$(curl -Ls https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl
chmod 555 ./kubectl
mv kubectl /usr/local/bin/kubectl

# Install talosctl
curl -sL https://talos.dev/install | sh

# Install talhelper
curl https://i.jpillora.com/budimanjojo/talhelper! | sudo bash

# Install j2cli
sudo apt update && sudo apt install -y j2cli