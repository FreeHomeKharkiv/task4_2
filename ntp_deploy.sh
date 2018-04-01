#!/bin/bash
###Install NTP Server
#apt update
#apt upgrade
apt install ntp

/etc/init.d/ntp start


###ChangeTimeZone
sed -i 's/pool [0-9].ubuntu.pool.ntp.org iburst/pool 0.ua.pool.ntp.org iburst/' /etc/ntp.conf
sed -i 's/pool ntp.ubuntu.com/pool ua.pool.ntp.org/' /etc/ntp.conf
###uniq -u /etc/ntp.conf > /etc/ntp.conf

###Start NTP Server
/etc/init.d/ntp restart
# 

###