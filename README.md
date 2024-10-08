#!/bin/sh
# NTPServer
cd /tmp/ && yum install git -y && git clone https://github.com/income88/NTPServer && cd NTPServer/ && sed -i -e 's/\r$//' NTP-SERVER.sh && chmod 755 NTP-SERVER.sh && ./NTP-SERVER.sh
