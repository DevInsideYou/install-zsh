#!/bin/bash

# install zsh
sudo apt install -y zsh

# install oh-my-zsh
wget -q https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O install.sh
sudo chmod +x install.sh
./install.sh
rm install.sh

# change theme to "intheloop"
sed -i '/ZSH_THEME="robbyrussell"/c\ZSH_THEME="intheloop"' ~/.zshrc

# display additional info
echo "Don't forget to change the gnome-terminal command to zsh in the profile preferences."

# remove yourself
rm $0
