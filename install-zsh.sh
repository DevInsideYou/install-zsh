#!/bin/bash

# install zsh
sudo apt install -y zsh

TARGET=install.sh

URL=https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/$TARGET

# install oh-my-zsh
wget -q $URL -O $TARGET
sudo chmod +x $TARGET
./$TARGET
rm $TARGET

# change theme to "intheloop"
sed -i '/ZSH_THEME="robbyrussell"/c\ZSH_THEME="intheloop"' ~/.zshrc

# display additional info
echo "Don't forget to change the gnome-terminal command to zsh in the profile preferences."

# remove yourself
rm $0
