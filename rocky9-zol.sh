#!/usr/bin/env bash
sudo dnf update -y

# zol
source /etc/os-release
sudo dnf install https://zfsonlinux.org/epel/zfs-release.el${VERSION_ID/./_}.noarch.rpm
sudo rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-zfsonlinux
sudo dnf clean all -y
sudo dnf upgrade --refresh