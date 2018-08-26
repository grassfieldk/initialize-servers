#!/bin/bash

##
## Distribution > Ubuntu > Initialize
##

echo ""                                 >> /etc/bash.bashrc
echo "HISTTIMEFORMAT='%Y/%m/%d %H:%M '" >> /etc/bash.bashrc
echo "HISTSIZE=999"                     >> /etc/bash.bashrc
echo "HISTFILESIZE=9999"                >> /etc/bash.bashrc

echo ""                             >> /etc/virc
echo "set encoding=utf-8"           >> /etc/virc
echo "set fileencodings=utf-8,sjis" >> /etc/virc

apt update -y && apt upgrade -y && apt autoclean
apt install -y bash-completion tree git net-tools
