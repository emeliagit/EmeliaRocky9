#!/usr/bin/env bash
sudo dnf update -yy

# rt
sudo dnf config-manager --set-enabled rt -y
sudo dnf clean all -y
sudo dnf upgrade --refresh