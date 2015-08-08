#!/bin/sh

sudo openvt -c 7 -s -f clear
sudo openvt -c 7 -s -f echo "Running Moonlight from KODI"
sudo su osmc -c "nohup openvt -c 7 -s -f sh /home/osmc/moonlight/stream.sh >/dev/null 2>&1 &" &
sudo su osmc -c "sudo sh /home/osmc/moonlight/moonlight_watchdog.sh &" &
sudo openvt -c 7 -s -f clear
sleep 2
sudo su -c "systemctl stop mediacenter &" &

exit