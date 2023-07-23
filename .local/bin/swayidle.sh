#!/bin/sh

swayidle -w \
        timeout 300 'gtklock' \
        timeout 400 'systemctl suspend' \
        before-sleep 'gtklock' \
