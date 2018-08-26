#!/bin/bash

##
## Distribution > CentOS > Initialize
##

echo ""                                 >> /etc/bashrc
echo "HISTTIMEFORMAT='%Y/%m/%d %H:%M '" >> /etc/bashrc
echo "HISTSIZE=999"                     >> /etc/bashrc
echo "HISTFILESIZE=9999"                >> /etc/bashrc

echo ""                             >> /etc/virc
echo "set encoding=utf-8"           >> /etc/virc
echo "set fileencodings=utf-8,sjis" >> /etc/virc

yum update -y && yum clean all
yum install -y bash-completion tree git net-tools
