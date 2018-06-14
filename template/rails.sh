#!/bin/bash

##
## Template > Ruby on Rails > Initialize
##

firewall-cmd --add-port=3000/tcp --zone=public --permanent
firewall-cmd --reload

yum install -y nodejs

mysql_password=$(grep "password" /etc/motd | awk -F: '{print $2}' | tr -d ' ')
mysql -uroot -p$mysql_password -e "UPDATE mysql.user SET password='' WHERE User='root'"
mysql -uroot -p$mysql_password -e "FLUSH PRIVILEGES"
