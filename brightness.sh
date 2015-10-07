#!/bin/bash
# set screen brightness level

if [ "$#" = "0" ]; then
    level= cat /sys/class/backlight/intel_backlight/brightness
    echo -n $level
else
    level= cat /sys/class/backlight/intel_backlight/brightness | bc
    #echo $level
    #echo $1
        
    goalsLevel=$(($1 + $level))
    echo $jopa
    #goalsLevel= $level + $1
    echo $goalsLevel >> /sys/class/backlight/intel_backlight/brightness
fi
measurement
ankel
