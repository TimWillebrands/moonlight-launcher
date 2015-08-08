#!/bin/sh
sudo /sbin/modprobe snd-bcm2835
sudo /usr/local/bin/moonlight pair
sudo /usr/local/bin/moonlight stream -1080 -60fps -bitrate 30000 -mapping /usr/local/share/mappings/xbox360.conf