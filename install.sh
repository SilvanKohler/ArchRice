#!/bin/bash

# Login Manager
sudo pacman -s lightdm lightdm-gtk-greeter
# X Window
sudo pacman -S xorg-server xorg-apps xorg-xinit
#i3
sudo pacman -S i3-gaps
#alacritty
sudo pacman -S alacritty
