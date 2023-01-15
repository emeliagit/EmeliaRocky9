#!/usr/bin/env bash
sudo dnf update -y

# rpmfusion-nonfree
sudo dnf install --nogpgcheck -y https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-9.noarch.rpm
sudo dnf clean all -y
sudo dnf upgrade --refresh
