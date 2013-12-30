#!/bin/bash

CURRENT_PROFILE=`sudo bash -c "cat /sys/class/drm/card0/device/power_dpm_state"`
BATTERY="battery"
BALANCED="balanced"
PERFORMANCE="performance"

if [ $CURRENT_PROFILE == $BATTERY ];
then
	sudo bash -c "echo $BALANCED > /sys/class/drm/card0/device/power_dpm_state"
	notify-send --expire-time 2000 "Switched to: $BALANCED"
elif [ $CURRENT_PROFILE == $BALANCED ];
then
	sudo bash -c "echo $PERFORMANCE > /sys/class/drm/card0/device/power_dpm_state"
	notify-send --expire-time 2000 "Switched to: $PERFORMANCE"
else
	sudo bash -c "echo $BATTERY > /sys/class/drm/card0/device/power_dpm_state"
	notify-send --expire-time 2000 "Switched to: $BATTERY"
fi
