#!/bin/bash

# Update system and install essential packages
sudo pacman -Syu git base-devel --needed

# Install firmware and graphics packages
sudo pacman -S linux-firmware mesa vulkan-intel --needed

# Install input and display packages
sudo pacman -S libinput xf86-input-libinput seatd xorg-xwayland --needed

# Add user to necessary groups
sudo usermod -aG seat,input,video,audio $USER

# Enable seatd service
sudo systemctl enable --now seatd

# Install ly display manager and enable service
sudo pacman -S ly --needed
sudo systemctl enable ly.service

# Install KDE Plasma
sudo pacman -Syu
sudo pacman -S plasma-meta kde-applications sddm
sudo systemctl enable sddm.service --now


#extras
sudo pacman -S firefox fastfetch

# Reboot system at the end
sudo reboot
