#!/bin/sh
sudo yum install ntp -y
sudo systemctl start ntpd
sudo systemctl enable ntpd
sudo firewall-cmd --add-service=ntp --permanent
sudo firewall-cmd --reload
ntpq -p
systemctl status ntpd
echo "===============Setup NTP Success==============="