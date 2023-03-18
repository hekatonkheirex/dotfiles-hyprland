#!/usr/bin/env bash
filename="/home/mura/Pictures/Screenshots/screenshot_$(date +'%Y%m%d_%H%M%S').png"
touch $filename
grim $filename | grim - | wl-copy
