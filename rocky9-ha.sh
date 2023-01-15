#!/usr/bin/env bash
sudo dnf update -y

# HighAvailability
sudo dnf config-manager --set-enabled ha -y
sudo dnf clean all -y
sudo dnf upgrade --refresh