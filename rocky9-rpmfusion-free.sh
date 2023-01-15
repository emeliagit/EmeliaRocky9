#!/usr/bin/env bash
sudo dnf update -y

# rpmfusion free
sudo dnf install rpmfusion-free-release -y
sudo dnf clean all -y
sudo dnf upgrade --refresh
