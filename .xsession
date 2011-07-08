#!/bin/bash

# Disable DPMS turning off the screen
xset dpms force on
xset s off

# Disable bell
xset -b

# Enable zapping (C-A-<Bksp> kills X)
setxkbmap -option terminate:ctrl_alt_bksp

# Set background color
xsetroot -solid "#000000"

# Enable core dumps in case something goes wrong
ulimit -c unlimited

# i3status
# (
#	DZEN2_PANEL_OPTS='-ta r -bg black -fg #aba39d -fn -misc-fixed-medium-r-*-*-13-*-*-*-*-60-iso10646-1 -u -p -e ""'
#	i3status | tee \
#		>(dzen2 $DZEN2_PANEL_OPTS -w 800 -x 350 -y 847) \
#		>(dzen2 $DZEN2_PANEL_OPTS -w 800 -x 1374 -y 751) \
#		>/dev/null
# ) &

# Start i3
# exec i3 --force-xinerama

openbox
