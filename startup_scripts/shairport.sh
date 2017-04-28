#!/bin/sh
####
# a5-v11 Airplay.mini
#
# Author: widapro@gmail.com
####

#waiting internet
while ! ping -c 1 -W 1 google.com; do
    sleep 10
done

#install packages
wget -O /tmp/zlib_1.2.8-1_ramips_24kec.ipk http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/rt305x/packages/base/zlib_1.2.8-1_ramips_24kec.ipk
opkg install /tmp/zlib_1.2.8-1_ramips_24kec.ipk -d ram
ln -s /tmp/usr/lib/opkg/info/zlib.list /usr/lib/opkg/info/zlib.list
ln -s /tmp/usr/lib/opkg/info/zlib.control /usr/lib/opkg/info/zlib.control
opkg install /tmp/zlib_1.2.8-1_ramips_24kec.ipk -d ram
rm /tmp/zlib_1.2.8-1_ramips_24kec.ipk
echo " "

wget -O /tmp/libopenssl_1.0.2g-1_ramips_24kec.ipk http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/rt305x/packages/base/libopenssl_1.0.2g-1_ramips_24kec.ipk
opkg install /tmp/libopenssl_1.0.2g-1_ramips_24kec.ipk -d ram
ln -s /tmp/usr/lib/opkg/info/libopenssl.list /usr/lib/opkg/info/libopenssl.list
ln -s /tmp/usr/lib/opkg/info/libopenssl.control /usr/lib/opkg/info/libopenssl.control
opkg install /tmp/libopenssl_1.0.2g-1_ramips_24kec.ipk -d ram
rm /tmp/libopenssl_1.0.2g-1_ramips_24kec.ipk
echo " "

wget -O /tmp/libpthread_0.9.33.2-1_ramips_24kec.ipk http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/rt305x/packages/base/libpthread_0.9.33.2-1_ramips_24kec.ipk
opkg install /tmp/libpthread_0.9.33.2-1_ramips_24kec.ipk -d ram
ln -s /tmp/usr/lib/opkg/info/libpthread.list /usr/lib/opkg/info/libpthread.list
ln -s /tmp/usr/lib/opkg/info/libpthread.control /usr/lib/opkg/info/libpthread.control
opkg install /tmp/libpthread_0.9.33.2-1_ramips_24kec.ipk -d ram
rm /tmp/libpthread_0.9.33.2-1_ramips_24kec.ipk
echo " "

wget -O /tmp/libdbus_1.9.14-1_ramips_24kec.ipk http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/rt305x/packages/packages/libdbus_1.9.14-1_ramips_24kec.ipk
opkg install /tmp/libdbus_1.9.14-1_ramips_24kec.ipk -d ram
ln -s /tmp/usr/lib/opkg/info/libdbus.control /usr/lib/opkg/info/libdbus.control
ln -s /tmp/usr/lib/opkg/info/libdbus.list /usr/lib/opkg/info/libdbus.list
opkg install /tmp/libdbus_1.9.14-1_ramips_24kec.ipk -d ram
rm /tmp/libdbus_1.9.14-1_ramips_24kec.ipk
echo " "

wget -O /tmp/libexpat_2.1.0-3_ramips_24kec.ipk http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/rt305x/packages/packages/libexpat_2.1.0-3_ramips_24kec.ipk
opkg install /tmp/libexpat_2.1.0-3_ramips_24kec.ipk -d ram
ln -s /tmp/usr/lib/opkg/info/libexpat.control /usr/lib/opkg/info/libexpat.control
ln -s /tmp/usr/lib/opkg/info/libexpat.list /usr/lib/opkg/info/libexpat.list
opkg install /tmp/libexpat_2.1.0-3_ramips_24kec.ipk -d ram
rm /tmp/libexpat_2.1.0-3_ramips_24kec.ipk
echo " "

wget -O /tmp/dbus_1.9.14-1_ramips_24kec.ipk http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/rt305x/packages/packages/dbus_1.9.14-1_ramips_24kec.ipk
opkg install /tmp/dbus_1.9.14-1_ramips_24kec.ipk -d ram
ln -s /tmp/usr/lib/opkg/info/dbus.list /usr/lib/opkg/info/dbus.list
ln -s /tmp//usr/lib/opkg/info/dbus.control /usr/lib/opkg/info/dbus.control
opkg install /tmp/dbus_1.9.14-1_ramips_24kec.ipk -d ram
rm /tmp/dbus_1.9.14-1_ramips_24kec.ipk
echo " "

