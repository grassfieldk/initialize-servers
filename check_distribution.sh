#!/bin/bash

##
## Common > Check distribution
##

if   [ -e /etc/debian_version ] ||
     [ -e /etc/debian_release ]; then
    # Check Ubuntu or Debian
    if [ -e /etc/lsb-release ]; then
        # Ubuntu
        distri_name="ubuntu"
    else
        # Debian
        distri_name="debian"
    fi
elif [ -e /etc/fedora-release ]; then
    # Fedra
    distri_name="fedora"
elif [ -e /etc/redhat-release ]; then
    if [ -e /etc/oracle-release ]; then
        # Oracle Linux
        distri_name="oracle"
    elif [ -e /etc/centos-release ]; then
        # CentOS
        distri_name="centos"
    else
        # Red Hat Enterprise Linux
        distri_name="redhat"
    fi
elif [ -e /etc/arch-release ]; then
    # Arch Linux
    distri_name="arch"
elif [ -e /etc/turbolinux-release ]; then
    # Turbolinux
    distri_name="turbol"
elif [ -e /etc/SuSE-release ]; then
    # SuSE Linux
    distri_name="suse"
elif [ -e /etc/mandriva-release ]; then
    # Mandriva Linux
    distri_name="mandriva"
elif [ -e /etc/vine-release ]; then
    # Vine Linux
    distri_name="vine"
elif [ -e /etc/gentoo-release ]; then
    # Gentoo Linux
    distri_name="gentoo"
else
    # Other
    echo "unkown distribution"
    distri_name="unkown"
fi

echo $distri_name
