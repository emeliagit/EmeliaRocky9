#!/usr/bin/env bash
sudo dnf update -y

# rpmfusion nonfree tainted
sudo dnf install rpmfusion-nonfree-release-tainted -y
sudo dnf clean all -y
sudo dnf upgrade --refresh
