#!/bin/bash

echo Updating and upgrading homebrew...
brew update
brew upgrade
brew tap caskroom/drivers

echo Installing dev stuff...
brew install zsh zsh-completions git htop openssl readline carthage python3 android-sdk apktool

echo Updating login shell to zsh
sudo sh -c 'echo /usr/local/bin/zsh >> /etc/shells'
chsh -s /usr/local/bin/zsh

echo Installing user stuff...
brew cask install skype spotify sublime-text google-chrome firefox iterm2 tunnelblick keepingyouawake skim flux macdown spectacle 0xed dropbox 1password db-browser-for-sqlite

