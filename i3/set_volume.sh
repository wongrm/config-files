#!/bin/bash
mode=$1
argument=$2
sink_info=$(pactl list sinks short)
sink_number="${sink_info:0:1}"

pactl set-sink-$mode $sink_number $argument
