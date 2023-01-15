#!/usr/bin/env bash
sudo dnf update -y

# nfv
sudo dnf config-manager --set-enabled nfv -y
sudo dnf clean all -y
sudo dnf upgrade --refresh