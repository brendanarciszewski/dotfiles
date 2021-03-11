#!/bin/bash
xcode-select --install
brew install\
    starship\
    sheldon\

brew install\
    pyenv\
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

brew tap cjbassi/ytop
brew install\
    sd\
    dust\
    ripgrep\
    tokei\
    hyperfine\
    ytop\
    tealdeer\
    bandwhich\
    zoxide\
    procs\
    fd\
    exa\
    bat\
    git-delta\
    sk\
    nushell\
    freerdp\
    shfmt\
    fzf\

brew install\
    pdftk-java\
    qpdf\

brew install sleepwatcher #reconfigure sleepwatcher config to point to binary
brew services start sleepwatcher

#Editors
brew install --cask\
    intellij-idea\
    clion\
    basictex\
    vscodium\

sudo tlmgr update --self
sudo tlmgr install\
    latexmk\
    dvipng\
    enumitem\
    xifthen\
    ifmtarg\
    lm-math\
    anyfontsize\
    sourcesanspro\
    tcolorbox\
    trimspaces\
    environ\


#Terminal & Tools
brew install --cask\
    alacritty\
    arduino\
    clang-format\
    java\
    coolterm\
    hammerspoon\

#Quicklook
brew install --cask\
    qlstephen\
    qlmarkdown\
    quicklook-json\
    qlimagesize\
    qlvideo\

#Generic Apps
brew install --cask\
    anki\
    master-password\
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
    zoom\
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


gem install jekyll bundler


cargo install cargo-valgrind
brew install --HEAD https://raw.githubusercontent.com/LouisBrunner/valgrind-macos/master/valgrind.rb


mkdir ~/.pyenv
mkdir ~/.pyenv/versions
ln -s `brew --cellar python`/* ~/.pyenv/versions

