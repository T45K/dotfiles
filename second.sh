#!/bin/bash

sudo ln -sfn $(brew --prefix)/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

cp .Brewfile ~
brew bundle --global

jenv add $(brew --prefix)/opt/openjdk@17

cp -r karabiner ~/.config/

cp .zshrc ~/.zshrc
cp .gitconfig ~/.gitconfig

git config --global user.name T45K
git config --global user.email tasktas@gmail.com
