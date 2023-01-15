#!/usr/bin/env bash
sudo dnf update -y

# rpmfusion-free
curl -s -L https://nvidia.github.io/libnvidia-container/rhel9.x/libnvidia-container.repo | sudo tee /etc/yum.repos.d/nvidia-container-toolkit.repo
sudo dnf clean all -y
sudo dnf upgrade --refresh