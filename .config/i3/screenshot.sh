#!/bin/bash

path=~/Pictures/Screenshots/
name="`date "+%F_%R:%S"`_`hostname`_ss.jpg"

notify-send -i warning "Screenshot" "Please select your area" --icon=camera-photo --expire-time=1000

maim -s -c 1,0,0,0.6 -p 1 --format=jpg $path$name

OUT=$?

if [ $OUT -eq 0 ]
then
        xclip -se c -t image/jpg < $path$name
        notify-send -i warning "Screenshot" "Screenshot copied to clipboard." --icon=camera-photo --expire-time=1000
else
        notify-send "Screenshot failed" --expire-time=1000
fi
