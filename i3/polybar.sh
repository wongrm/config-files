#!/usr/bin/env sh

#Terminate running bar
killall -q polybar

#Wait till process shutdown
while pgrep -x polybar >/dev/null; do sleep 1; done

#Launch polybar
#polybar top &
polybar example &