wget -O /tmp/libavahi-dbus-support_0.6.31-12_ramips_24kec.ipk http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/rt305x/packages/packages/libavahi-dbus-support_0.6.31-12_ramips_24kec.ipk
opkg install /tmp/libavahi-dbus-support_0.6.31-12_ramips_24kec.ipk -d ram
ln -s /tmp/usr/lib/opkg/info/libavahi-dbus-support.list /usr/lib/opkg/info/libavahi-dbus-support.list
ln -s /tmp/usr/lib/opkg/info/libavahi-dbus-support.control /usr/lib/opkg/info/libavahi-dbus-support.control
opkg install /tmp/libavahi-dbus-support_0.6.31-12_ramips_24kec.ipk -d ram
rm /tmp/libavahi-dbus-support_0.6.31-12_ramips_24kec.ipk
echo " "

wget -O /tmp/libdaemon_0.14-5_ramips_24kec.ipk http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/rt305x/packages/packages/libdaemon_0.14-5_ramips_24kec.ipk
opkg install /tmp/libdaemon_0.14-5_ramips_24kec.ipk -d ram
ln -s /tmp/usr/lib/opkg/info/libdaemon.control /usr/lib/opkg/info/libdaemon.control
ln -s /tmp/usr/lib/opkg/info/libdaemon.list /usr/lib/opkg/info/libdaemon.list
opkg install /tmp/libdaemon_0.14-5_ramips_24kec.ipk -d ram
rm /tmp/libdaemon_0.14-5_ramips_24kec.ipk
echo " "

wget -O /tmp/librt_0.9.33.2-1_ramips_24kec.ipk http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/rt305x/packages/base/librt_0.9.33.2-1_ramips_24kec.ipk
opkg install /tmp/librt_0.9.33.2-1_ramips_24kec.ipk -d ram
ln -s /tmp/usr/lib/opkg/info/librt.control /usr/lib/opkg/info/librt.control
ln -s /tmp/usr/lib/opkg/info/librt.list /usr/lib/opkg/info/librt.list
opkg install /tmp/librt_0.9.33.2-1_ramips_24kec.ipk -d ram
rm /tmp/librt_0.9.33.2-1_ramips_24kec.ipk
echo " "

wget -O /tmp/avahi-dbus-daemon_0.6.31-12_ramips_24kec.ipk http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/rt305x/packages/packages/avahi-dbus-daemon_0.6.31-12_ramips_24kec.ipk
opkg install /tmp/avahi-dbus-daemon_0.6.31-12_ramips_24kec.ipk -d ram
ln -s /tmp/usr/lib/opkg/info/avahi-dbus-daemon.list /usr/lib/opkg/info/avahi-dbus-daemon.list
ln -s /tmp/usr/lib/opkg/info/avahi-dbus-daemon.control /usr/lib/opkg/info/avahi-dbus-daemon.control
opkg install /tmp/avahi-dbus-daemon_0.6.31-12_ramips_24kec.ipk -d ram
rm /tmp/avahi-dbus-daemon_0.6.31-12_ramips_24kec.ipk
echo " "

wget -O /tmp/libavahi-client_0.6.31-12_ramips_24kec.ipk http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/rt305x/packages/packages/libavahi-client_0.6.31-12_ramips_24kec.ipk
opkg install /tmp/libavahi-client_0.6.31-12_ramips_24kec.ipk -d ram
ln -s /tmp/usr/lib/opkg/info/libavahi-client.control /usr/lib/opkg/info/libavahi-client.control
ln -s /tmp/usr/lib/opkg/info/libavahi-client.list /usr/lib/opkg/info/libavahi-client.list
opkg install /tmp/libavahi-client_0.6.31-12_ramips_24kec.ipk -d ram
rm /tmp/libavahi-client_0.6.31-12_ramips_24kec.ipk
echo " "

wget -O /tmp/alsa-lib_1.0.28-1_ramips_24kec.ipk http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/rt305x/packages/packages/alsa-lib_1.0.28-1_ramips_24kec.ipk
opkg install /tmp/alsa-lib_1.0.28-1_ramips_24kec.ipk -d ram
ln -s /tmp/usr/lib/opkg/info/alsa-lib.control /usr/lib/opkg/info/alsa-lib.control
ln -s /tmp/usr/lib/opkg/info/alsa-lib.list /usr/lib/opkg/info/alsa-lib.list
opkg install /tmp/alsa-lib_1.0.28-1_ramips_24kec.ipk -d ram
rm /tmp/alsa-lib_1.0.28-1_ramips_24kec.ipk
echo " "

