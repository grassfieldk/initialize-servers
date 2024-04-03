#!/bin/bash
set -eu

##
## Distribution: CentOS
##

echo ""                                 >> /etc/bashrc
echo "HISTTIMEFORMAT='%Y/%m/%d %H:%M '" >> /etc/bashrc
echo "HISTSIZE=999"                     >> /etc/bashrc
echo "HISTFILESIZE=9999"                >> /etc/bashrc

yum update -y && yum clean all
yum install -y bash-completion tree git net-tools
