#!/bin/bash
cd ..
$(brew --prefix fzf)/install --xdg --key-bindings --completion --no-bash --no-fish --no-update-rc
ln -f zshrc ~/.zshrc
ln -nsf zsh/ ~/.zsh
source zshrc
