#!/bin/sh

case $1 in
	up)   pamixer -u; pamixer -i 5 --allow-boost ;;
	down) pamixer -u; pamixer -d 5 --allow-boost ;;
	mute) pamixer -t ;;
esac

volume=$(pamixer --get-volume)
case $volume in
	0-34)   icon=audio-volume-low-symbolic ;;
	35-67)  icon=audio-volume-medium-symbolic ;;
	68-100) icon=audio-volume-high-symbolic ;;
esac

case $(pactl get-default-sink) in
	'alsa_output.usb-FIIO_FiiO_USB_DAC-E10-01.analog-stereo')  sink=Headphones ;;
	'alsa_output.pci-0000_06_00.6.analog-stereo')              sink=Laptop ;;
	'alsa_output.pci-0000_01_00.1.hdmi-stereo')                sink=Speakers ;;
	*)                                                         sink="Other sink" ;;
esac

if $(pamixer --get-mute); then
	dunstify -i volume-mute -a "Volume" -t 2000 -r 9993 -u low "Muted"
else
	dunstify -a "Volume" -u low -r "9993" -h int:value:$volume -i $icon "$sink" "$volume%" -t 2000
fi

canberra-gtk-play -i audio-volume-change -d "Volume"
