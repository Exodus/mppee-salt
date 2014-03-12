#!/bin/bash
#$proxy es el proxy que tenga el sistema, si no tiene dejalo vacio
proxy="http://10.201.1.2:8080"

#Root check
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

grep salt /etc/apt/sources.list
if [ $? -ne 0 ] ;
  then echo "deb http://debian.saltstack.com/debian wheezy-saltstack main" >> /etc/apt/sources.list ;
  fi ;
export http_proxy=$proxy
wget -q -O- "http://debian.saltstack.com/debian-salt-team-joehealy.gpg.key" | apt-key add -
echo "-------------------"
echo "Hostname: "
mkdir -p /etc/salt
read host
echo $host > /etc/salt/minion_id
aptitude update
aptitude install -y salt-minion
