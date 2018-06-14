#!/bin/bash

##
## Distribution > Ubuntu > Initialize
##

echo ""                                 >> /etc/bashrc
echo "HISTTIMEFORMAT='%Y/%m/%d %H:%M '" >> /etc/bashrc
echo "HISTSIZE=999"                     >> /etc/bashrc
echo "HISTFILESIZE=9999"                >> /etc/bashrc

echo ""                             >> /etc/virc
echo "set encoding=utf-8"           >> /etc/virc
echo "set fileencodings=utf-8,sjis" >> /etc/virc

apt update -y && apt upgrade -y
apt install -y bash-completion git tree
