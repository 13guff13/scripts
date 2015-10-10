#!/bin/bash
# set screen brightness level

if [ "$#" = "0" ]; then
    level= cat /sys/class/backlight/intel_backlight/brightness
    echo -n $level
else
    currentLevel=`cat /sys/class/backlight/intel_backlight/brightness`
    echo $currentLevel
    increment=$1
    echo $increment
    goalsLevel=$((currentLevel + increment))
    echo $goalsLevel
    max=7812
    min=0
    echo $max
    echo $min
    if [ "$goalsLevel" -gt "$max" ]; then
        echo $max > /sys/class/backlight/intel_backlight/brightness
    else
        if [ "$goalsLevel" -lt "$min" ]; then
            echo $min > /sys/class/backlight/intel_backlight/brightness
        else
            echo $goalsLevel > /sys/class/backlight/intel_backlight/brightness
        fi
    fi
fi
#measurement
#ankel
