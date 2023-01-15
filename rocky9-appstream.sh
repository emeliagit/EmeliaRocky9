#!/usr/bin/env bash
sudo dnf update -y

# appstream
sudo dnf config-manager --set-enabled appstream -y
sudo dnf clean all -y
sudo dnf upgrade --refresh
