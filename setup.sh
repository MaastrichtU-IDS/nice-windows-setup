#!/bin/bash

sudo apt install zsh
cp .zshrc ~/.zshrc 


## Script to install personal config: oh my ZSH
export INSTALL_PATH=$(pwd)

## Config git
# git config --global user.email "vincent.emonet@gmail.com"
# git config --global user.name "Vincent Emonet"


# Install Solarized color for the terminal
# cd ~/
# git clone https://github.com/aruhier/gnome-terminal-colors-solarized.git
# cd gnome-terminal-colors-solarized
# ./install.sh -s dark --install-dircolors
# cd $INSTALL_PATH

echo "ℹ️ Type exit ZSH and finish the install"

# Install oh my zsh with custom theme
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp vemonet_bira.zsh-theme ~/.oh-my-zsh/custom/themes/vemonet_bira.zsh-theme
cp .zshrc ~/

sudo chsh --shell=/usr/bin/zsh $USER

echo "✅ Installation finished, please restart the computer to make sure all changes are loaded"
