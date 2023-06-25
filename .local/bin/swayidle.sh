#!/bin/sh

swayidle -w \
        timeout 300 'swaylock' \
        timeout 400 'systemctl suspend' \
        before-sleep 'swaylock' \