wget -O /tmp/libsoxr_0.1.1-2_ramips_24kec.ipk http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/rt305x/packages/packages/libsoxr_0.1.1-2_ramips_24kec.ipk
opkg install /tmp/libsoxr_0.1.1-2_ramips_24kec.ipk -d ram
ln -s /tmp/usr/lib/opkg/info/libsoxr.control /usr/lib/opkg/info/libsoxr.control
ln -s /tmp/usr/lib/opkg/info/libsoxr.list /usr/lib/opkg/info/libsoxr.list
opkg install /tmp/libsoxr_0.1.1-2_ramips_24kec.ipk -d ram
rm /tmp/libsoxr_0.1.1-2_ramips_24kec.ipk
echo " "

wget -O /tmp/libpopt_1.16-1_ramips_24kec.ipk http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/rt305x/packages/base/libpopt_1.16-1_ramips_24kec.ipk
opkg install /tmp/libpopt_1.16-1_ramips_24kec.ipk -d ram
ln -s /tmp/usr/lib/opkg/info/libpopt.control /usr/lib/opkg/info/libpopt.control
ln -s /tmp/usr/lib/opkg/info/libpopt.list /usr/lib/opkg/info/libpopt.list
opkg install /tmp/libpopt_1.16-1_ramips_24kec.ipk -d ram
rm /tmp/libpopt_1.16-1_ramips_24kec.ipk
echo " "

wget -O /tmp/shairport-sync_2.1.15-1_ramips_24kec.ipk http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/rt305x/packages/packages/shairport-sync_2.1.15-1_ramips_24kec.ipk
opkg install /tmp/shairport-sync_2.1.15-1_ramips_24kec.ipk -d ram
ln -s /tmp/usr/lib/opkg/info/shairport-sync.list /usr/lib/opkg/info/shairport-sync.list
ln -s /tmp/usr/lib/opkg/info/shairport-sync.control /usr/lib/opkg/info/shairport-sync.control
opkg install /tmp/shairport-sync_2.1.15-1_ramips_24kec.ipk -d ram
rm /tmp/shairport-sync_2.1.15-1_ramips_24kec.ipk
echo " "

#link /tmp/etc/ to /etc/
DIRECTORY=$(find /tmp/etc/ -type d -print | cut -c 5-)
for dir in $DIRECTORY
do
if [ ! -d "$dir" ]; then
echo "create directory:  $dir"
mkdir $dir
echo " "
fi
done

FILES=$(find /tmp/etc/ -type f -follow -print | cut -c 5-)
for f in $FILES
do
echo "create symlink: $f"
ln -s /tmp$f $f
echo " "
done

#link /tmp/usr/ to /usr
DIRECTORY=$(find /tmp/usr/ -type d -print | cut -c 5-)
for dir in $DIRECTORY
do
if [ ! -d "$dir" ]; then
echo "create directory:  $dir"
mkdir $dir
echo " "
fi
done

FILES=$(find /tmp/usr/ -type f -follow -print | cut -c 5-)
for f in $FILES
do
echo "create symlink: $f"
ln -s /tmp$f $f
echo " "
done


#link /tmp/lib/ to /lib
DIRECTORY=$(find /tmp/lib/ -type d -print | cut -c 5-)
for dir in $DIRECTORY
do
if [ ! -d "$dir" ]; then
echo "create directory:  $dir"
mkdir $dir
echo " "
fi
done

FILES=$(find /tmp/lib/ -type f -follow -print | cut -c 5-)
for f in $FILES
do
echo "create symlink: $f"
ln -s /tmp$f $f
echo " "
done

#for avahi-daemon
mkdir /var/run/dbus/
echo "netdev:x:150:" >> /etc/group
/etc/init.d/dbus start
/etc/init.d/avahi-daemon start

sed -i -e "s|#       option name 'Shairport Sync'|       option name 'Airplay.mini'|g" /etc/config/shairport-sync
/etc/init.d/shairport-sync start

#disable this script at next boot
#sed -i -e 's|/etc/startup_scripts/shairport.sh|#/etc/startup_scripts/shairport.sh|g' /etc/rc.local

echo "1" > /sys/class/leds/a5-v11\:blue\:system/brightness 
