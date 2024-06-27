#!/bin/bash

xrandr --output eDP-1 --off
xrandr --output DP-1-8 --auto --primary
xrandr --output DP-1-9 --auto --right-of DP-1-8

