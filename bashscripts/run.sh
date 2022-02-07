#!/bin/bash
sudo mount /dev/sda /media/floppy
if [ -f "/media/floppy/run.tic" ]
then
exec tic80 --fullscreen /media/floppy/run.tic
elif [[ -f "/media/floppy/run.p8.png" ]]
then
exec /home/pi/pico-8/pico8 -root_path /media/floppy -run /media/floppy/run.p8.png
else
sleep 10 && exec fim -q /home/pi/booterror.png
fi
exit 0
