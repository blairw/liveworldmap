#!/bin/bash

# I think this is old GNOME stuff..?
# PID=$(pgrep -U 1000 gnome-session)
# export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)

worldmapdir=/home/blair/00blair/gitrepos/worldmap
rm -f $worldmapdir/images/*.jpg
unixtime=$(date +%s)
xplanet -conf \
	$worldmapdir/config/config.conf \
	-projection rectangular -geometry 1920x1080 \
	-output $worldmapdir/images/$unixtime.jpg --num_times 1

# I think this is old GNOME stuff..?
# gsettings set org.gnome.desktop.background picture-uri file://$worldmapdir/images/$unixtime.jpg
gsettings set org.mate.background picture-filename $worldmapdir/images/$unixtime.jpg
