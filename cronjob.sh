#!/bin/bash

# I think this is old GNOME stuff..?
# PID=$(pgrep -U 1000 gnome-session)
# export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)

worldmapdir=/Users/blair/00blair/gitrepos/liveworldmap
rm -f $worldmapdir/images/*.jpg
unixtime=$(date +%s)
xplanet -conf \
	$worldmapdir/config/config.conf \
	-projection rectangular -geometry 1920x1080 \
	-output $worldmapdir/images/$unixtime.jpg --num_times 1

## Uncomment this for GNOME:
# gsettings set org.gnome.desktop.background picture-uri file://$worldmapdir/images/$unixtime.jpg

## Uncomment this for MATE:
# gsettings set org.mate.background picture-filename $worldmapdir/images/$unixtime.jpg

## Uncomment this for Mac OS:
sh $worldmapdir/macos-desktop/set-desktop-mojave.sh "$worldmapdir/images/$unixtime.jpg"