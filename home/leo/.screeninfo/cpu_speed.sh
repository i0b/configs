#!/bin/bash
cat /proc/cpuinfo | sed '/^.*cpu MHz.*/!d;s/^.*: \([0-9]*\).*/\1/'
