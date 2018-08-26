#!/bin/bash

##
## Template > Ruby on Rails > Initialize
##

firewall-cmd --add-port=3000/tcp --zone=public --permanent
firewall-cmd --reload

yum install -y nodejs

# Change MariaDB root user password
echo -n "MySQL root password: "
read DB_NEW_PASSWORD
DB_DEFAULT_PASSWORD=$(grep "root password" /etc/motd | tr -d " " | cut -d ":" -f 2)
mysql -uroot -p${DB_DEFAULT_PASSWORD} -e "UPDATE mysql.user SET Password=PASSWORD('${DB_NEW_PASSWORD}') WHERE User='root'"
mysql -uroot -p${DB_DEFAULT_PASSWORD} -e "FLUSH PRIVILEGES"
