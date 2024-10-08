#!/bin/sh
# NTPServer
sed -i.bak 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sed -i.bak 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
cd /tmp/ && yum install git -y && git clone https://github.com/income88/NTPServer && cd NTPServer/ && sed -i -e 's/\r$//' NTP-SERVER.sh && chmod 755 NTP-SERVER.sh && ./NTP-SERVER.sh
