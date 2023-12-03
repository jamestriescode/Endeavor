#!/bin/bash

# Shortcut variables
CP='/usr/bin/sudo /bin/cp'

SETUP='/home/sargon/GitHub/Endeavor/Setup'

CONFIG='/home/sargon/.config/'

# Send changes over
$CP $SETUP/i3/config $CONFIG/i3/config
$CP $SETUP/i3/i3blocks.conf $CONFIG/i3/i3blocks.conf

$CP $SETUP/alacritty/alacritty.yml $CONFIG/alacritty/alacritty.yml

$CP $SETUP/.zshrc /home/sargon/.zshrc

echo "[!] END OF SCRIPT"