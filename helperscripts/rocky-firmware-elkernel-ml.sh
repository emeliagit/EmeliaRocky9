#!/usr/bin/env bash
sudo dnf update -y

# install firmware from rpm fusion
echo "installing firmware"
sudo dnf install \*-firmware --setop="install_weak_deps=False"

# install dkms
echo "installing dkms"
sudo dnf install dkms -y

# install long time (mlS) kernel from elrepo
echo "installing elkernel-ml"
sudo dnf --enablerepo=elrepo=elrepo-kernel install kernel-ml -y

# install long time (mlS) kernel headers and sources from elrepo
echo "installing elkernel-ml headers"
sudo dnf --enablerepo=elrepo-kernel install kernel-ml-headers -y
echo "installing elkernel-ml devel"
sudo dnf --enablerepo=elrepo-kernel install kernel-ml-devel -y--enablerepo: