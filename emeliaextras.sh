#! /bin/bash

echo "Now installing NVIDIA drivers, rebooting afterwards will take a long time to start up, do not panic." && sleep 5s

sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda -y

echo "installation is now complete, please reboot the system."
