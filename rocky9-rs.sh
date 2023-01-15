#!/usr/bin/env bash
sudo dnf update -y

# ResilientStorage
sudo dnf config-manager --set-enabled rs -y
sudo dnf clean all -y
sudo dnf upgrade --refresh