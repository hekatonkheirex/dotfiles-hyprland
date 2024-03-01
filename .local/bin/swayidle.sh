#!/bin/sh

swayidle -w timeout 300 'hyprlock -f' timeout 360 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on'
