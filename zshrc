#SETUP
export DOTFILES=$HOME/dotfiles
export XDG_CONFIG_HOME=$HOME/.config
export GOPATH=$HOME/Development/go
# Custom Scripts, Cargo, Go, PyPoetry, Flutter, Homebrew
export PATH="$DOTFILES/scripts:$HOME/.cargo/bin:$GOPATH/bin:$HOME/.poetry/bin:$HOME/flutter/bin:/usr/local/sbin:$PATH"
export EDITOR="vim"
export PYTHON="/usr/local/bin/python3" #for symbolic pkg in octave
alias gpg="gpg2" #Git fix
CXX_WARN="-Wall -Wextra -Wconversion -Wunreachable-code -Wuninitialized -Wold-style-cast -pedantic-errors -Wshadow -Wfloat-equal -Weffc++ -Wmost -Wno-error=unused-variable" #https://github.com/mapbox/cpp/issues/37
alias cl++="clang++ -std=c++17 ${CXX_WARN} -fsanitize=undefined,address -fno-omit-frame-pointer -g -O1"
#CUSTOMIZATION
alias ls="gls --color=auto"
alias vim="nvim"
alias vi="vim"
alias dvipdf="dvipdfmx"
alias cat="bat"
eval `gdircolors $DOTFILES/zsh/dircolors.ansi-universal` #https://github.com/seebi/dircolors-solarized

export BAT_THEME=$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo "Solarized (dark)" || echo "Solarized (light)")

eval "$(starship init zsh)"
eval "$(pyenv init -)"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=10,underline"
export SHELDON_CONFIG_DIR=$DOTFILES/sheldon
source <(sheldon source)

FD_OPTIONS="--follow --exclude .git"
export FZF_DEFAULT_OPTS='--layout=reverse --multi --info=inline'
export FZF_DEFAULT_COMMAND="git ls-files --caches --others --exclude-standard | fd --type f --type l $FD_OPTIONS"
export FZF_CTRL_T_COMMAND="fd $FD_OPTIONS"
export FZF_ALT_C_COMMAND="fd --type d $FD_OPTIONS"
source "${XDG_CONFIG_HOME}"/fzf/fzf.zsh
alias fzf="fzf --preview \"bat --color=always --style=numbers {}\""
bindkey '^Z' fzf-cd-widget
bindkey -s '^O' '${EDITOR} $(fzf)^M'
