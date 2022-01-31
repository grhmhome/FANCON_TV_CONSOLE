#!/bin/bash
#change this if your floppy drive is located elsewhere besides /dev/sda
sudo mount /dev/sda /media/floppy
if [ -f "/media/floppy/run.p8.png" ]
then
exec /home/pi/pico-8/pico8 -root_path /media/floppy -run /media/floppy/run.p8.png &
else
exec /home/pi/pico-8/pico8 -root_path /media/floppy -splore &
fi
exit 0
