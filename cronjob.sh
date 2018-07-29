#!/bin/bash

# I think this is old GNOME stuff..?
# PID=$(pgrep -U 1000 gnome-session)
# export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)


rm -f /home/blair/gitrepos/worldmap/images/*.jpg
unixtime=$(date +%s)
xplanet -conf \
	/home/blair/gitrepos/worldmap/config/config.conf \
	-projection rectangular -geometry 1920x1080 \
	-output /home/blair/gitrepos/worldmap/images/$unixtime.jpg --num_times 1

gsettings set org.gnome.desktop.background picture-uri file:///home/blair/gitrepos/worldmap/images/$unixtime.jpg
