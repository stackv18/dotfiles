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

# Install Hyprland and related packages
sudo pacman -S hyprland xdg-desktop-portal-hyprland xdg-desktop-portal-gtk wl-clipboard grim slurp swappy hyprpaper hypridle hyprlock --needed

# Install additional window managers and tools
sudo pacman -S sway swaybg swaylock swayidle --needed
sudo pacman -S i3-wm i3status i3lock dmenu xorg-server xorg-xinit xorg-xrandr xorg-xsetroot --needed

# Install waybar, wofi, kitty, and dolphin
sudo pacman -S waybar wofi kitty dolphin wallbash--needed

# Install fonts
sudo pacman -S ttf-jetbrains-mono-nerd noto-fonts noto-fonts-emoji noto-fonts-cjk --needed

# Install notification and policy kits
sudo pacman -S mako polkit polkit-kde-agent --needed

# Clipboard utilities
sudo pacman -S wl-clipboard cliphist xclip xsel --needed

# Network and bluetooth
sudo pacman -S network-manager-applet bluez bluez-utils blueman --needed
sudo systemctl enable --now bluetooth

# Printing
sudo pacman -S cups system-config-printer gutenprint foomatic-db-engine foomatic-db --needed
sudo systemctl enable --now cups

# Compression tools
sudo pacman -S p7zip unzip unrar xz zip gzip tar --needed

# Image viewers
sudo pacman -S imv feh gwenview --needed

# Media players and visualizer
sudo pacman -S mpv vlc cava --needed

# Audio controls
sudo pacman -S brightnessctl alsa-utils pavucontrol pamixer --needed

# Editors, shells, and utilities
sudo pacman -S nano neovim zsh zsh-completions lf ranger ffmpegthumbnailer bat exa ripgrep fd --needed

#extras
sudo pacman -S firefox fastfetch

# Reboot system at the end
sudo reboot
