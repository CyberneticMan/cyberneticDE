#!/bin/sh
state=`synclient | grep TouchpadOff | cut -d '=' -f 2`
if [ $state = "1" ]; then
    synclient TouchpadOff=0
else
    synclient TouchpadOff=1
fi
