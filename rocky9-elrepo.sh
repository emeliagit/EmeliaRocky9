#!/usr/bin/env bash
sudo dnf update -y

# elrepo
sudo dnf install elrepo-release -y
sudo dnf clean all -y
sudo dnf upgrade --refresh
