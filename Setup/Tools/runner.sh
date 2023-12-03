#!/bin/bash

# Remove unwanted files and directories
rm -r ~/Documents
rm -r ~/Music
rm -r ~/Desktop
rm -r ~/Templates
rm -r ~/Videos
rm -r ~/Public
rm ~/Xresources

# Remove the zip file
rm ~/Downloads/*.zip

echo "

[!] REMOVED EXCESS

"

# Create wanted directories
mkdir ~/.config/alacritty
mkdir ~/Pictures/Wallpaper

# Take care of Downloads
sudo cp ~/Downloads/Endeavour/Setup/Fonts/PCBius.ttf /usr/share/fonts/PCBius.ttf
cp -r ~/Downloads/Endeavour/Pictures ~
cp -r ~/Downloads/Endeavour/Setup/.zshrc ~
cp -r ~/Downloads/Endeavour/Setup/.mozilla ~/.mozilla
cp -r ~/Downloads/Endeavour/Setup ~
rm -r ~/Downloads

# Execute refresh.sh
sudo chmod +x ~/Setup/Tools/refresh.sh
~/Setup/Tools/refresh.sh

echo "

[!] SET UP HOME DIRECTORY

"

# Install packages
sudo pacman -S --needed picom alacritty feh discord neofetch uwufetch htop python-pip bat tree git zsh lutris steam --noconfirm
yay -S --needed cpufetch sublime-text-4 github-desktop-bin --noconfirm

# Install wine
sudo pacman -S --needed wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \
mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error \
lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo \
sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama \
ncurses lib32-ncurses ocl-icd lib32-ocl-icd libxslt lib32-libxslt libva lib32-libva gtk3 \
lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader --noconfirm

echo "

[!] PREPARING TO SET UP ZSHELL

"

# Set up Zsh
source ~/.zshrc
rm ~/.bashrc
chsh -s /bin/zsh

# Update system
sudo pacman -Syu --needed
sudo yay -Syu --needed

echo "

[!] REBOOTING IN 10...

"
sleep 1
echo "9..."
sleep 1
echo "8..."
sleep 1
echo "7..."
sleep 1
echo "6..."
sleep 1
echo "5..."
sleep 1
echo "4..."
sleep 1
echo "3..."
sleep 1
echo "2..."
sleep 1
echo "1..."
sleep 1
echo "[!] WAIT ONE..."

sudo reboot