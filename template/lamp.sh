#!/bin/bash

##
## Template > LAMP > Initialize
##

firewall-cmd --add-port=8080/tcp --zone=public --permanent
firewall-cmd --reload
