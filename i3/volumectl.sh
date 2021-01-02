#!/bin/bash
mode=$1
argument=$2
sink_number=$(pactl list sinks short|awk '{print $1}')
#echo $sink_info
#sink_number="${sink_info:0:1}"
echo $sink_number
pactl set-sink-$mode $sink_number $argument
