#!/bin/sh
set -e

LSWS=/var/lib/litespeed/bin

cd $LSWS
sh ./lswsctrl.open start
tail -F /var/log/litespeed/error.log /var/log/litespeed/access.log