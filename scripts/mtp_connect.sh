#!/bin/bash

ROOT_FOLDER=$HOME/mtp_devices
mkdir -p $ROOT_FOLDER/$1
cd $ROOT_FOLDER

BUS_LOC=`jmtpfs -l |& egrep "Galaxy models.*Samsung" |cut -d, -f1 | tail -n1 | tr -d " "`
DEV_NUM=`jmtpfs -l |& egrep "Galaxy models.*Samsung" |cut -d, -f2 | tail -n1 | tr -d " "`

if [ "$1" == "gnex" ]
then
    jmtpfs -device=$BUS_LOC,$DEV_NUM $ROOT_FOLDER/$1
elif [ "$1" == "nexus7" ]
then
    jmtpfs -device=$BUS_LOC,$DEV_NUM $ROOT_FOLDER/$1
fi

