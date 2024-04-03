#!/bin/bash
set -eu

cd `dirname $0`
chmod -R +x ./


# Installation options
echo -n 'Install Node.js? [y/n]: '
read nodejs

echo -n 'Install Docker? [y/n]: '
read docker
if [ $docker = 'y' ]
then
  echo -n 'Install Docker Compose? [y/n]: '
  read dockercompose
fi


# Common Initialization
./common/install.sh

distribution=`./common/check_distribution.sh`
case $distribution in
  'centos' ) ./distribution/centos.sh ;;
  'ubuntu' ) ./distribution/ubuntu.sh ;;
esac


# Optional Installation
if [ $nodejs = 'y' ]
then
  #TODO: install volta
fi

if [ $docker = 'y' ]
then
  #TODO: install docker
fi

if [ $dockercompose = 'y' ]
then
  #TODO: install docker compose
fi
