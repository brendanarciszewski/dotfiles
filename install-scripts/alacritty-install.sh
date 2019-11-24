#!/bin/bash
cd ..
rm -rf $XDG_CONFIG_HOME/alacritty
mkdir $XDG_CONFIG_HOME/alacritty
ln -nf alacritty.yml $XDG_CONFIG_HOME/alacritty/alacritty.yml

