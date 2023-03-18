#!/usr/bin/env bash
filename="/home/mura/Pictures/Screenshots/screenshot_$(date +'%Y%m%d_%H%m%S').png"
touch $filename
grim -g "$(slurp)" $filename | wl-copy
