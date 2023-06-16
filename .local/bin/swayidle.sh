#!/bin/sh

swayidle -w \
        timeout 300 'swaylock' \
        before-sleep 'swaylock' \
        timeout 400 'systemctl suspend' \
