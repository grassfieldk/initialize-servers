#!/bin/bash

##
## Common > Check distribution
##

if   [ -e /etc/debian_version ] ||
     [ -e /etc/debian_release ]; then
    if [ -e /etc/lsb-release ]; then
        # Ubuntu
        distribution="ubuntu"
    else
        # Debian
        distribution="debian"
    fi
elif [ -e /etc/fedora-release ]; then
    # Fedra
    distribution="fedora"
elif [ -e /etc/redhat-release ]; then
    if [ -e /etc/oracle-release ]; then
        # Oracle Linux
        distribution="oracle"
    elif [ -e /etc/centos-release ]; then
        # CentOS
        distribution="centos"
    else
        # Red Hat Enterprise Linux
        distribution="redhat"
    fi
elif [ -e /etc/arch-release ]; then
    # Arch Linux
    distribution="arch"
elif [ -e /etc/turbolinux-release ]; then
    # Turbolinux
    distribution="turbol"
elif [ -e /etc/SuSE-release ]; then
    # SuSE Linux
    distribution="suse"
elif [ -e /etc/mandriva-release ]; then
    # Mandriva Linux
    distribution="mandriva"
elif [ -e /etc/vine-release ]; then
    # Vine Linux
    distribution="vine"
elif [ -e /etc/gentoo-release ]; then
    # Gentoo Linux
    distribution="gentoo"
else
    # Other
    echo "unkown distribution"
    distribution="unkown"
fi

echo $distribution
