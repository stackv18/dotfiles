# My Arch Linux Setup Repository

Welcome to my Arch Linux setup repository! This repo contains my curated collection of dotfiles, configuration files, and a handy installation script to quickly set up a personalized Arch Linux environment.

---

## Contents

- **Dotfiles:** Configuration files for shell, editor, window manager, and other utilities.
- **install.sh:** Automated script to install essential packages and services for a fully-functional Arch Linux system.

---

## Features

- Streamlined and automated setup for Arch Linux with a focus on usability and customization.
- Includes configurations for popular window managers such as Hyprland, Sway, and i3.
- Essential tools and apps for development, multimedia, networking, and system management.
- Easy to run installation script to get all packages and services ready.

---

## Installation

### Using the install.sh script

First install the required packages from dotfiles/tpackages/install.sh

1. Download the repository or clone it:
   ```
   git clone https://github.com/stackv18/dotfiles.git
   cd dotfiles 
   ```

2. Make the install script executable:
   ```
   chmod +x install.sh
   ```

3. Run the script with root privileges:
   ```
   ./install.sh
   ```

The script will update your system, install necessary packages, enable required services, and finally reboot your system.
For dark mode
for libadwaita gtk4 apps you can use this command:
exec = gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"   # for GTK4 apps

#for gtk3 apps you need to install adw-gtk3 theme (in arch linux sudo pacman -S adw-gtk-theme)
exec = gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3"   # for GTK3 apps

#for kde apps you need to install: sudo pacman -S qt5ct qt6ct kvantum kvantum breeze-icons   
#you will need to set dark theme for qt apps from kde more difficult thans with gnome :D:
env = QT_QPA_PLATFORMTHEME,qt6ct   # for Qt apps# Theme

---

## Dotfiles Included

- Shell config (zsh, bash)
- Editor config (neovim)
- Window manager config (Hyprland, Sway, i3)
- Various utility configs (like ranger, lf)

Feel free to customize and adapt these files to fit your own workflow!

---

## Contributing

Pull requests and suggestions are welcome! Feel free to open an issue or submit changes.

---

## License

This repository is licensed under the MIT License. See the `LICENSE` file for details.

---

## Contact

For questions or feedback, reach out on GitHub.

