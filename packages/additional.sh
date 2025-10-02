#!/bin/bash
# install.sh - HyDE Core & Post-install packages

# --------------------------------------------------- // Audio / PipeWire stack
yay -S uwsm pipewire pipewire-alsa pipewire-audio pipewire-jack pipewire-pulse gst-plugin-pipewire gstreamer wireplumber pavucontrol pamixer

# --------------------------------------------------- // Network / Bluetooth / Controls
yay -S networkmanager network-manager-applet bluez bluez-utils blueman brightnessctl playerctl udiskie

# --------------------------------------------------- // Hyprland Core
yay -S hyprland dunst rofi-wayland waybar swww hyprlock wlogout grim hyprpicker slurp satty cliphist wl-clip-persist hyprsunset hypridle

# --------------------------------------------------- // Dependencies
yay -S polkit-gnome xdg-desktop-portal-hyprland xdg-desktop-portal-gtk xdg-user-dirs pacman-contrib parallel jq imagemagick qt5-imageformats ffmpegthumbs kde-cli-tools libnotify noto-fonts-emoji

# --------------------------------------------------- // Theming
yay -S nwg-look qt5ct qt6ct kvantum kvantum-qt5 qt5-wayland qt6-wayland

# --------------------------------------------------- // Applications
yay -S firefox kitty dolphin ark unzip vim code nwg-displays fzf fastfetch

# --------------------------------------------------- // Shell
yay -S starship zsh-theme-powerlevel10k-git eza duf
