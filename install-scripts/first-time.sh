#!/bin/bash
git clone https://github.com/powerline/fonts
cd fonts
./install.sh
cd ..
rm -rf fonts

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

