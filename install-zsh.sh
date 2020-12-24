#!/bin/bash

# remove yourself
rm $0

# install zsh
sudo apt install -y zsh

# install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
