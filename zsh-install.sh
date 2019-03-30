ln -f zshrc ~/.zshrc
ln -nsf zsh/ ~/.zsh
ln -nsf oh-my-zsh/ ~/.oh-my-zsh

cd $ZSH_CUSTOM/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions
