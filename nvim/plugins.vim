"*****************************************************************************
"" Check/fix Plug existence
if !filereadable(expand('~/.config/nvim/autoload/plug.vim'))
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

"" Install dir
call plug#begin(expand('~/.config/nvim/plugged'))

"*****************************************************************************
"" Main bundles
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Colours
Plug 'altercation/vim-colors-solarized'
Plug 'chrisbra/colorizer'
"*****************************************************************************
"" Syntax bundles

""LaTeX
Plug 'lervag/vimtex'

"" HTML
Plug 'othree/html5.vim'

"" CSS
Plug 'hail2u/vim-css3-syntax'

"" Go Lang
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

"" Exit Plug
call plug#end()
