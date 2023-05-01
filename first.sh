#!/bin/bash

xcode-select --install > /dev/null

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/xxx/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

ssh-keygen -t ed25519
