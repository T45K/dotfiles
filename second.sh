#!/bin/bash

cp .Brewfile ~
brew bundle --global

mkdir .config
cp -r karabiner .config

cp .zshrc ~/.zshrc
cp .gitconfig ~/.gitconfig

