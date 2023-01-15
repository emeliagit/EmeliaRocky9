#!/usr/bin/env bash
sudo dnf update -y

# rpmfusion free tainted
sudo dnf install rpmfusion-free-release-tainted -y
sudo dnf clean all -y
sudo dnf upgrade --refresh
