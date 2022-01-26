#!/bin/bash
if [ -f "/media/usb0/run.p8.png" ]
then
exec /home/pi/pico-8/pico8 -run /media/usb0/run.p8.png &
else
exec /home/pi/pico-8/pico8 -splore &
fi
exit 0
