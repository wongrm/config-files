#!/bin/bash
bluezcard=$(pactl list cards short | awk '/bluez/{print $2}')
echo $bluezcard
#echo $sink_info
#sink_number="${sink_info:0:1}"
pactl set-card-profile $bluezcard off
pactl set-card-profile $bluezcard a2dp_sink
