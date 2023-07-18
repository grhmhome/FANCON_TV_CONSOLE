#!/bin/bash
# sudo mount /dev/sda /media/floppy Make sure you type in fdisk -l and get the correct paths first and create /media/floppy as a directory.
if [[ -f "/media/floppy/run.p8.png" ]]
then
exec /boot/pico-8/pico8_dyn -root_path /media/floppy -run /media/floppy/run.p8
else
exec /boot/pico-8/pico8_dyn -splore
fi
exit 0
