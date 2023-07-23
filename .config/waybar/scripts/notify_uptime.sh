#!/usr/bin/env bash

notify-send "Your uptime is..." "$(uptime -p | sed 's/up //g')"
