#!/usr/bin/env bash
sudo dnf update -y

# plus
sudo dnf config-manager --set-enabled plus -y
sudo dnf clean all -y
sudo dnf upgrade --refresh