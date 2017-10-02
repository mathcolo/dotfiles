#!/bin/bash

brew install bash-completion git htop openssl readline carthage python3 android-sdk apktool

mkdir ~/.bash
pushd ~/.bash

if [ ! -d "git-aware-prompt" ]; then
  git clone git://github.com/jimeh/git-aware-prompt.git
fi

popd
