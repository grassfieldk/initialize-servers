#!/bin/bash

##
## Common > Initialize
##

cd `dirname $0`
chmod -R +x ./

# Interactive
echo -n 'Did you create this server with application template? [y/n]: '
read isAppServer

if [ $isAppServer = 'y' ]
then
  echo ''
  echo 'Which template?'
  echo 'l ... LAMP'
  echo 'r ... Ruby on Rails'
  read template

else
  :

fi

# Automatic
distribution=`./check_distribution.sh`

# Initialize
case $distribution in
  'centos' ) ./distribution/centos/initialize.sh ;;
  'ubuntu' ) ./distribution/ubuntu/initialize.sh ;;
esac

case $template in
  'l' ) ./template/lamp.sh ;;
  'r' ) ./template/rails.sh ;;
esac
