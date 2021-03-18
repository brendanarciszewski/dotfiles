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
alias ls="exa"
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

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

FD_OPTIONS="--follow --exclude .git"
export FZF_DEFAULT_OPTS='--layout=reverse --multi --info=inline'
export FZF_DEFAULT_COMMAND="git ls-files --caches --others --exclude-standard | fd --type f --type l $FD_OPTIONS"
export FZF_CTRL_T_COMMAND="fd $FD_OPTIONS"
export FZF_ALT_C_COMMAND="fd --type d $FD_OPTIONS"
source "${XDG_CONFIG_HOME}"/fzf/fzf.zsh
alias fzf="fzf --preview \"bat --color=always --style=numbers {}\""
bindkey '^Z' fzf-cd-widget
bindkey -s '^O' '${EDITOR} $(fzf)^M'

dashed-sep() {
  local after=$1; shift
  local args=()
  pos=$@[(I)--]
  [ $pos -gt 0 ] && args=(${@[@]:$pos+1}) && pos=$(($# - $pos + 1))
  eval $after'=(${args[@]})'
}

code-lldb() {
  local pos=0
  local prog_args=()
  dashed-sep prog_args $@; shift -p $pos
  local prog="'$(pwd)/${prog_args[1]}'"; shift prog_args
  local args="[]"
  if [ -n "${prog_args[1]}" ]; then
    args="['${prog_args[1]}'"; shift prog_args
    while [ -n "${prog_args[1]}" ]; do
      args="$args,'${prog_args[1]}'"; shift prog_args
    done
    args="$args]"
  fi
  local config=""
  local print=0
  while [ -n "$1" ]; do
    if [ "--pause" = "$1" ]; then
      shift
      config="$config,'stopOnEntry':true"
    elif [ "--print" = "$1" ]; then
      shift
      print=1
    else
      echo "Unknown arg: $1"
      shift
    fi
  done
  local line="vscode://vadimcn.vscode-lldb/launch/config?{'cwd':'$(pwd)','program':$prog,'args':$args$config}"
  if [ $print -eq 1 ]; then
    echo $line
  else
    code --open-url $line
  fi
}
