#!/bin/sh
# RAW files thumbnailer

# install tools
sudo apt-get -y install dcraw libjpeg-turbo-progs netpbm

# install main script
sudo wget --header='Accept-Encoding:none' -O /usr/local/sbin/raw-thumbnailer https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/thumbnailer/raw/raw-thumbnailer
sudo chmod +x /usr/local/sbin/raw-thumbnailer

# thumbnailer integration
sudo wget --header='Accept-Encoding:none' -O /usr/share/thumbnailers/raw.thumbnailer https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/thumbnailer/raw/raw.thumbnailer

# stop nautilus
nautilus -q

# empty cache of previous thumbnails
[ -d "$HOME/.cache/thumbnails" ] && rm -R $HOME/.cache/thumbnails/*
[ -d "$HOME/.thumbnails" ] && rm -R $HOME/.thumbnails/*
