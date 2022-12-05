#!/bin/sh


echo update
sudo pacman -Syy
sudo pacman -Syu


echo install and setup dwm
./install_setup_dwm.sh

echo install essential apps
sudo pacman -S vim firefox alsa-utils unzip sxiv

echo unmute sound
amixer sset Master unmute
amixer sset Speaker unmute
amixer sset Headphone unmute

echo add configuration for trackpad
sudo cp 30-touchpad.conf /etc/X11/xorg.conf.d

