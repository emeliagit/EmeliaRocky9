#!/usr/bin/env bash
sudo dnf update -y

# install firmware from rpm fusion
echo "installing firmware"
sudo dnf install \*-firmware --setop="install_weak_deps=False"

# install dkms
echo "installing dkms"
sudo dnf install dkms -y

# install long time (LTS) kernel from elrepo
echo "installing elkernel-lt"
sudo dnf --enablerepo=elrepo=elrepo-kernel install kernel-lt -y

# install long time (LTS) kernel headers and sources from elrepo
echo "installing elkernel-lt headers"
sudo dnf --enablerepo=elrepo-kernel install kernel-lt-headers -y
echo "installing elkernel-lt devel"
sudo dnf --enablerepo=elrepo-kernel install kernel-lt-devel -y