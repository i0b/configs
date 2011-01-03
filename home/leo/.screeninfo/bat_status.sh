#!/bin/bash

if [ -x /usr/bin/acpitool ]; then
  if [ -d /sys/class/power_supply/BAT0 ]; then
    acpitool -b | sed 's/^.* : //;s/,/ ][/g'
  else
    echo "no battery"
  fi
else
  echo "unknown"
fi 

