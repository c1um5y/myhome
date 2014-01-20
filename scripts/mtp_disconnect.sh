#!/bin/bash

ROOT_FOLDER=$HOME/mtp_devices

fusermount -u $ROOT_FOLDER/$1

rmdir $ROOT_FOLDER/$1
