#!/bin/bash

echo "root"|su -c ' ifconfig wlan0 up' root

if [ -f /etc/wpa_supplicant/wifi.conf ] ; then

  echo "root"|su -c 'wpa_supplicant -B -c /etc/wpa_supplicant/wifi.conf -iwlan0' root &

fi

echo "root"|su -c 'udhcpc -b -i wlan0' root