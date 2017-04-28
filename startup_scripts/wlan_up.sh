#!/bin/sh
####
# a5-v11 Airplay.mini
#
# Author: widapro@gmail.com
####

#preconfigure wlan to connect
sed -i -e "s|option network  lan|option network 'wwan'|g" /etc/config/wireless
sed -i -e "s|option mode     ap|option mode     sta|g" /etc/config/wireless
sed -i -e 's|option ssid     OpenWrt|option ssid 'ssidname'|g' /etc/config/wireless
sed -i -e 's|option encryption none|option encryption 'psk2'|g' /etc/config/wireless
sed -i -e 's|option disabled 1|option disabled 0|g' /etc/config/wireless
echo "option key wifipass" >> /etc/config/wireless

echo "config interface 'wwan'" >> /etc/config/network 
echo "        option proto 'dhcp'" >> /etc/config/network

#disable this script at next boot
sed -i -e 's|/etc/startup_scripts/wlan_up.sh|#/etc/startup_scripts/wlan_up.sh|g' /etc/rc.local

ifup wwan
