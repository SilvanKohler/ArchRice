#!/bin/bash

sudo pacman --noconfirm -S lightdm lightdm-gtk-greeter
sudo pacman --noconfirm -S xorg-server xorg-apps xorg-xinit
sudo pacman --noconfirm -S i3-gaps
sudo pacman --noconfirm -S alacritty
sudo pacman --noconfirm -S rxvt-unicode
sudo pacman --noconfirm -S dmenu
sudo pacman --noconfirm -S vim
sudo pacman --noconfirm -S ranger
sudo pacman --noconfirm -S feh imagemagick python-pip python-pywal

cd ~
mkdir -p /tmp/yay_install
cd /tmp/yay_install

sudo pacman -S base-devel

sudo pacman -S expac yajl git

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ~
rm -r /tmp/yay_install

cd ~
wget https://github.com/IbrahimButt/Direwolf-Arch-Rice/raw/master/images/wallpaper.jpg
mkdir -p ~/Pictures/Wal/
mv ~/wallpaper.jpg ~/Pictures/Wal/
wal -i ~/Pictures/Wal/wallpaper.jpg

sudo pacman --noconfirm -S cairo libxcb python2 xcb-proto xcb-util-image xcb-util-wm xcb-util-xrm jsoncpp
yay -S polybar-git


cd ~
git clone https://github.com/IbrahimButt/direwolf-arch-rice.git
cp -r ~/direwolf-arch-rice/.config/ ~/

cp -r ~/direwolf-arch-rice/.Xresources ~/
xrdb .Xresources


yay -S otf-overpass


sudo pacman --noconfirm -S w3m
ranger --copy-config=scope
neofetch --w3m --source ~/Pictures/Wal/wallpaper.jpg

polybar bar
