xcode-select --install
brew install zsh
brew install\
    python3\
    go\
    octave\
    rust\

brew install\
    yarn\
    sympy\
    coreutils\
    neovim\
    wget\
    htop\
    nmap\
    geoip\
    irssi\
    watch\

brew install sleepwatcher #reconfigure sleepwatcher config to point to binary
brew services start sleepwatcher

brew tap caskroom/cask
#Editors
brew cask install\
    intellij-idea\
    clion\
    mactex\
    texstudio\
    sublime-text #install ‘Six', 'LaTeXTools', 'LaTeXTab', 'Floobits', 'Print to HTML'

#Terminal & Tools
brew cask install\
    alacritty\
    gitkraken\
    arduino\
    clang-format\
    java\

#Generic Apps
brew cask install\
    anki\
    master-password\
    alfred\
    malwarebytes\
    coconutbattery\
    google-chrome\
    firefox\
    transmission\
    handbrake\
    dropbox\
    google-backup-and-sync\
    onedrive\
    skype\
    slack\
    discord\
    iina\
    spotify\
    copyq\
    etcher\
    the-unarchiver\
    wireshark\
    imageoptim\
    cheatsheet\
    #get McGimp instead of gimp

#Filesystem Drivers
brew cask install osxfuse
brew install sshfs e2fsprogs #then download https://github.com/gpz500/fuse-ext2/releases


gem install jekyll bundler


cargo +nightly install racer
cargo install ripgrep

