#!/bin/bash

pid="$(pidof ffmpeg)"
nm="$(date | cut -c 21-28)"

if test "$pid"; then
        kill "$pid"
else
        ffmpeg -f x11grab -s 1366x768 -i :0.0 ~/Video/sc$nm.mp4 &
        disown
fi
