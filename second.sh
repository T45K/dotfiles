#!/bin/bash

cp .Brewfile ~/
brew bundle --global

sudo ln -sfn $(brew --prefix)/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

jenv add $(brew --prefix)/opt/openjdk@17

cp -r karabiner ~/.config/

cp .zshrc ~/.zshrc
cp .gitconfig ~/.gitconfig
