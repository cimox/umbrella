#!/bin/sh

brew install jq
brew install python3 node yarn
brew install macvim --override-system-vim
brew install tmux
pip3 install powerline-status

# VIM setup
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# download onedark theme
curl -fLo ~/.vim/colors/onedark.vim --create-dirs \
	https://raw.githubusercontent.com/joshdick/onedark.vim/master/colors/onedark.vim

# TMUX plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# set backspace speed at maximum
defaults write NSGlobalDomain KeyRepeat -int 0
