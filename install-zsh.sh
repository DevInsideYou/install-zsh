#!/bin/bash

# remove yourself
rm $0

# install zsh
sudo apt install -y zsh wget git

TARGET=install.sh

URL=https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/$TARGET

# install oh-my-zsh
wget -q $URL -O $TARGET
sudo chmod +x $TARGET
./$TARGET
rm $TARGET

echo
echo '"zsh" is now on the path'
