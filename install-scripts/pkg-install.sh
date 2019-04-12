xcode-select --install
brew install zsh #get the latest
brew install yarn python3 sympy go coreutils octave neovim
brew install ruby --with-doc
brew install sleepwatcher #reconfigure sleepwatcher config to point to binary
brew install wget htop nmap geoip irssi watch
brew services start sleepwatcher

brew tap caskroom/cask
brew cask install master-password alfred malwarebytes coconutbattery
brew cask install google-chrome firefox torbrowser transmission
brew cask install handbrake dropbox google-backup-and-sync onedrive
brew cask install github-desktop gitkraken arduino mactex texmaker sublime-text #install ‘Six', 'LaTeXTools', 'LaTeXTab', 'Floobits', 'Print to HTML'
brew cask install skype slack discord iina spotify
brew cask install copyq etcher the-unarchiver wireshark imageoptim cheatsheet #get McGimp instead of gimp
brew cask install goland intellij-idea clion java anki

brew cask install osxfuse
brew install sshfs e2fsprogs #then download https://github.com/gpz500/fuse-ext2/releases

brew tap bazelbuild/tap
brew tap-pin bazelbuild/tap
brew install bazel


gem install jekyll bundler


cargo install ripgrep
