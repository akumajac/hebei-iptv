#!/bin/bash
if [ $ACTION=ifup -a $INTERFACE=IPTV ]; then
sh /etc/init.d/msd_lite restart
fi