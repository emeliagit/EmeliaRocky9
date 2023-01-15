#!/usr/bin/env bash
sudo dnf update -y

# crb
sudo dnf config-manager --set-enabled crb -y
sudo dnf clean all -y
sudo dnf upgrade --refresh
