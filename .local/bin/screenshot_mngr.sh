#!/bin/env bash

wf-recorder_check() {
	if pgrep -x "wf-recorder" > /dev/null; then
			pkill -INT -x wf-recorder
			notify-send "Stopping all instances of wf-recorder" "$(cat /tmp/recording.txt)"
			wl-copy < "$(cat /tmp/recording.txt)"
			exit 0
	fi
}

wf-recorder_check

SELECTION=$(echo -e "Screenshot selection\nScreenshot entire screen\nRecord selection\nRecord entire screen" | rofi -dmenu "󰄀 " -w 25 -l 6)

IMG="${HOME}/Pictures/Screenshots/screenshot_$(date +'%Y%m%d_%H%M%S').png"
VID="${HOME}/Videos/recording_$(date +'%Y%m%d_%H%S%S').mp4"


case "$SELECTION" in
	"Screenshot selection")
		grim -g "$(slurp)" "$IMG"
		wl-copy < "$IMG"
		notify-send "Screenshot Taken" "${IMG}"
		;;
	"Screenshot entire screen")
		sleep 1
    grim -c -o eDP-1 "$IMG"
		wl-copy < "$IMG"
		notify-send "Screenshot Taken" "${IMG}"
		;;
	"Record selection")
		echo "$VID" > /tmp/recording.txt
		wf-recorder -a -g "$(slurp)" -f "$VID" &>/dev/null
		;;
	"Record entire screen")
		echo "$VID" > /tmp/recording.txt
		wf-recorder -a -o eDP-1 -f "$VID" &>/dev/null
		;;
*)
	;;
esac
