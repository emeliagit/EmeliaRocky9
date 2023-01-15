#!/usr/bin/env bash
sudo dnf update -y

# devel
sudo dnf config-manager --set-enabled devel -y
sudo dnf clean all -y
sudo dnf upgrade --refresh