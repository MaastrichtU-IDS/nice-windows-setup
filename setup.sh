#!/bin/bash

sudo apt update
sudo apt install -y zsh
cp .zshrc ~/.zshrc 


## Script to install personal config: oh my ZSH
export INSTALL_PATH=$(pwd)

## Config git
# git config --global user.email "vincent.emonet@gmail.com"
# git config --global user.name "Vincent Emonet"

git config --global core.autocrlf input
git config --global core.eol lf


# Edit the terminal color in settings.json?
# export WINDOWS_USERNAME=$(cmd.exe /c "echo %USERNAME%")
# /mnt/c/Users/$WINDOWS_USERNAME/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json


echo "ℹ️ Type 'exit' to leave ZSH and finish the install"

# Install oh my zsh with custom theme
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp vemonet_bira.zsh-theme ~/.oh-my-zsh/custom/themes/vemonet_bira.zsh-theme
cp .zshrc ~/

sudo chsh --shell=/usr/bin/zsh $USER

echo "✅ Installation finished, please restart the computer to make sure all changes are loaded"
