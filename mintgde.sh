#!/bin/bash

sudo apt update
sudo apt install -y gnome-shell gnome-session gdm3 gnome-terminal nautilus gnome-bluetooth gnome-control-center network-manager-gnome gnome-power-manager gnome-software
sudo apt remove --purge -y nemo* blueman* cinnamon-settings-daemon* mintinstall* cinnamon* mintupdate*
sudo apt autoremove --purge -y
sudo reboot

