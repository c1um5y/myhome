#!/bin/bash

NEXUS_DIR="/home/kornel/nexus"

if [ "$(ls -A $NEXUS_DIR)" ];
then
	fusermount -u $NEXUS_DIR
else
	jmtpfs $NEXUS_DIR
fi
