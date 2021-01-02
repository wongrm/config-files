#!/bin/bash
#mode=$1
#argument=$2
#sink_info=$(pactl list sinks short)
#sink_number="${sink_info:0:1}"

#pactl set-sink-$mode $sink_number $argument
person=$1

echo "Hello, I am a computer.  What is your name?"
#read yourname
echo "hi ${yourname}. Nice to meet you!"
echo "What is your agvioet and quinn and dad and mome?"
sink=$(pactl list sinks short)
echo $sink
sinknumber=${sink:0:1}
echo "What volume would you like?"
read volumelevel
echo $(volumelevel)\%
cat ~/.config/i3/violetscript.sh
pactl set-sink-volume $sinknumber $(volumelevel)%
