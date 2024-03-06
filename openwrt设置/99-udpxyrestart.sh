#!/bin/sh

if [ "$INTERFACE" = "IPTV" ] && [ "$ACTION" = "ifup" -o "$ACTION" == "ifupdate" ]
then
        /etc/init.d/udpxy restart
fi