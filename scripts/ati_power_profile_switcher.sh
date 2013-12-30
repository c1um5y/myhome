#!/bin/bash

sudo bash -c "echo profile > /sys/class/drm/card0/device/power_method"

CURRENT_PROFILE=`sudo bash -c "cat /sys/class/drm/card0/device/power_profile"`

if [ $CURRENT_PROFILE == "low" ];
then
	sudo bash -c "echo mid > /sys/class/drm/card0/device/power_profile"
elif [ $CURRENT_PROFILE == "mid" ];
then
	sudo bash -c "echo high > /sys/class/drm/card0/device/power_profile"
else
	sudo bash -c "echo low > /sys/class/drm/card0/device/power_profile"
fi
