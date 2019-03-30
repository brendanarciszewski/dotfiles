git clone https://github.com/powerline/fonts
cd fonts
./install.sh
cd ..
rm -rf fonts
ln -f zshrc ~/.zshrc
ln -nsf zsh/ ~/.zsh
ln -nsf oh-my-zsh/ ~/.oh-my-zsh
