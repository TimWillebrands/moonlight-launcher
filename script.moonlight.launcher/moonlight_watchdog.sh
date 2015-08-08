#!/bin/bash
sleep 30
while [ true ]; do
	VAR1="$(pgrep moonlight)"
	    xbmc-send -a 'Notification("Info","Starting Moonlight")'
	    if [ ! "$VAR1" ]; then
	if [ "$(which xboxdrv)" ]; then
	    xbmc-send -a 'Notification("Info","Microsoft XBox 360 Controller found")'
	    sudo pkill xboxdrv
	    /usr/bin/xboxdrv --config /home/osmc/xbmc.ini --silent --autofire RT=25 --autofire LT=25 --autofire du=200 --autofire dd=200 --autofire dl=500 --autofire dr=500 & 
	fi
	if [ "$(which wiimote)" ]; then
	    sudo /usr/bin/wiimote
	fi
	sleep 1
	    sudo openvt -c 7 -s -f clear
	    sudo openvt -c 7 -s -f echo "Moonlight quit... Starting KODI."
	sleep 1
	    sudo openvt -c 7 -f clear
	    sudo su -c "sudo systemctl restart mediacenter &" &
	sleep 1
	    exit
	else
	    sleep 2
	fi
done