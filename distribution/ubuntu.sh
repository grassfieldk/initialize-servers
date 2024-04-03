#!/bin/bash
set -eu

##
## Distribution: Ubuntu
##

echo ""                                 >> /etc/bash.bashrc
echo "HISTTIMEFORMAT='%Y/%m/%d %H:%M '" >> /etc/bash.bashrc
echo "HISTSIZE=999"                     >> /etc/bash.bashrc
echo "HISTFILESIZE=9999"                >> /etc/bash.bashrc

apt update -y && apt upgrade -y && apt autoclean
apt install -y bash-completion tree git net-tools
