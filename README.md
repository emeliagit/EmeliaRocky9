/bin/bash: line 1: indent: command not found
Scripts to add some dnf/yum repositories to rocky el9
see https://wiki.rockylinux.org/rocky/repo/

for rocky linux 8?: https://gitlab.com/vibrantleaf/rockylinux8-repos/

#### Note
This may also work on other CentOS likes, (like alma linux) but i have no plans on testing any other rhel rebuild

#### Run Order
```sh
./rocky9-crb.sh
./rocky9-appstream.sh
./rocky9-extras.sh
./rocky9-plus.sh
./rocky9-epel.sh
./rocky9-elrepo.sh
./rocky9-zol.sh
./rocky9-rpmfusion-free.sh
./rocky9-rpmfusion-nonfree.sh
./rocky9-rpmfusion-free-tainted.sh
./rocky9-rpmfusion-nonfree-tainted.sh
./rocky9-nvidia-container-toolkit.sh

# more
./rocky9-devel.sh
./rocky9-nfv.sh
./rocky9-rt.sh
./rocky9-rs.sh
./rocky9-saphana.sh
./rocky9-ha.sh

# not updated to rhel9
#./rocky9-rancher.sh
#./rocky9-45drives.sh
#./rocky9-cir-o.sh
```

### helperScripts
#### rocky-firmware-elkernel-lt.sh
Installs firmware from rpmfusion and elrepo's kernel-lt (LTS)
- rpmfusion: `\*-firmware`
- elrepo: `kernel-lt`
- elrepo: `kernel-lt-headers`
- elrepo: `kernel-lt-devel`
- 'dkms'
#### rocky-firmware-elkernel-ml.sh
Installs firmware from rpmfusion and elrepo's kernel-lt (LTS)
- rpmfusion: `\*-firmware`
- elrepo: `kernel-ml`
- elrepo: `kernel-ml-headers`
- elrepo: `kernel-ml-devel`
- 'dkms'

#### Disable default kernel updates
`sudo vim /etc/dnf/dnf.conf`
```
[main]
gpgcheck=1
installonly_limit=3
clean_requirements_on_remove=True
best=True
skip_if_unavailable=False
clean_requirements_on_remove=True
max_parallel_downloads=6


exclude=kernel kernel-core kernel-devel kernel-headers kernel-modules kernel-modules-extra kernel-doc
```
#### rocky-nvidia-driver-patcher.sh
Installs the dependaceys for the nvidia driver and downloads [keylase's nvidia patch](https://github.com/keylase/nvidia-patch)


================================================================== Emelia Notes =========================================================================================
I added an extra small script, called "emeliaextras.sh", which installs the NVIDIA drivers that work for me. Also, "TheWholeShebang.sh" will just run everything here, so just run that and you should be good to go. 
