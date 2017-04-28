#!/bin/sh
####
# a5-v11 Airplay.mini
#
# Author: widapro@gmail.com
####

#change uhttpd configuration
sed -i 's|# not need to be executable.|list interpreter        ".php=/usr/bin/php-cgi"|g' /etc/config/uhttpd
sed -i -e "s|# Server document root|option index_page 'index.php'|g" /etc/config/uhttpd

#disable this script at next boot
sed -i -e 's|/etc/startup_scripts/enable_php.sh|#/etc/startup_scripts/enable_php.sh|g' /etc/rc.local

/etc/init.d/uhttpd restart
