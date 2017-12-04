#!/bin/bash

echo Updating and upgrading homebrew...
brew update
brew upgrade
brew tap caskroom/drivers

echo Installing dev stuff...
brew install bash-completion git htop openssl readline carthage python3 android-sdk apktool

echo Installing user stuff...
brew cask install skype spotify sublime-text google-chrome firefox iterm2 tunnelblick keepingyouawake skim flux macdown spectacle 0xed dropbox 1password db-browser-for-sqlite

echo Pulling down git-aware-prompt and things...
mkdir ~/.bash
pushd ~/.bash

if [ ! -d "git-aware-prompt" ]; then
  git clone git://github.com/jimeh/git-aware-prompt.git
fi

popd
