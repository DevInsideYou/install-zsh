#!/bin/bash

# install zsh
sudo apt-get install zsh

# install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# change theme to "intheloop"
sed -i '/ZSH_THEME="robbyrussell"/c\ZSH_THEME="intheloop"' ~/.zshrc

# change default shell to zsh
chsh -s /bin/zsh

# display additional info
echo "Don't forget to change the gnome-terminal command to zsh in the profile preferences."

# run zsh
zsh

# remove yourself
rm $0
