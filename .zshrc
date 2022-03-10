#!/bin/bash

# This file sets up your terminal everytime your start it

export CONDA_DIR=/opt/conda
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:/usr/local/go/bin:$HOME/go/bin:$CONDA_DIR/bin:$HOME/.yarn/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="vemonet_bira"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
# Removed git because it was useless aliases (and conflict with gr)

# https://project-awesome.org/unixorn/awesome-zsh-plugins#completions
plugins=(docker docker-compose oc yarn)

# Other plugins: kubectl npm-run mvn ansible nmap postgres aws heroku

source $ZSH/oh-my-zsh.sh

# Example aliase
# alias zshconfig="mate ~/.zshrc"
alias pip=pip3
alias venvcreate="python3 -m venv .venv"
alias venvactivate="source .venv/bin/activate"