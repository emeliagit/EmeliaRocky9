#!/usr/bin/env bash
sudo dnf update -y

# extras
sudo dnf config-manager --set-enabled extras -y
sudo dnf clean all -y
sudo dnf upgrade --refresh