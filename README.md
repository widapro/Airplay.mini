# Airplay.mini
Airplay mini player at a5-v11 device for iOS and Mac devices

Download Compiled firmware: [download](Airplay.mini-a5-v11.bin "compiled friemware for a5-v11")

## Device
You will need NoName Mini 3g-4g wifi router which called <b>a5-v11</b> [Can buy here](https://ru.aliexpress.com/item/Factory-price-Mini-3G-4G-WiFi-Wlan-Hotspot-AP-Client-150Mbps-RJ45-USB-Wireless-Router-AU4/32708017984.html)

<img src="images/a5-v11.png?raw=true" width="150" title="a5-v11" />



also you need some USB sound card like this:

<img src="images/usb_sound.jpg?raw=true" width="150" title="usb sound card" />


As an Airplay service, the shairplay-sync package supports the synchronization of sound with the source.

Because To install this package you need about 5 MB of space on the USB flash drive, and in the device only 4 MB, then Airplay is installed in the RAM at every boot of the device.

## Everything works according to the following algorithm:
1. The device is loaded and the red LED lights up.
2. A cyclic ping test to google starts from 10 seconds. Pauses.
3. When the Internet appears, the script for installing shairplay-sync and its dependencies is launched.
4. Installs and starts Airplay and the blue LED lights up.
5. On the phone or computer you can now see the Airplay device: Airplas.mini

# Upload firmware in any standard way, for example through the breed u-boot

## To connect to the Wifi after the first download, you must:
1. Go to the address: http://192.168.1.1 through the wire.
2. Click the "Edit" button and prescribe the name of your wireless network and password.
3. Click the "Save" button.

## Additional Information:
- telnet is available
- after setting the password in the telnet command: passwd, telnet is turned off and ssh-server is turned on (ssh root@192.168.1.1)
- We have installed usb-sound modules. Insert into the usb any "Chinese" usb-sound and connect it to the speakers.
