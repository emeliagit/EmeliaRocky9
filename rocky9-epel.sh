#!/usr/bin/env bash
sudo dnf update -y

# epel
sudo dnf install epel-release -y
sudo dnf clean all -y
sudo dnf upgrade --refresh
